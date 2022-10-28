addi x29, x0, 65    
addi x30, x0, 24    

main: 
    lb x5, a    
    lb x6, b    
    lb x7, c    
    lb x28, x   

    jal x18, read
    add x5, x0 , x14

    jal x18, read
    add x6, x0 , x14

    jal x18, read
    add x7, x0 , x14

    blt x5, x0, end      
    bge x6, x29, end     
    blt x7, x30, end     
    addi x28, x0, 1        
    jal x18, end

read:
    lb x10, 1025(x0)
    add x14, x0 , x10
    sb x10, 1024(x0)
jalr x0, 0(x18)

end:
    sb x28, 1024(x0)
jal x0, main

a: .word 0
b: .word 0
c: .word 0
x: .word 0