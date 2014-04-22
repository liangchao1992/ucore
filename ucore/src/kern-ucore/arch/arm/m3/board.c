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
		serial_putc(*str++);
}

void board_init_early()
{
//	put_string(message);

//	pic_init();		// init interrupt controller
	//fixed base and irq
//	clock_init_arm(0, 0);	// linux put tick_init in kernel_main, so do we~
//	pdev_bus_init();
/* use pdev bus to probe devices */
	//serial_init();
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
