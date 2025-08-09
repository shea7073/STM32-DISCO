    
.syntax unified          @ Use unified syntax (required for Thumb and ARM)
.cpu cortex-m4           @ Target CPU: Cortex-M4
.thumb                   @ Force assembler to use Thumb instructions

@ subsection for reset handler within .text
.section .text.Reset_Handler, "ax", %progbits
.global Reset_Handler
.type Reset_Handler, %function
.extern main
Reset_Handler:
    bl main
    b .

.section .text.Default_Handler, "ax", %progbits
.global Default_Handler
.type Default_Handler, %function
Default_Handler:
    b .


.section .data

    @ .data section code HERE

.section .isr_vector, "a", %progbits
.align 2

.global __isr_vector
.type __isr_vector, %object

__isr_vector:
    .word _estack               @ Initial stack pointer value (top of stack)
    .word Reset_Handler         @ Reset handler
    .word NMI_Handler           @ NMI
    .word HardFault_Handler     @ HardFault
    .word MemManage_Handler     @ MemManage
    .word BusFault_Handler      @ BusFault
    .word UsageFault_Handler    @ UsageFault
    .word 0                     @ Reserved
    .word 0                     @ Reserved
    .word 0                     @ Reserved
    .word 0                     @ Reserved
    .word SVCall_Handler        @ SVCall
    .word DebugMon_Handler      @ Debug Monitor
    .word 0                     @ Reserved
    .word PendSV_Handler        @ PendSV
    .word SysTick_Handler       @ SysTick
    @ Add peripheral IRQs here as needed
    .word WWDG_Handler          @ Window Watchdog 
    .word EXTI16_Handler        @ EXTI Line 16 interrupt / PVD through EXTI line detection interrupt
    .word EXTI21_Handler        @ EXTI Line 21 interrupt / Tamper and TimeStamp interrupts through the EXTI line
    .word EXTI22_Handler        @ EXTI Line 22 interrupt / RTC Wake-up interrupt through the EXTI line
    .word FLASH_Handler         @ Flash global interrupt
    .word RCC_Handler           @ RCC global interrupt
    .word EXTI0_Handler         @ EXTI Line0 interrupt 
    .word EXTI1_Handler         @ EXTI Line1 interrupt
    .word EXTI2_Handler         @ EXTI Line2 interrupt
    .word EXTI3_Handler         @ EXTI Line3 interrupt 
    .word EXTI4_Handler         @ EXTI Line4 interrupt
    .word DMA1_Stream0_Handler  @ DMA1 Stream0 global interrupt
    .word DMA1_Stream1_Handler  @ DMA1 Stream1 global interrupt
    .word DMA1_Stream2_Handler  @ DMA1 Stream2 global interrupt
    .word DMA1_Stream3_Handler  @ DMA1 Stream3 global interrupt
    .word DMA1_Stream4_Handler  @ DMA1 Stream4 global interrupt
    .word DMA1_Stream5_Handler  @ DMA1 Stream5 global interrupt
    .word DMA1_Stream6_Handler  @ DMA1 Stream6 global interrupt
    .word ADC_Handler           @ ADC1 global interrupts
    .word EXTI9_5_Handler       @ EXTI Line[9:5] interrupts
    .word TIM1_BRK_TIM9_Handler @ TIM1 Break interrupt and TIM9 global interrupt
    .word TIM1_UP_TIM10_Handler @ TIM1 Update interrupt and TIM10 global interrupt 
    .word TIM1_TRG_COM_TIM11_Handler @ TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
    .word TIM1_CC_Handler       @ TIM1 Capture Compare interrupt 
    .word TIM2_Handler          @ TIM2 global interrupt
    .word TIM3_Handler          @ TIM3 global interrupt
    .word TIM4_Handler          @ TIM4 global interrupt
    .word I2C1_EV_Handler       @ I2C1 event interrupt
    .word I2C1_ER_Handler       @ I2C1 error interrupt
    .word I2C2_EV_Handler       @ I2C2 event interrupt
    .word I2C2_ER_Handler       @ I2C2 error interrupt 
    .word SPI1_Handler          @ SPI1 global interrupt
    .word SPI2_Handler          @ SPI2 global interrupt
    .word USART1_Handler        @ USART1 global interrupt
    .word USART2_Handler        @ USART2 global interrupt
    .word EXTI15_10_Handler     @ EXTI Line[15:10] interrupts
    .word EXTI17_Handler        @ EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt 
    .word EXTI18_Handler        @ EXTI Line 18 interrupt / USB On-The-Go FS Wake-up through EXTI line interrupt
    .word DMA1_Stream7_Handler  @ DMA1 Stream7 global interrupt
    .word SDIO_Handler          @ SDIO global interrupt
    .word TIM5_Handler          @ TIM5 global interrupt
    .word SPI3_Handler          @ SPI3 global interrupt
    .word DMA2_Stream0_Handler  @ DMA2 Stream0 global interrupt
    .word DMA2_Stream1_Handler  @ DMA2 Stream1 global interrupt
    .word DMA2_Stream2_Handler  @ DMA2 Stream2 global interrupt
    .word DMA2_Stream3_Handler  @ DMA2 Stream3 global interrupt
    .word DMA2_Stream4_Handler  @ DMA2 Stream4 global interrupt
    .word OTG_FS_Handler        @ USB On The Go FS global interrupt 
    .word DMA2_Stream5_Handler  @ DMA2 Stream5 global interrupt
    .word DMA2_Stream6_Handler  @ DMA2 Stream6 global interrupt
    .word DMA2_Stream7_Handler  @ DMA2 Stream7 global interrupt
    .word USART6_Handler        @ USART6 global interrupt
    .word I2C3_EV_Handler       @ I2C3 event interrupt
    .word I2C3_ER_Handler       @ I2C3 error interrupt
    .word FPU_Handler           @ FPU global interrupt 
    .word SPI4_Handler          @ SPI 4 global interrupt
    .word SPI5_Handler          @ SPI 5 global interrupt

