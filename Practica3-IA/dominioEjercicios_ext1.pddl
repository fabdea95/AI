(define (domain dominioEjercicios)
    (:requirements :strips :adl :typing)
    (:types ejercicio obj_orden - object
            nivel dia - obj_orden
            preparador beber - ejercicio)
    
    (:predicates    (es_preparador ?x - ejercicio ?y - ejercicio)
                    (se_ejercita ?x - ejercicio)
                    (se_ejercita_en ?x - ejercicio ?d - dia)
                    (se_ejercita_con ?x - ejercicio ?n - nivel)
                    (anterior ?d0 - obj_orden ?d1 - obj_orden)
    )
    
    
    (:action ejercitar_ejercicio 
        :parameters (?x - ejercicio ?n - nivel ?d - dia)
        :precondition   (and    (not (se_ejercita_con ?x ?n))
                                (not (se_ejercita_en ?x ?d))
                                (forall (?y - preparador)
                                        (imply (es_preparador ?y ?x)
                                        (se_ejercita_en ?y ?d))
                                )
                                (imply (se_ejercita ?x)
                                        (exists (?n1 - nivel ?d1 - dia) (and (anterior ?d1 ?d) (anterior ?n1 ?n) (se_ejercita_en ?x ?d1) (se_ejercita_con ?x ?n1)))
                                )
                        )
                                        
        :effect (and (se_ejercita ?x) (se_ejercita_con ?x ?n) (se_ejercita_en ?x ?d))
    )
)
        
        
                                                     
        
