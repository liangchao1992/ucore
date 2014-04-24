/*
 * =====================================================================================
 *
 *       Filename:  board.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  03/24/2012 01:21:05 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Chen Yuheng (Chen Yuheng), chyh1990@163.com
 *   Organization:  Tsinghua Unv.
 *
 * =====================================================================================
 */

#include <board.h>
#include <picirq.h>
#include <serial.h>
#include <clock.h>
#include <pdev_bus.h>
#include <mb9b500r.h>
static const char *message = "Initializing m3 Board...\n";
static void put_string(const char *str)
{
	while (*str)
		uart_sendchar(*str++);
}

void board_init_early()
{
	crg_init();
	wdg_init();
	serial_init();
	/*********************************************/
	__disable_irq();
	
	/*Description   : Set exception entry stack frame align flag for 8 Bytes align.*/
	SCB->CCR |= SCB_CCR_STKALIGN_Msk;
	/* set PendSV and SysTick priority to 0xFF */
	NVIC_SetPriority( PendSV_IRQn, 0xFF );
    NVIC_SetPriority( SysTick_IRQn, 0xFF );
	

	NVIC_SetPriority(SVC_IRQn,0x0);
	
	SCB->VTOR = 0x00000000UL;
	
	
	int a;
	a=SysTick_Config(1<<20);
	
}
extern myvar;
static uint32_t  systick_count = 0;
void SysTickHandler(){
	if(systick_count == (1<<12))
	{
		myvar=systick_count;
		systick_count=0;
		put_string("ticks\n");
	}else
	{	
		//kprintf("%u\n",systick_count);
		systick_count++;
	}
}

void board_init()
{
}

/* no nand */
int check_nandflash()
{
	return 0;
}

struct nand_chip *get_nand_chip()
{
	return NULL;
}