.weak Reset_Handler
.set  Reset_Handler, Default_Handler

.weak NMI_Handler
.set  NMI_Handler, Default_Handler

.weak HardFault_Handler
.set  HardFault_Handler, Default_Handler

.weak MemManage_Handler
.set  MemManage_Handler, Default_Handler

.weak BusFault_Handler
.set  BusFault_Handler, Default_Handler

.weak UsageFault_Handler
.set  UsageFault_Handler, Default_Handler

.weak SVCall_Handler
.set  SVCall_Handler, Default_Handler

.weak DebugMon_Handler 
.set  DebugMon_Handler, Default_Handler

.weak PendSV_Handler
.set  PendSV_Handler, Default_Handler

.weak SysTick_Handler
.set  SysTick_Handler, Default_Handler

.weak WWDG_Handler
.set  WWDG_Handler, Default_Handler

.weak EXTI16_Handler
.set  EXTI16_Handler, Default_Handler

.weak EXTI21_Handler
.set  EXTI21_Handler, Default_Handler

.weak EXTI22_Handler
.set  EXTI22_Handler, Default_Handler

.weak FLASH_Handler
.set  FLASH_Handler, Default_Handler

.weak RCC_Handler
.set  RCC_Handler, Default_Handler

.weak EXTI0_Handler
.set  EXTI0_Handler, Default_Handler

.weak EXTI1_Handler
.set  EXTI1_Handler, Default_Handler

.weak EXTI2_Handler
.set  EXTI2_Handler, Default_Handler

.weak EXTI3_Handler
.set  EXTI3_Handler, Default_Handler

.weak EXTI4_Handler
.set  EXTI4_Handler, Default_Handler

.weak DMA1_Stream0_Handler
.set  DMA1_Stream0_Handler, Default_Handler

.weak DMA1_Stream1_Handler
.set  DMA1_Stream1_Handler, Default_Handler

.weak DMA1_Stream2_Handler
.set  DMA1_Stream2_Handler, Default_Handler

