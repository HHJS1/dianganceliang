#ifndef LCD_1602_H
#define LCD_1602_H

#include<iom16v.h>

#define uchar unsigned char 
#define uint unsigned int 

#define RS 5
#define RW 6
#define EN 7



void s_ms(uint ms);
void busy(void);
void writecom(uchar	com);
void	LcdInit(void);
void	writedata(uchar data);
uchar	readdata(void);
void	WriteCGRAM(uint	num, const uint	*pBuffer);
void	WriteMenu(const uchar *pBuffer);
void	WriteNum(uint	row,uint	col,uint	 num);
void	WriteChar(uchar row,uchar col,uint num,uchar *pBuffer);



#endif


