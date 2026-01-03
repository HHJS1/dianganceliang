CC = iccavr
LIB = ilibw
CFLAGS =  -IF:\daima\AVR\ATmega16\4channl_adc\dianganceliang\include -IF:\iccv7avr\include -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LF:\iccv7avr\lib -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = adc.o main.o uart.o keys.o 

4CHANNEL_ADC:	$(FILES)
	$(CC) -o 4CHANNEL_ADC $(LFLAGS) @4CHANNEL_ADC.lk   -lcatmega
adc.o: .\include\adc.h F:\iccv7avr\include\iom16v.h .\include\main.h F:\iccv7avr\include\macros.h F:\iccv7avr\include\AVRdef.h
adc.o:	source\adc.c
	$(CC) -c $(CFLAGS) source\adc.c
main.o: .\include\main.h F:\iccv7avr\include\iom16v.h F:\iccv7avr\include\macros.h F:\iccv7avr\include\AVRdef.h .\include\uart.h .\include\adc.h .\include\keys.h
main.o:	source\main.c
	$(CC) -c $(CFLAGS) source\main.c
uart.o: .\include\uart.h F:\iccv7avr\include\iom16v.h
uart.o:	source\uart.c
	$(CC) -c $(CFLAGS) source\uart.c
keys.o: .\include\keys.h F:\iccv7avr\include\iom16v.h .\include\main.h F:\iccv7avr\include\macros.h F:\iccv7avr\include\AVRdef.h .\include\adc.h
keys.o:	source\keys.c
	$(CC) -c $(CFLAGS) source\keys.c