.weak DMA1_Stream3_Handler
.set  DMA1_Stream3_Handler, Default_Handler

.weak DMA1_Stream4_Handler
.set  DMA1_Stream4_Handler, Default_Handler

.weak DMA1_Stream5_Handler
.set  DMA1_Stream5_Handler, Default_Handler

.weak DMA1_Stream6_Handler
.set  DMA1_Stream6_Handler, Default_Handler

.weak ADC_Handler
.set  ADC_Handler, Default_Handler

.weak EXTI9_5_Handler
.set  EXTI9_5_Handler, Default_Handler

.weak TIM1_BRK_TIM9_Handler
.set  TIM1_BRK_TIM9_Handler, Default_Handler

.weak TIM1_UP_TIM10_Handler
.set  TIM1_UP_TIM10_Handler, Default_Handler

.weak TIM1_TRG_COM_TIM11_Handler
.set  TIM1_TRG_COM_TIM11_Handler, Default_Handler

.weak TIM1_CC_Handler
.set  TIM1_CC_Handler, Default_Handler

.weak TIM2_Handler
.set  TIM2_Handler, Default_Handler

.weak TIM3_Handler
.set  TIM3_Handler, Default_Handler

.weak TIM4_Handler
.set  TIM4_Handler, Default_Handler

.weak I2C1_EV_Handler
.set  I2C1_EV_Handler, Default_Handler

.weak I2C1_ER_Handler
.set  I2C1_ER_Handler, Default_Handler

.weak I2C2_EV_Handler
.set  I2C2_EV_Handler, Default_Handler

.weak I2C2_ER_Handler 
.set  I2C2_ER_Handler, Default_Handler

.weak SPI1_Handler 
.set  SPI1_Handler, Default_Handler

.weak SPI2_Handler 
.set  SPI2_Handler, Default_Handler

.weak USART1_Handler 
.set  USART1_Handler, Default_Handler

.weak USART2_Handler 
.set  USART2_Handler, Default_Handler

.weak EXTI15_10_Handler
.set  EXTI15_10_Handler, Default_Handler

.weak EXTI17_Handler
.set  EXTI17_Handler, Default_Handler

.weak EXTI18_Handler
.set  EXTI18_Handler, Default_Handler

.weak DMA1_Stream7_Handler
.set  DMA1_Stream7_Handler, Default_Handler

.weak SDIO_Handler
.set  SDIO_Handler, Default_Handler

.weak TIM5_Handler
.set  TIM5_Handler, Default_Handler

.weak SPI3_Handler 
.set  SPI3_Handler, Default_Handler

.weak DMA2_Stream0_Handler
.set  DMA2_Stream0_Handler, Default_Handler

.weak DMA2_Stream1_Handler
.set  DMA2_Stream1_Handler, Default_Handler

.weak DMA2_Stream2_Handler
.set  DMA2_Stream2_Handler, Default_Handler

.weak DMA2_Stream3_Handler
.set  DMA2_Stream3_Handler, Default_Handler

.weak DMA2_Stream4_Handler
.set  DMA2_Stream4_Handler, Default_Handler

.weak OTG_FS_Handler 
.set  OTG_FS_Handler, Default_Handler

.weak DMA2_Stream5_Handler
.set  DMA2_Stream5_Handler, Default_Handler

.weak DMA2_Stream6_Handler
.set  DMA2_Stream6_Handler, Default_Handler

.weak DMA2_Stream7_Handler
.set  DMA2_Stream7_Handler, Default_Handler

.weak USART6_Handler
.set  USART6_Handler, Default_Handler

.weak I2C3_EV_Handler  
.set  I2C3_EV_Handler, Default_Handler

.weak I2C3_ER_Handler   
.set  I2C3_ER_Handler, Default_Handler

.weak FPU_Handler  
.set  FPU_Handler, Default_Handler

.weak SPI4_Handler  
.set  SPI4_Handler, Default_Handler

.weak SPI5_Handler  
.set  SPI5_Handler, Default_Handler




