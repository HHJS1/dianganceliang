NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0030 =     48. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       0084  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0084   0041 =     65. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0084  __idata_start
       00C5  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00C6   135C =   4956. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0063  __text_start
       0063  __start
       0085  _exit
       0086  _ADC_Init
       008B  _ADC_StartContinuousConversion
       0097  _ADC_ReadChannel
       00AA  _ADC_StopContinuousConversion
       00AC  _ADC_ToVoltage
       00DB  _Delay_ms
       00F1  _GPIO_Init
       00F6  _main
       0120  _System_Init
       0128  _Process_ADC_Data
       01B1  _L_Val_Calculation
       0310  _Q_Val_Calculation
       0408  _get_L_val
       043D  _get_Q_val
       0472  _Send_Data_Packet
       04D2  _UART_Init
       04DB  _UART_Transmit
       04DF  _UART_Receive
       04E3  _UART_DataAvailable
       04E6  _UART_TransmitString
       04F5  _Keys_Init
       04FA  _Keys_Scan
       06F3  _Clear_ADC_Data
       0708  mod16u
       070A  div16u
       070B  xdiv16u
       0724  pop_xgset003C
       0729  pop_xgset00FC
       0730  pop_xgset30FC
       0739  pop_xgsetF0FC
       0744  push_xgsetF0FC
       0746  push_xgset30FC
       0748  push_xgset00FC
       074A  push_xgset003C
       074F  push_xgsetF000
       0754  pop_xgsetF000
       0759  neg32
       0762  lpm32
       0776  fpsub
       0778  fpadd
       0779  fpadd_alt
       07E0  fpadd2
       07EB  fpadd2x
       07F9  fpsub2
       0804  fpsub2x
       0812  fpint
       0844  uint2fp
       0846  int2fp
       084F  ulong2fp
       0851  long2fp
       0868  fpdiv1
       0871  fpdiv2
       087B  fpdiv1x
       0887  fpdiv2x
       0902  unpacks
       090A  tstR16_R19
       0912  unpacku
       092B  normalize_and_pack
       0960  pack
       0970  saveFPRegs
       097F  restoreFPRegs
       098E  fpmule
       09E1  fpmule1
       09EB  fpmule2
       09F6  fpmule1x
       0A03  fpmule2x
       0A11  __text_end

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
<library>	[ div16u.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushy.s, lneg.s, lpm32.s, fpadd.s, fpadd2.s, fpadd2x.s ]
[ fpsub2.s, fpsub2x.s, fpint.s, int2fp.s, fpdiv_new.s, fputil.s, fpmule.s, fpmule1.s, fpmule2.s, fpmule1x.s ]
[ fpmule2x.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

