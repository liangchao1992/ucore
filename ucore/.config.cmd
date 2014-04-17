deps_config := \
	src/kern-ucore/dde36/Kconfig \
	src/kern-ucore/module/Kconfig \
	src/kern-ucore/fs/Kconfig \
	src/kern-ucore/schedule/Kconfig \
	src/kern-ucore/mm/Kconfig \
	src/kern-ucore/numa/Kconfig \
	src/kern-ucore/Kconfig \
	/home/liangchao/MyWork/graduate/ucore/src/kern-ucore/arch/arm/Kconfig

include/config/auto.conf: \
	$(deps_config)

$(deps_config): ;
