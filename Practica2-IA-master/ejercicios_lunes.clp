(defmodule modulo_inferencia_programa
	(import MAIN ?ALL)
	(import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL)
	(import modulo_inferencia_ejercicios ?ALL)
	(export ?ALL)
)

;;;Regla para obtener todos los ejercicios recomendados

(defrule obtener_ejercicios_recomendados
	(nuevo_cliente)
	(not (programa))
	=>
	(bind ?ejerc_recomendados (find-all-instances (?inst Ejercicio) (eq ?inst::es_recomendado TRUE)))
	(assert (programa))
)

;;;Regla para obtenerer los ejercicios del lunes

(defrule obtener_ejercicios_lunes
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?programa))
	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
	(not (ejercicios_lunes))
	=>
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?programa tiempo_diario))
	(bind $?lista_ejerc_lunes )
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind ?tiempo_ejer (send ?ejer tiempo_max))
		(bind ?ejercita_musc (send ?ejer ejercita))
		(bind ?t (+ ?tiempo ?tiempo_ejer))
		(if (< ?t ?tiempo_disp) then
			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
				(bind ?musc (nth$ ?j ?ejercita_musc))
				(bind ?nombre_musc (send ?musc get-nombre))
				(if (or (eq ?nombre_musc "Biceps") (eq ?nombre_musc "Pecho")) then
					(insert$ ?lista_ejerc_lunes 1 ?ejer)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				)
			)
		)
	)
	(assert (ejercicios_lunes))
)



(defrule obtener_ejercicios_martes
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?programa))
	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
	(not (ejercicios_martes))
	=>
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?programa tiempo_diario))
	(bind $?lista_ejerc_martes)
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind ?tiempo_ejer (send ?ejer tiempo_max))
		(bind ?ejercita_musc (send ?ejer ejercita))
		(bind ?t (+ ?tiempo ?tiempo_ejer))
		(if (< ?t ?tiempo_disp) then
			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
				(bind ?musc (nth$ ?j ?ejercita_musc))
				(bind ?nombre_musc (send ?musc get-nombre))
				(if (or (eq ?nombre_musc "Gemelo") (eq ?nombre_musc "Biceps Femoral") (eq ?nombre_musc "Cuadriceps") (eq ?nombre_musc "Gluteo") (eq ?nombre_musc "Hombro") (eq ?nombre_musc "Abdominales")) then
					(insert$ ?lista_ejerc_martes 1 ?ejer)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				)
			)
		)
	)
	(assert (ejercicios_martes))
)


(defrule obtener_ejercicios_miercoles
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?programa))
	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
	(not (ejercicios_miercoles))
	=>
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?programa tiempo_diario))
	(bind $?lista_ejerc_miercoles)
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind ?tiempo_ejer (send ?ejer tiempo_max))
		(bind ?ejercita_musc (send ?ejer ejercita))
		(bind ?t (+ ?tiempo ?tiempo_ejer))
		(if (< ?t ?tiempo_disp) then
			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
				(bind ?musc (nth$ ?j ?ejercita_musc))
				(bind ?nombre_musc (send ?musc get-nombre))
				(if (or (eq ?nombre_musc "Espalda") (eq ?nombre_musc "Triceps")) then
					(insert$ ?lista_ejerc_miercoles 1 ?ejer)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				)
			)
		)
	)
	(assert (ejercicios_miercoles))
)

(defrule obtener_ejercicios_viernes
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?programa))
	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
	(not (ejercicios_viernes))
	=>
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?programa tiempo_diario))
	(bind $?lista_ejerc_viernes)
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind ?tiempo_ejer (send ?ejer tiempo_max))
		(bind ?ejercita_musc (send ?ejer ejercita))
		(bind ?t (+ ?tiempo ?tiempo_ejer))
		(if (< ?t ?tiempo_disp) then
			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
				(bind ?musc (nth$ ?j ?ejercita_musc))
				(bind ?nombre_musc (send ?musc get-nombre))
				(if (or (eq ?nombre_musc "Pecho") (eq ?nombre_musc "Biceps")) then
					(insert$ ?lista_ejerc_viernes 1 ?ejer)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				)
			)
		)
	)
	(assert (ejercicios_viernes))
)

(defrule obtener_ejercicios_sabado
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?programa))
	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
	(not (ejercicios_sabado))
	=>
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?programa tiempo_diario))
	(bind $?lista_ejerc_sabado)
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind ?tiempo_ejer (send ?ejer tiempo_max))
		(bind ?ejercita_musc (send ?ejer ejercita))
		(bind ?t (+ ?tiempo ?tiempo_ejer))
		(if (< ?t ?tiempo_disp) then
			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
				(bind ?musc (nth$ ?j ?ejercita_musc))
				(bind ?nombre_musc (send ?musc get-nombre))
				(if (or (eq ?nombre_musc "Gemelo") (eq ?nombre_musc "Biceps Femoral") (eq ?nombre_musc "Cuadriceps") (eq ?nombre_musc "Gluteo") (eq ?nombre_musc "Hombro") (eq ?nombre_musc "Abdominales")) then
					(insert$ ?lista_ejerc_sabado 1 ?ejer)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				)
			)
		)
	)
	(assert (ejercicios_sabado))
)


(defrule obtener_ejercicios_domingo
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?programa))
	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
	(not (ejercicios_domingo))
	=>
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?programa tiempo_diario))
	(bind $?lista_ejerc_domingo)
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind ?tiempo_ejer (send ?ejer tiempo_max))
		(bind ?ejercita_musc (send ?ejer ejercita))
		(bind ?t (+ ?tiempo ?tiempo_ejer))
		(if (< ?t ?tiempo_disp) then
			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
				(bind ?musc (nth$ ?j ?ejercita_musc))
				(bind ?nombre_musc (send ?musc get-nombre))
				(if (or (eq ?nombre_musc "Espalda") (eq ?nombre_musc "Triceps")) then
					(insert$ ?lista_ejerc_domingo 1 ?ejer)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				)
			)
		)
	)
	(assert (ejercicios_domingo))
)
