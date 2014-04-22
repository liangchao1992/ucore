
    .syntax unified

/*
 * Imports external symbols
 */
    .extern kern_init
    .extern SysTickHandler
    .extern __data_org, __data_start, __data_end
    .extern __bss_start, __bss_end, __stack_top
 .globl  __kuser_helper_start
 	 __kuser_helper_start:
 
 .globl  __kuser_helper_end
           __kuser_helper_end:


/*
 * Vector Table
 */
    .section .vector,"ax"
    .align 4
    .global __Vectors, __Vectors_End
__Vectors:
    /*Details in ARMv7M_Ref,pdf page 430*/
     /*    Internal Exceptions Vector Define                                        */
    .long   __stack_top                          /* 00: Top of Main Stack           */
    .long   reset_handler                        /* 01: Reset Handler               */
    .long   NMI_handler                      /* 02: NMI Handler                 */
    .long   HardFault_handler                      /* 03: Hard Fault Handler          */
    .long   MPUFault_handler                      /* 04: MPU Fault Handler           */
    .long   BusFault_handler                      /* 05: Bus Fault Handler           */
    .long   UsageFault_handler                      /* 06: Usage Fault Handler         */
    .long   0                                    /* 07: Reserved                    */
    .long   0                                    /* 08: Reserved                    */
    .long   0                                    /* 09: Reserved                    */
    .long   0                                    /* 10: Reserved                    */
    .long   0                                    /* 11: SVCall Handler              */
    .long   DebugMonitor_handler                      /* 12: Debug Monitor Handler       */
    .long   0                                    /* 13: Reserved                    */
    .long   0	                                    /* 14: PendSV Handler              */
    .long   0		                      /* 15: Systick handler             */

    /*    External Interrupts Vector Define                                         */
    .long   default_handler                      /* 16: */
    .long   default_handler                      /* 17: */
    .long   default_handler                      /* 18: */
    .long   default_handler                      /* 19: */
    .long   default_handler                      /* 20: */
    .long   default_handler                      /* 21: */
    .long   default_handler                      /* 22: */
    .long   default_handler                      /* 23: */
    .long   default_handler                      /* 24: */
    .long   default_handler                      /* 25: */
    .long   default_handler                      /* 26: */
    .long   default_handler                      /* 27: */
    .long   default_handler                      /* 28: */
    .long   default_handler                      /* 29: */
    .long   default_handler                      /* 30: */
    .long   default_handler                      /* 31: */
    .long   default_handler                      /* 32: */
    .long   default_handler                      /* 33: */
    .long   default_handler                      /* 34: */
    .long   default_handler                      /* 35: */
    .long   default_handler                      /* 36: */
    .long   default_handler                      /* 37: */
    .long   default_handler                      /* 38: */
    .long   default_handler                      /* 39: */
    .long   default_handler                      /* 40: */
    .long   default_handler                      /* 41: */
    .long   default_handler                      /* 42: */
    .long   default_handler                      /* 43: */
    .long   default_handler                      /* 44: */
    .long   default_handler                      /* 45: */
    .long   default_handler                      /* 46: */
    .long   default_handler                      /* 47: */
    .long   default_handler                      /* 48: */
    .long   default_handler                      /* 49: */
    .long   default_handler                      /* 50: */
    .long   default_handler                      /* 51: */
    .long   default_handler                      /* 52: */
    .long   default_handler                      /* 53: */
    .long   default_handler                      /* 54: */
    .long   default_handler                      /* 55: */
    .long   default_handler                      /* 56: */
    .long   default_handler                      /* 57: */
    .long   default_handler                      /* 58: */
    .long   default_handler                      /* 59: */
    .long   default_handler                      /* 60: */
    .long   default_handler                      /* 61: */
    .long   default_handler                      /* 62: */
    .long   default_handler                      /* 63: */
    .long   default_handler                      /* 64: */
    .long   default_handler                      /* 65: */
    .long   default_handler                      /* 66: */
    .long   default_handler                      /* 67: */
    .long   default_handler                      /* 68: */
    .long   default_handler                      /* 69: */
    .long   default_handler                      /* 70: */
    .long   default_handler                      /* 71: */
    .long   default_handler                      /* 72: */
    .long   default_handler                      /* 73: */
    .long   default_handler                      /* 74: */
    .long   default_handler                      /* 75: */
    .long   default_handler                      /* 76: */
    .long   default_handler                      /* 77: */
    .long   default_handler                      /* 78: */
    .long   default_handler                      /* 79: */
    .long   default_handler                      /* 80: */
    .long   default_handler                      /* 81: */
    .long   default_handler                      /* 82: */
    .long   default_handler                      /* 83: */
    .long   default_handler                      /* 84: */
    .long   default_handler                      /* 85: */
    .long   default_handler                      /* 86: */
    .long   default_handler                      /* 87: */
    .long   default_handler                      /* 88: */
    .long   default_handler                      /* 89: */
    .long   default_handler                      /* 90: */
    .long   default_handler                      /* 91: */
    .long   default_handler                      /* 92: */
    .long   default_handler                      /* 93: */
    .long   default_handler                      /* 94: */
    .long   default_handler                      /* 95: */
    .long   default_handler                      /* 96: */
    .long   default_handler                      /* 97: */
    .long   default_handler                      /* 98: */
    .long   default_handler                      /* 99: */
    .long   default_handler                      /* 100: */
    .long   default_handler                      /* 101: */
    .long   default_handler                      /* 102: */
    .long   default_handler                      /* 103: */
    .long   default_handler                      /* 104: */
    .long   default_handler                      /* 105: */
    .long   default_handler                      /* 106: */
    .long   default_handler                      /* 107: */
    .long   default_handler                      /* 108: */
    .long   default_handler                      /* 109: */
    .long   default_handler                      /* 110: */
    .long   default_handler                      /* 111: */
    .long   default_handler                      /* 112: */
    .long   default_handler                      /* 113: */
    .long   default_handler                      /* 114: */
    .long   default_handler                      /* 115: */
    .long   default_handler                      /* 116: */
    .long   default_handler                      /* 117: */
    .long   default_handler                      /* 118: */
    .long   default_handler                      /* 119: */
    .long   default_handler                      /* 120: */
    .long   default_handler                      /* 121: */
    .long   default_handler                      /* 122: */
    .long   default_handler                      /* 123: */
    .long   default_handler                      /* 124: */
    .long   default_handler                      /* 125: */
    .long   default_handler                      /* 126: */
    .long   default_handler                      /* 127: */
    .long   default_handler                      /* 128: */
    .long   default_handler                      /* 129: */
    .long   default_handler                      /* 130: */
    .long   default_handler                      /* 131: */
    .long   default_handler                      /* 132: */
    .long   default_handler                      /* 133: */
    .long   default_handler                      /* 134: */
    .long   default_handler                      /* 135: */
    .long   default_handler                      /* 136: */
    .long   default_handler                      /* 137: */
    .long   default_handler                      /* 138: */
    .long   default_handler                      /* 139: */
    .long   default_handler                      /* 140: */
    .long   default_handler                      /* 141: */
    .long   default_handler                      /* 142: */
    .long   default_handler                      /* 143: */
    .long   default_handler                      /* 144: */
    .long   default_handler                      /* 145: */
    .long   default_handler                      /* 146: */
    .long   default_handler                      /* 147: */
    .long   default_handler                      /* 148: */
    .long   default_handler                      /* 149: */
    .long   default_handler                      /* 150: */
    .long   default_handler                      /* 151: */
    .long   default_handler                      /* 152: */
    .long   default_handler                      /* 153: */
    .long   default_handler                      /* 154: */
    .long   default_handler                      /* 155: */
    .long   default_handler                      /* 156: */
    .long   default_handler                      /* 157: */
    .long   default_handler                      /* 158: */
    .long   default_handler                      /* 159: */
    .long   default_handler                      /* 160: */
    .long   default_handler                      /* 161: */
    .long   default_handler                      /* 162: */
    .long   default_handler                      /* 163: */
    .long   default_handler                      /* 164: */
    .long   default_handler                      /* 165: */
    .long   default_handler                      /* 166: */
    .long   default_handler                      /* 167: */
    .long   default_handler                      /* 168: */
    .long   default_handler                      /* 169: */
    .long   default_handler                      /* 170: */
    .long   default_handler                      /* 171: */
    .long   default_handler                      /* 172: */
    .long   default_handler                      /* 173: */
    .long   default_handler                      /* 174: */
    .long   default_handler                      /* 175: */
    .long   default_handler                      /* 176: */
    .long   default_handler                      /* 177: */
    .long   default_handler                      /* 178: */
    .long   default_handler                      /* 179: */
    .long   default_handler                      /* 180: */
    .long   default_handler                      /* 181: */
    .long   default_handler                      /* 182: */
    .long   default_handler                      /* 183: */
    .long   default_handler                      /* 184: */
    .long   default_handler                      /* 185: */
    .long   default_handler                      /* 186: */
    .long   default_handler                      /* 187: */
    .long   default_handler                      /* 188: */
    .long   default_handler                      /* 189: */
    .long   default_handler                      /* 190: */
    .long   default_handler                      /* 191: */
    .long   default_handler                      /* 192: */
    .long   default_handler                      /* 193: */
    .long   default_handler                      /* 194: */
    .long   default_handler                      /* 195: */
    .long   default_handler                      /* 196: */
    .long   default_handler                      /* 197: */
    .long   default_handler                      /* 198: */
    .long   default_handler                      /* 199: */
    .long   default_handler                      /* 200: */
    .long   default_handler                      /* 201: */
    .long   default_handler                      /* 202: */
    .long   default_handler                      /* 203: */
    .long   default_handler                      /* 204: */
    .long   default_handler                      /* 205: */
    .long   default_handler                      /* 206: */
    .long   default_handler                      /* 207: */
    .long   default_handler                      /* 208: */
    .long   default_handler                      /* 209: */
    .long   default_handler                      /* 210: */
    .long   default_handler                      /* 211: */
    .long   default_handler                      /* 212: */
    .long   default_handler                      /* 213: */
    .long   default_handler                      /* 214: */
    .long   default_handler                      /* 215: */
    .long   default_handler                      /* 216: */
    .long   default_handler                      /* 217: */
    .long   default_handler                      /* 218: */
    .long   default_handler                      /* 219: */
    .long   default_handler                      /* 220: */
    .long   default_handler                      /* 221: */
    .long   default_handler                      /* 222: */
    .long   default_handler                      /* 223: */
    .long   default_handler                      /* 224: */
    .long   default_handler                      /* 225: */
    .long   default_handler                      /* 226: */
    .long   default_handler                      /* 227: */
    .long   default_handler                      /* 228: */
    .long   default_handler                      /* 229: */
    .long   default_handler                      /* 230: */
    .long   default_handler                      /* 231: */
    .long   default_handler                      /* 232: */
    .long   default_handler                      /* 233: */
    .long   default_handler                      /* 234: */
    .long   default_handler                      /* 235: */
    .long   default_handler                      /* 236: */
    .long   default_handler                      /* 237: */
    .long   default_handler                      /* 238: */
    .long   default_handler                      /* 239: */
    .long   default_handler                      /* 240: */
    .long   default_handler                      /* 241: */
    .long   default_handler                      /* 242: */
    .long   default_handler                      /* 243: */
    .long   default_handler                      /* 244: */
    .long   default_handler                      /* 245: */
    .long   default_handler                      /* 246: */
    .long   default_handler                      /* 247: */
    .long   default_handler                      /* 248: */
    .long   default_handler                      /* 249: */
    .long   default_handler                      /* 250: */
    .long   default_handler                      /* 251: */
    .long   default_handler                      /* 252: */
    .long   default_handler                      /* 253: */
    .long   default_handler                      /* 254: */
    .long   default_handler                      /* 255: */
