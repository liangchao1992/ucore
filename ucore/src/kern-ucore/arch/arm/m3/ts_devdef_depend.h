/*
 *----------------------------------------------------------------------------------------
 *    Include/dev
 *
 *    Copyright (C) 2008-2013 by Dalian uLoong Co.,Ltd. All rights reserved.
 *
 *    This program is open source software; developer can redistribute it and/or
 *    modify it under the terms of the U-License as published by the T-Engine China
 *    Open Source Society; either version 1 of the License, or (at developer option)
 *    any later Version.
 *
 *    This program is distributed in the hope that it will be useful,but WITHOUT ANY
 *    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 *    A PARTICULAR PURPOSE.  See the U-License for more details.
 *
 *    Developer should have received a copy of the U-License along with this program;
 *    if not, download from www.tecoss.org(the web page of the T-Engine China Open
 *    Source Society).
 *
 *    CPU:        MB9BF5
 *    RTOS:       NONE
 *    Version:    1.6.00
 *    Released by T-Engine China Open Source Society
 *                  (http://www.tecoss.org).
 *
 *   File Name      : sysdef_depend.h
 *   Create Date    : 2012/7/9-2013/5/28
 *   Author         : WangShb-Zhangzl
 *   Description    : register and memory Definition about chip.
 *----------------------------------------------------------------------------------------
 */

#ifndef __TK_DEVDEF_DEPEND_H__
#define __TK_DEVDEF_DEPEND_H__

#include <mb9b500r.h>

/* CRG_SCM_STR Register Value */
#define CRG_SCM_STR_MORDY  0x02                  /* Main clock oscilation stable flag */
#define CRG_SCM_STR_SORDY  0x08                  /* Sub clock oscilation stable flag */
#define CRG_SCM_STR_PLRDY  0x10                  /* PLL oscilation stable flag*/
#define CRG_SCM_STR_MOMCK  0x20                  /* Select Main clock as Master clock */
#define CRG_SCM_STR_PLMCK  0x40                  /* Select PLL clock as Master clock */
/* CRG_CSW_TMR Register Value */
#define CRG_CSW_TMR_MOWT   0x0C                  /* Main clock stablilization time 33ms */
/* CRG_PSW_TMR Register Value */
#define CRG_PSW_TMR_POWT   0x00                  /* PLL clock stablilization time 128us */
/* CRG_BSC_PSR Register Value */
#define CRG_BSC_PSR_DIV    0x00                  /* Set Base clock ratio as 1/1 */
/* CRG_APBC0_PSR Register Value */
#define CRG_APBC0_PSR_DIV  0x01                  /* Set APBC0 clock ratio as 1/2 */
/* CRG_APBC1_PSR Register Value */
#define CRG_APBC1_PSR_DIV  0x82                  /* Set APBC1 clock ratio as 1/4 Enable */
/* CRG_APBC2_PSR Register Value */
#define CRG_APBC2_PSR_DIV  0x81                  /* Set APBC2 clock ratio as 1/2 Enable */
/* CRG_SWC_PSR Register Value */
#define CRG_SWC_PSR_DIV    0x83                  /* Set Soft watchdog clock ratio as 1/8*/
/* CRG_TTC_PSR Register Value */
#define CRG_TTC_PSR_DIV    0x00                  /* Set Trace clock ratio as 1/1 */
/* CRG_PLL_CTL1 Register Value */
#define CRG_PLL_CTL1_DIV   0x00                  /* Set Pll clock ratio1 as 1/1 */
/* CRG_PLL_CTL2 Register Value */
#define CRG_PLL_CTL2_DIV   0x13                  /* Set Pll clock ratio1 as 1/20 */


/* Watchdog Control Register */
#define WDG_RESEN       0x02                     /* Hardware Watchdog Reset Enable */
#define WDG_INTEN       0x01                     /* Hardware Watchdog Interrupt Enable */
/* WDG_LCK  Watchdog Lock Register */
#define WDG_LCKCTL      0x1ACCE551               /* ock control register */
#define WDG_LCKREL      0xE5331AAE               /* Hardware Watchdog release lock */


#endif /* __TK_DEVDEF_DEPEND_H__ */
