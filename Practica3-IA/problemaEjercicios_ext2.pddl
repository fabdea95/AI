(define (problem test-01) (:domain dominioEjercicios)
    (:objects   correr bici null flexiones - ejercicio
                d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
                n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 - nivel
                estirar  - preparador
                beber montar_bici - predecesor )

    (:init
    	;relacion de ejercicios
    	(es_preparador estirar bici)
        (es_preparador estirar correr)
        (es_predecesor beber correr)
        (es_predecesor montar_bici bici)
        

        ;niveles
        (anterior n0 n1)
        (anterior n1 n2)
        (anterior n2 n3)
        (anterior n3 n4)
        (anterior n4 n5)
        (anterior n5 n6)
        (anterior n6 n7)
        (anterior n7 n8)
        (anterior n8 n9)
        (anterior n9 n10)

        ;dias
        (anterior d0 d1)
        (anterior d1 d2)
        (anterior d2 d3)
        (anterior d3 d4)
        (anterior d4 d5)
        (anterior d5 d6)
        (anterior d6 d7)
        (anterior d7 d8)
        (anterior d8 d9)
        (anterior d9 d10)
        
        (ultimo_ejercicio_dia d1 null)
        (ultimo_ejercicio_dia d2 null)
        (ultimo_ejercicio_dia d3 null)
        (ultimo_ejercicio_dia d4 null)
        (ultimo_ejercicio_dia d5 null)
        (ultimo_ejercicio_dia d6 null)
        (ultimo_ejercicio_dia d7 null)
        (ultimo_ejercicio_dia d8 null)
        (ultimo_ejercicio_dia d9 null)
        (ultimo_ejercicio_dia d10 null)

        ;ejercicios realizados
        (se_ejercita correr)
        (se_ejercita_en correr d0)
        (se_ejercita_con correr n0)

        (se_ejercita estirar)
        (se_ejercita_en estirar d0)
        (se_ejercita_con estirar n0)

        (se_ejercita montar_bici)
        (se_ejercita_en montar_bici d0)
        (se_ejercita_con montar_bici n0)

        (se_ejercita beber)
        (se_ejercita_en beber d0)
        (se_ejercita_con beber n0)
        
        (se_ejercita bici)
        (se_ejercita_en bici d0)
        (se_ejercita_con bici n0)
        
        (se_ejercita flexiones)
        (se_ejercita_en flexiones d0)
        (se_ejercita_con flexiones n0)

    )

    (:goal (and (se_ejercita_con correr n8) (se_ejercita_con bici n7) (se_ejercita_con flexiones n8) ))
)
