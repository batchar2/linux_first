CURRENT = $(shell uname -r)
KDIR = /lib/modules/$(CURRENT)/build/
PWD = $(shell pwd)
DEST = /lib/modules/$(CURRENT)/misc 
EXTRA_CFLAGS += -O2 --no-warnings


TARGET1 = first_module
obj-m   := $(TARGET1).o

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	@rm -f *.o .*.cmd .*.flags *.mod.c *.order
	@rm -f .*.*.cmd *~ *.*~ TODO.*
	@rm -fR .tmp*
	@rm -rf .tmp_versions