__Vectors_End:

/*
 * Reset handle routine
 */
    .section .text,"ax"
    .align  2
    .global reset_handler
    .type   reset_handler,function
reset_handler:
    cpsid   i                                    /*Disable interrupt  */


/*     Loop to copy data from read only memory to RAM. The ranges
 *      of copy from/to are specified by following symbols evaluated in
 *      linker script.
 *      __data_org: End of code section, i.e., begin of data sections to copy from.
 *      __data_start__/__data_end__: RAM address range that data should be
 *      copied to. Both must be aligned to 4 bytes boundary.
 */
    ldr     r1, =__data_org                      /* src address */
    ldr     r2, =__data_start                    /* dst address */
    ldr     r3, =__data_end
    subs    r3, r3, r2                           /* r3 := data_size */
    beq     data_done                            /* if __data_start == __data_end */

data_loop:
    ldmia   r1!, {r0}
    stmia   r2!, {r0}
    subs    r3,  #4
    bne     data_loop                            /* if data_size != 0 */
data_done:

#define __STARTUP_CLEAR_BSS   /*Or, the bss will not be zeroed. So I define this macro to enable the following piece of code. WuZhenwei, April 9,2014*/

#ifdef __STARTUP_CLEAR_BSS
/*     This part of work usually is done in C library startup code. Otherwise,
 *     define this macro to enable it in this startup.
 *
 *     Loop to zero out BSS section, which uses following symbols
 *     in linker script:
 *      __bss_start: start of BSS section. Must align to 4
 *      __bss_end: end of BSS section. Must align to 4
 */
    ldr     r1, =__bss_start                     /* dst address */
    ldr     r2, =__bss_end
    subs    r2, r2, r1                           /* r2 := bss_size */
    beq     bss_done                             /* if __bss_start == __bss_end */
    mov     r0, #0

bss_loop:
    stmia   r1!, {r0}
    subs    r2,  #4
    bne     bss_loop                             /* if bss_size != 0 */
bss_done:
#endif /* __STARTUP_CLEAR_BSS */

/*
 *  Goto main entry
 */
    /*cpsie   i*/
    ldr     r12, =kern_init
    mov     r0, #0
    blx     r12
reset_end:
    b       reset_end
/*
 * Systick handler
 */
/*    .global systick_handler
    .type systick_handler,function
systick_handler:
    ldr	  r12, =SysTickHandler
    mov   r0,#0
    blx   r12
    bx    lr
*/
/*
 * Default exeception and interrupt process handler define
 */
/*
    .global default_handler
    .type   default_handler,function
default_handler:
    b       default_handler

    .end
*/
