cmake_minimum_required(VERSION 3.20)

project(STM32-DISCO C ASM)

set(EXECUTABLE ${CMAKE_PROJECT_NAME})   

set(CPU_PARAMETERS  
    -mcpu=cortex-m4  
    -mthumb  
    -nostdlib  
    -Wl,--no-warn-rwx-segments) 


set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/stm32.ld)

set(INCS 
    CMSIS/device
    CMSIS/core
    )  

set(SRCS  
    main.s  
    stm32_startup.s
    CMSIS/source/system_stm32f4xx.c
) 

add_executable(${EXECUTABLE}  
    ${SRCS})  

target_compile_definitions(${PROJECT_NAME} PRIVATE
  STM32F411xE             
)

target_include_directories(${EXECUTABLE} PRIVATE  
    ${INCS})

target_compile_options(${EXECUTABLE} PRIVATE  
    ${CPU_PARAMETERS})   

target_link_options(${EXECUTABLE} PRIVATE  
    -T ${LINKER_SCRIPT}  
    ${CPU_PARAMETERS}) 