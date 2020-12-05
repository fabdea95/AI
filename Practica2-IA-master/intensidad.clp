;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 TEMPLATES					 		---------- 								TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;deftemplate para almacenar la intensidad inicial dependiendo de su dieta

(deftemplate intensidad_Dieta
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot media (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)

;;;deftemplate para almacenar la intensidad inicial dependiendo de sus habitos


(deftemplate intensidad_HabitosTrabajo
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot media (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)

(deftemplate intensidad_HabitosFuera
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot media (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS					 		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de preguntas
;; comenzamos las deducciones de datos

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
    (export ?ALL)
)

(defrule activar_intensidad "activamos los deftemplates de intensidad"
	(nuevo_cliente)
	(not (intensidad_dieta))
	(not (intensidad_habitos))
	=>
	(assert (intensidad_dieta))
	(assert (intensidad_habitos))
)

(defrule Intensidad_inicial_dieta_baja1 "Regla para que la intensidad inicial de la dieta sea baja"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (abuso_sal ?sal))
	(test (eq ?sal TRUE)
	=>
	(modify ?int (baja TRUE))
	(assert (int_dieta))
)
	

(defrule Intensidad_inicial_dieta_baja2 "Regla para que la intensidad inicial de la dieta sea baja"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (consumo_agua ?agua)(consumo_carbohidratos ?carbo) (consumo_proteina ?prot))
	(test (or (eq ?agua muy_poco) (eq ?carbo bajo) (eq ?prot bajo)))
	=>
	(modify ?int (baja TRUE))
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_baja3 "Regla para que la intensidad inicial de la dieta sea baja"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (consumo_grasa ?grasa))
	(test (eq ?grasa elevado))
	=>
	(modify ?int (baja TRUE))
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_media1 "Regla para que la intensidad inicial de la dieta sea media"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (consumo_grasa ?grasa))
	(test (eq ?grasa normal))
	=>
	(modify ?int (media TRUE))
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_media2 "Regla para que la intensidad inicial de la dieta sea media"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (consumo_agua ?agua)(consumo_carbohidratos ?carbo) (consumo_proteina ?prot))
	(test (or (eq ?agua poco) (eq ?carbo normal) (eq ?prot normal)))
	=>
	(modify ?int (media TRUE))
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_alta1 "Regla para que la intensidad inicial de la dieta sea alta"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (consumo_grasa ?grasa))
	(test (eq ?grasa bajo))
	=>
	(modify ?int (alta TRUE))
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_alta2 "Regla para que la intensidad inicial de la dieta sea alta"
	(nuevo_cliente)
	(not (int_dieta))
	?int <- (intensidad_dieta)
	?d <- (object (is-a Dieta) (consumo_agua ?agua)(consumo_carbohidratos ?carbo) (consumo_proteina ?prot))
	(test (or (eq ?agua frecuente) (eq ?carbo elevado) (eq ?prot elevado)))
	=>
	(modify ?int (alta TRUE))
	(assert (int_dieta))
)

(defrule Intensidad_inicial_habitosTrabajo_baja1 "Regla para que la intensidad inicial de los habitos en el trabajo sea baja"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (sentado ?sent))
	(test (eq ?sent TRUE)
	=>
	(modify ?int_hab (baja TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_baja2 "Regla para que la intensidad inicial de los habitos en el trabajo sea baja"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (de_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab (baja TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_baja3 "Regla para que la intensidad inicial de los habitos en el trabajo sea baja"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (esfuerzo_musc ?mus) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?mus TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab (baja TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_media1 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (de_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec ocasional) (eq ?frec frecuente) (> ?dur 10)))
	=>
	(modify ?int_hab (media TRUE))
	(assert (int_habitosTrabajo))
)


(defrule Intensidad_inicial_habitosTrabajo_media2 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (desplazamiento_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10) (< ?dur 20)))
	=>
	(modify ?int_hab (media TRUE))
	(assert (int_habitosTrabajo))
)


(defrule Intensidad_inicial_habitosTrabajo_media3 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (esfuerzo_musc ?musc) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?musc TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10) (< ?dur 20)))
	=>
	(modify ?int_hab (media TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_media4 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (levantamiento_peso ?peso) (mov_repet ?rep) (frecuencia ?frec) (duracion ?dur))
	(test (or (eq ?peso TRUE) (eq ?rep TRUE)))
	(test (or (eq ?frec ocasional) (eq ?frec pocas_veces) (< ?dur 20)))
	=>
	(modify ?int_hab (media TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_alta1 "Regla para que la intensidad inicial de los habitos en el trabajo sea alta"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (desplazamiento_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab (alta TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_alta2 "Regla para que la intensidad inicial de los habitos en el trabajo sea alta"
	(nuevo_cliente)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_habitosTrabajo)
	?trab <- (object (is-a En_trabajo) (esfuerzo_musc ?mus) (levantamiento_peso ?peso) (mov_repet ?rep) (frecuencia ?frec) (duracion ?dur))
	(test (or (eq ?mus  TRUE) (eq ?peso TRUE) (eq ?rep TRUE)))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab (alta TRUE))
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosFuera_baja1 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (act_estaticas ?est))
	(test (eq ?est TRUE))
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_baja2 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (desplazamientos ?desp) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?desp TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_baja3 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (tareas_domesticas ?tar) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?tar TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_media1 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (desplazamientos ?desp) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?desp TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10) (< ?dur 20)))
	=>
	(modify ?int_hab_fuera (media TRUE))
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_media2 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (tareas_domesticas ?tar) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?tar TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10)(< ?dur 20)))
	=>
	(modify ?int_hab_fuera (media TRUE))
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_alta1 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea alta"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (desplazamientos ?desp) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?desp TRUE))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab_fuera (alta TRUE))
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_alta2 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea media"
	(nuevo_cliente)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_habitosFuera)
	?casa <- (object (is-a Fuera_trabajo) (tareas_domesticas ?tar) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?tar TRUE))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab_fuera (altaa TRUE))
	(assert (int_habitosFuera))
)
