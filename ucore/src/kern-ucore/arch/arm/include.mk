ARCH_INLUCDES:=debug driver include libs mm numa process sync trap syscall kmodule

### DEFINE THE BOARD MACROS ###
ifdef UCONFIG_ARM_BOARD_GOLDFISH
ARCH_INLUCDES += mach-goldfish
PLATFORM_DEF := -DPLATFORM_GOLDFISH
PLATFORM_DEF += -DCONFIG_MACH_GOLDFISH_ARMV7 -DCONFIG_ARCH_GOLDFISH

ifdef UCONFIG_HAVE_LINUX_DDE_BASE
PLATFORM_DEF += -include $(KTREE)/module/include/mach-goldfish/autoconf.h
endif

endif


ifdef UCONFIG_ARM_BOARD_M3
ARCH_INLUCDES +=m3 m3/CMSIS
PLATFORM_DEF += -mcpu=cortex-m3


endif


ifdef UCONFIG_ARM_CPU_V7
MACH_MACRO :=-D_MACH_ARM_ARMV7
PLATFORM_DEF += -march=armv7-m
endif

#MACH_MACRO += -DDEBUG -D__ARM_EABI__ -DARCH_ARM

ARCH_CFLAGS := $(MACH_MACRO) $(PLATFORM_DEF)
