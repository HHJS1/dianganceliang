#include "uart.h"

#define BAUD 9600
#define BAUD_PRESCALE (((16000000 / (BAUD * 16UL))) - 1)

void UART_Init(void) {
    // 设置波特率
    UBRRH = (unsigned char)(BAUD_PRESCALE >> 8);
    UBRRL = (unsigned char)(BAUD_PRESCALE);
    
    // 使能接收和发送
    UCSRB = (1 << RXEN) | (1 << TXEN);
    
    // 设置帧格式: 8位数据位，1位停止位，无奇偶校验
    UCSRC = (1 << URSEL) | (1 << UCSZ1) | (1 << UCSZ0);
}

void UART_Transmit(unsigned char data) {
    // 等待发送缓冲区为空
    while (!(UCSRA & (1 << UDRE)));
    
    // 发送数据
    UDR = data;
}

unsigned char UART_Receive(void) {
    // 等待接收到数据
    while (!(UCSRA & (1 << RXC)));
    
    // 返回接收到的数据
    return UDR;
}

unsigned char UART_DataAvailable(void) {
    // 检查是否有数据可读
    return (UCSRA & (1 << RXC));
}

void UART_TransmitString(const char* str) {
    while (*str) {
        UART_Transmit(*str++);
    }
}