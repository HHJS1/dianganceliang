NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0034 =     52. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       0088  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0088   0041 =     65. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0088  __idata_start
       00C9  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00CA   1478 =   5240. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0065  __text_start
       0065  __start
       0087  _exit
       0088  _ADC_Init
       008D  _ADC_StartContinuousConversion
       0099  _ADC_ReadChannel
       00AC  _ADC_StopContinuousConversion
       00AE  _ADC_ToVoltage
       00DD  _Delay_ms
       00F3  _GPIO_Init
       00F8  _main
       0122  _System_Init
       012A  _Process_ADC_Data
       01B3  _L_Val_Calculation
       0307  _Q_Val_Calculation
       04B1  _get_L_val
       04E6  _get_Q_val
       051B  _Send_Data_Packet
       057B  _UART_Init
       0584  _UART_Transmit
       0588  _UART_Receive
       058C  _UART_DataAvailable
       058F  _UART_TransmitString
       059E  _Keys_Init
       05A3  _Keys_Scan
       079C  _Clear_ADC_Data
       07B1  mod16u
       07B3  div16u
       07B4  xdiv16u
       07CD  pop_xgset003C
       07D2  pop_xgset00FC
       07D9  pop_xgset30FC
       07E2  push_xgsetF0FC
       07E4  push_xgset30FC
       07E6  push_xgset00FC
       07E8  push_xgset003C
       07ED  push_xgsetF000
       07F2  pop_xgsetF000
       07F7  neg32
       0800  lpm32
       0814  fpsub
       0816  fpadd
       0817  fpadd_alt
       087E  fpadd2
       0889  fpadd2x
       0897  fpsub2
       08A2  fpint
       08D4  uint2fp
       08D6  int2fp
       08DF  ulong2fp
       08E1  long2fp
       08F8  fpdiv1
       0901  fpdiv2
       090B  fpdiv1x
       0917  fpdiv2x
       0992  unpacks
       099A  tstR16_R19
       09A2  unpacku
       09BB  normalize_and_pack
       09F0  pack
       0A00  saveFPRegs
       0A0F  restoreFPRegs
       0A1E  fpmule
       0A71  fpmule1
       0A7B  fpmule2
       0A86  fpmule1x
       0A93  fpmule2x
       0AA1  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0041 =     65. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  adc.c:current_channel
       0060  __data_start
       0061  _ADC_Values
       0069  _ADC_Values_0
       0071  _ADC_Ready
       0072  _Key_Flags
       0073  _packet
       0089  keys.c:key_open_debounce
       008A  keys.c:key_short_debounce
       008B  keys.c:key_clear_debounce
       008C  _sum
       0094  _ADC_buf
       009C  _i
       009D  _j
       009E  keys.c:key_open_last
       009F  keys.c:key_short_last
       00A0  keys.c:key_start_last
       00A1  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

F:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
adc.o	[ adc.c ]
main.o	[ main.c ]
uart.o	[ uart.c ]
keys.o	[ keys.c ]
<library>	[ div16u.s, gpop2.s, gpop3.s, gpop4.s, gpush.s, gpushy.s, lneg.s, lpm32.s, fpadd.s, fpadd2.s, fpadd2x.s ]
[ fpsub2.s, fpint.s, int2fp.s, fpdiv_new.s, fputil.s, fpmule.s, fpmule1.s, fpmule2.s, fpmule1x.s, fpmule2x.s ]


User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

