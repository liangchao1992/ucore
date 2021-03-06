#include <types.h>
#include <ts_devdef_depend.h>
void uart_sendchar(uint8_t c)
{
    uint32_t delay = 1000;

    /* Wait for the transmitter to be ready while  */
    while((FM3_MFS0_UART->SSR & (0x1<<1)) == 0){
        ;
    }
    do{
        delay--;
    }while(delay);

    /* Send characterjust a character,not a word */
    FM3_MFS0_UART->TDR = c;

    /* Wait for the transmitter to be end while  */
    while((FM3_MFS0_UART->SSR & (0x1<<1)) == 0){
        ;
    }
}

void crg_init(void)
{
    uint32_t data;
    /*set base clock division ratio */
    FM3_CRG->BSC_PSR = CRG_BSC_PSR_DIV;

    /*set apbc0 clock division ratio */
    FM3_CRG->APBC0_PSR = CRG_APBC0_PSR_DIV;

    /*set apbc1 clock division ratio */
    FM3_CRG->APBC1_PSR = CRG_APBC1_PSR_DIV;

    /*set apbc2 clock division ratio */
    FM3_CRG->APBC2_PSR = CRG_APBC2_PSR_DIV;

    /*set S/W watch dog clock division ratio*/
    FM3_CRG->SWC_PSR = CRG_SWC_PSR_DIV;

    /*set S/W watch dog clock division ratio*/
    FM3_CRG->TTC_PSR = CRG_TTC_PSR_DIV;

    /*set main osc stablization time */
    FM3_CRG->CSW_TMR = CRG_CSW_TMR_MOWT;

    /*Enable main oscilation */
    FM3_CRG->SCM_CTL = 0x02;

    /* Test MOSI ready */
    while( (FM3_CRG->SCM_STR & CRG_SCM_STR_MORDY) == 0 ){
        ;
    }

    /*set pll osc stablization time */
    FM3_CRG->PSW_TMR = CRG_PSW_TMR_POWT;

    /*set pll clock div ratio */
    FM3_CRG->PLL_CTL1 = CRG_PLL_CTL1_DIV;

    /*set pll clock div ratio */
    FM3_CRG->PLL_CTL2 = CRG_PLL_CTL2_DIV;

    /* Enable pll clock  and   main oscilation */
    FM3_CRG->SCM_CTL = (0x10 | 0x02);

    /* Test POSI ready */
    while( (FM3_CRG->SCM_STR & CRG_SCM_STR_PLRDY) == 0 ){
        ;
    }

    /* Set pll as master clock */
    FM3_CRG->SCM_CTL = (0x50 | 0x02);

    /* Test MCK ready */
    data = CRG_SCM_STR_PLMCK|CRG_SCM_STR_PLRDY|CRG_SCM_STR_MORDY;
    while( (FM3_CRG->SCM_STR & data ) == 0 ){
        ;
    }

    return;
}


void wdg_init(void)
{
    /*lock control register */
    FM3_HWWDT->WDG_LCK = WDG_LCKCTL;

    /*release control register */
    FM3_HWWDT->WDG_LCK = WDG_LCKREL;

    /*disable watch dog */
    FM3_HWWDT->WDG_CTL = 0x0;

    return;
}




static int serial_exists = 0;

static uint8_t tty_buffer[4];

static int serial_int_handler(int irq, void *data)
{
	extern void dev_stdin_write(char c);
	char c = cons_getc();
	dev_stdin_write(c);
	return 0;
}


void serial_init()
{
    if (serial_exists)
        return;
    serial_exists = 1;
	
    /* set to peripheral mode and MFS 0 for UART0 transmit/receive */
    FM3_GPIO->PFR2 |= 0x0006;
    FM3_GPIO->EPFR07 |= 0x0040;

    /* Asynchronous Mode,115200bps, 8bit, non-parity, 1 stop bit,Set Asynchronous Mode */
    FM3_MFS0_UART->SMR = 0x01;

    /* Disable receiver and transmitter  */
    FM3_MFS0_UART->SCR = 0x0;

    /* V = CLK/baud - 1= 346.00   */
    FM3_MFS0_UART->BGR = 0x15a;

    /* non-parity, 8bit */
    FM3_MFS0_UART->ESCR = 0x00;

    /* Enable receiver and transmitter */
    FM3_MFS0_UART->SCR = 0x03;

    return;

}


static void serial_putc_sub(int c)
{
	uart_sendchar(c);
}
/* serial_putc - print character to serial port */
void serial_putc(int c)
{
	if (c != '\b') {
		serial_putc_sub(c);
	} else {
		serial_putc_sub('\b');
		serial_putc_sub(' ');
		serial_putc_sub('\b');
	}
}

uint8_t uart_recvchar(void)
{
    uint8_t c;

    /* Wait for the receiver to be ready while */
    while((FM3_MFS0_UART->SSR & (0x1<<2)) == 0){
            ;
    }

    c = FM3_MFS0_UART->RDR;

    return c;
}


/* serial_proc_data - get data from serial port */
int serial_proc_data(void)
{
	tty_buffer[0] = uart_recvchar();
	if (tty_buffer[0] == 127)
		tty_buffer[0] = '\b';
	return tty_buffer[0];
}

int serial_check()
{
	return serial_exists;
}

void serial_clear()
{
}
