
.data 
    baraja: .space 208
    mano_jugador: .space 44
    mano_dealer: .space 44

    msg_hs: .asciiz "Hit (h) or Stand (s)?"
    msg_bust: .asciiz "BUST"
    msg_push: .asciiz "Push" #empate
    msg_lose: .asciiz "You lost"
    msg_win: .asciiz "You won!"

.text

# MAIN M
main:
    partida:
        jal inicializar_baraja

        # DEBUG
        debug:
            li $s0, 0           # i = 0
            li $s1, 52          # tamanio
            la $s2, baraja      # direccion array

            for_a2:
                bge $s0, $s1, fin_a2

                sll $t3, $s0, 2     # offset de 4 en 4
                add $t3, $s2, $t3   # direccion actual
                lw $t4, 0($t3)      # t4 = carta
               
                move $a0, $t4
                li $v0, 1
                syscall

                addi $s0, $s0, 1
                j for_a2
        fin_a2:
li $v0, 10
syscall

# FUNCION A
inicializar_baraja:

    li $t0, 0           # i = 0
    li $t1, 52          # tamanio
    la $t2, baraja      # direccion array

    for_a1:
        bge $t0, $t1, fin_a1

        sll $t3, $t0, 2     # offset de 4 en 4
        add $t3, $t2, $t3   # direccion actual

        li $t5, 13
        div $t0, $t5
        mfhi $t6            # t6 = (i % 13)
        addi $t6, $t6, 1    # t6 + 1

        sw $t6, 0($t3)      # baraja[i] = (i % 13) +1

        addi $t0, $t0, 1
        j for_a1
    fin_a1:
    jr $ra


