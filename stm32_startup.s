    
    .syntax unified          @ Use unified syntax (required for Thumb and ARM)
    .cpu cortex-m4           @ Target CPU: Cortex-M4
    .thumb                   @ Force assembler to use Thumb instructions

    .section .text           @ Put code in the .text section
    .global _start           @ Make _start visible to the linker
    .type _start, %function  @ Mark _start as a function (optional but good style)

_start:
    bl main                  @ Branch with link to `main` function
    b .                      @ Infinite loop to prevent falling off

main:


.section .data