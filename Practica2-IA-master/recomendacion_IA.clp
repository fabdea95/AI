
;;; Prototipo de Sistema Experto para la recomendacion de programas Fitness
;;; Asignatura: Inteligencia Artificial - FIB - UPC
;;; Curso 2019/2020 1er Cuatrimestre

;;; ---Ontologia

; Mon May 18 20:32:51 CEST 2020
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot consumo_fruta
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sensacion_cansancio
;+		(comment "despues de realizar 10 minutos de ejercicio")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Intensidad_inicial
;+		(comment "intensidad inicial de ejercicio al que el usuario está acostumbrado")
		(type SYMBOL)
		(allowed-values baja media alta)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot cifosis
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_verduras
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot abuso_sal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad_max
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiene
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot desplazamiento_pie
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot descripcion
;+		(comment "detalle del ejercicio")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dolor_lumbar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dia_semana
;+		(comment "A que dia de la semana pertenece esa secuencia. Deben haber dias para descansar")
		(type SYMBOL)
		(allowed-values lunes martes miercoles jueves viernes sabado domingo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dolor_articular
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo_min
;+		(comment "tiempo en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lavar_platos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_ejercicio
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dolor_cervical
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_ob
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot compra_pie
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot num_calorias
;+		(comment "número de calorías estimadas a perder con el ejercicio")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot secuencia_descanso
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot combina_con
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ejercita
		(type INSTANCE)
;+		(allowed-classes Grupo_muscular)
		(create-accessor read-write))
	(single-slot KB_607616_Class27
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot IMC
;+		(comment "indice de masa corporal calculado")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tendinitis_hombro
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ontologia_Practica2_IA_Class10001
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot escoliosis
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiene_o
		(type INSTANCE)
;+		(allowed-classes Objetivo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot aparato
		(type SYMBOL)
		(allowed-values bicicleta_electrica footer pesas soga mancuerna cinta remo barra)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot paseos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dificultad_ejercicio
;+		(comment "referente a la dificultad de la persona para hacer ejercicio dependiendo de su salud")
		(type SYMBOL)
		(allowed-values alta media baja)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_h
		(type INSTANCE)
;+		(allowed-classes Habito)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot tiempo_max
;+		(comment "tiempo max en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_agua
		(type SYMBOL)
		(allowed-values muy_poco poco frecuente)
		(default frecuente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot kg_pesas
;+		(comment "kilogramos en las pesas")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot desplazamientos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad_min
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_recomendado
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot cocinar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lordosis
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_proteina
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot altura
;+		(comment "altura en centimetros")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot parte_de_2
		(type INSTANCE)
;+		(allowed-classes Secuencia)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot trote
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot parte_de_1
		(type INSTANCE)
;+		(allowed-classes Programa)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot parte_de_4
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dificultad
		(type SYMBOL)
		(allowed-values baja media alta)
		(default media)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot parte_de_3
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot presion_sanguinea_min
;+		(comment "los valores de la presion sanguinea estan dados en mmHg (milimetros de mercurio)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relativo_a
		(type INSTANCE)
;+		(allowed-classes Grupo_muscular)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot intensidad_inicial
;+		(comment "Nivel de Intensidad inicial de ejercicio al que el usuario está acostumbrado. Depende de sus habitos")
		(type SYMBOL)
		(allowed-values baja media alta)
		(default baja)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot puede_contraindicar
		(type INSTANCE)
;+		(allowed-classes Problema_salud)
		(create-accessor read-write))
	(single-slot lavar_ropa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot solicita
		(type INSTANCE)
;+		(allowed-classes Programa)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot repeticiones_max
;+		(comment "numero de repeticiones maximo del ejercicio")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot peso
;+		(comment "peso en kilogramos")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo
		(type SYMBOL)
		(allowed-values calentamiento intermedio enfriamiento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tareas_domesticas
;+		(comment "actividades como planchar, barrer, fregar, colada")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot planchar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion
;+		(comment "duracion aproximada en minutos del habito")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot malestar
		(type SYMBOL)
		(allowed-values escoliosis lordosis cifosis tendinitis_hombro dolor_articular cervical dolor_espalda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apoyo
;+		(comment "algún tipo de apoyo como una mesa, pared, el suelo mismo")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sentado
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_pesas
		(type SYMBOL)
		(allowed-values fijas ajustables kettlebell)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot frecuencia
		(type SYMBOL)
		(allowed-values ocasional frecuente pocas_veces)
		(default frecuente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ejercita2
		(type SYMBOL)
;+		(allowed-parents Grupo_muscular)
		(create-accessor read-write))
	(single-slot levantamiento_peso
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_carbohidratos
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PPM2
;+		(comment "pulsaciones por minuto despues un minuto de carrera sostenida")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PPM1
;+		(comment "pulsaciones por minuto en reposo")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot barrer
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot inverse_of_parte_de
		(type INSTANCE)
;+		(allowed-classes Secuencia)
		(create-accessor read-write))
	(single-slot paseo_mascota
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot esfuerzo_musc
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ontologia_Practica2_IA_Class0
		(type SYMBOL)
;+		(allowed-parents)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero
		(type SYMBOL)
		(allowed-values femenino masculino)
		(default masculino)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot descripcion_obj
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_gaseosa
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo_diario
;+		(comment "tiempo diario en minutos")
		(type INTEGER)
		(range 30 1400)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_picante
		(type SYMBOL)
		(allowed-values nunca_o_muy_poco frecuente mucho)
		(default nunca_o_muy_poco)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot presion_sanguinea_max
;+		(comment "los valores de la presion sanguinea estan dados en mmHg (milimetros de mercurio)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dolor_espalda
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot repeticiones_min
;+		(comment "numero de repeticiones minimas del ejercicio")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot consumo_grasa
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mov_repet
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot act_estaticas
;+		(comment "actividades como mirar television, lectura, chat, juegos en linea")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tirantez_muscular
;+		(comment "despues de realizar 10 minutos de ejercicio")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot de_pie
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona
	(is-a USER)
	(role concrete)
	(single-slot presion_sanguinea_min
;+		(comment "los valores de la presion sanguinea estan dados en mmHg (milimetros de mercurio)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_h
		(type INSTANCE)
;+		(allowed-classes Habito)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot sensacion_cansancio
;+		(comment "despues de realizar 10 minutos de ejercicio")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PPM2
;+		(comment "pulsaciones por minuto despues un minuto de carrera sostenida")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PPM1
;+		(comment "pulsaciones por minuto en reposo")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot presion_sanguinea_max
;+		(comment "los valores de la presion sanguinea estan dados en mmHg (milimetros de mercurio)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiene
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot IMC
;+		(comment "indice de masa corporal calculado")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot solicita
		(type INSTANCE)
;+		(allowed-classes Programa)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot altura
;+		(comment "altura en centimetros")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot peso
;+		(comment "peso en kilogramos")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tirantez_muscular
;+		(comment "despues de realizar 10 minutos de ejercicio")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero
		(type SYMBOL)
		(allowed-values femenino masculino)
		(default masculino)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Programa
	(is-a USER)
	(role concrete)
	(single-slot tiempo_diario
;+		(comment "tiempo diario en minutos")
		(type INTEGER)
		(range 30 1400)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiene_o
		(type INSTANCE)
;+		(allowed-classes Objetivo)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Ejercicio
	(is-a USER)
	(role concrete)
	(single-slot num_calorias
;+		(comment "número de calorías estimadas a perder con el ejercicio")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot combina_con
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo_max
;+		(comment "tiempo max en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo_min
;+		(comment "tiempo en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad_min
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_recomendado
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ejercita
		(type INSTANCE)
;+		(allowed-classes Grupo_muscular)
		(create-accessor read-write))
	(multislot puede_contraindicar
		(type INSTANCE)
;+		(allowed-classes Problema_salud)
		(create-accessor read-write))
	(single-slot edad_max
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_ejercicio
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot repeticiones_max
;+		(comment "numero de repeticiones maximo del ejercicio")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot descripcion
;+		(comment "detalle del ejercicio")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot repeticiones_min
;+		(comment "numero de repeticiones minimas del ejercicio")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot parte_de_2
		(type INSTANCE)
;+		(allowed-classes Secuencia)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_ob
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot dificultad
		(type SYMBOL)
		(allowed-values baja media alta)
		(default media)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot aparato
		(type SYMBOL)
		(allowed-values bicicleta_electrica footer pesas soga mancuerna cinta remo barra)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Aerobicos
	(is-a Ejercicio)
	(role concrete))

(defclass Fuerza_resistencia
	(is-a Ejercicio)
	(role concrete))

(defclass Suelo
	(is-a Ejercicio)
	(role concrete))

(defclass Estiramiento
	(is-a Ejercicio)
	(role concrete))

(defclass Precalentamiento
	(is-a Ejercicio)
	(role concrete))

(defclass Secuencia
	(is-a USER)
	(role concrete)
	(single-slot secuencia_descanso
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dia_semana
;+		(comment "A que dia de la semana pertenece esa secuencia. Deben haber dias para descansar")
		(type SYMBOL)
		(allowed-values lunes martes miercoles jueves viernes sabado domingo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot parte_de_1
		(type INSTANCE)
;+		(allowed-classes Programa)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Objetivo
	(is-a USER)
	(role concrete)
	(single-slot descripcion_obj
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Salud
	(is-a USER)
	(role concrete)
	(single-slot intensidad_inicial
;+		(comment "Nivel de Intensidad inicial de ejercicio al que el usuario está acostumbrado. Depende de sus habitos")
		(type SYMBOL)
		(allowed-values baja media alta)
		(default baja)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Habito
	(is-a USER)
	(role concrete)
	(single-slot duracion
;+		(comment "duracion aproximada en minutos del habito")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot frecuencia
		(type SYMBOL)
		(allowed-values ocasional frecuente pocas_veces)
		(default frecuente)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass En_Trabajo
	(is-a Habito)
	(role concrete)
	(single-slot esfuerzo_musc
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot desplazamiento_pie
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot levantamiento_peso
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sentado
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mov_repet
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot de_pie
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Fuera_Trabajo
	(is-a Habito)
	(role concrete)
	(single-slot tareas_domesticas
;+		(comment "actividades como planchar, barrer, fregar, colada")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot desplazamientos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot act_estaticas
;+		(comment "actividades como mirar television, lectura, chat, juegos en linea")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Dieta
	(is-a USER)
	(role concrete)
	(single-slot consumo_fruta
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_gaseosa
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_carbohidratos
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_proteina
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_agua
		(type SYMBOL)
		(allowed-values muy_poco poco frecuente)
		(default frecuente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_grasa
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_verduras
		(type SYMBOL)
		(allowed-values bajo normal elevado)
		(default normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo_picante
		(type SYMBOL)
		(allowed-values nunca_o_muy_poco frecuente mucho)
		(default nunca_o_muy_poco)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot parte_de_4
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot abuso_sal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Problema_salud
	(is-a USER)
	(role concrete)
	(single-slot relativo_a
		(type INSTANCE)
;+		(allowed-classes Grupo_muscular)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot malestar
		(type SYMBOL)
		(allowed-values escoliosis lordosis cifosis tendinitis_hombro dolor_articular cervical dolor_espalda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot parte_de_3
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Grupo_muscular
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					INSTANCIAS         		 		---------- 		DEL      --------------					PROGRAMA
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

(definstances instancies

; Mon May 18 20:32:51 CEST 2020
;
;+ (version "3.5")
;+ (build "Build 663")

([Ontologia_Practica2_IA_Class10000] of  Aerobicos

	(aparato cinta)
	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20012]
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Correr")
	(num_calorias 700)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class4])
	(tiempo_max 30)
	(tiempo_min 5)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20001]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20001] of  Objetivo

	(descripcion_obj "Perder peso"))

([Ontologia_Practica2_IA_Class20002] of  Objetivo

	(descripcion_obj "Aumentar masa muscular"))

([Ontologia_Practica2_IA_Class20003] of  Objetivo

	(descripcion_obj "Aumentar flexibilidad"))

([Ontologia_Practica2_IA_Class20004] of  Aerobicos

	(aparato bicicleta_electrica)
	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20016]
		[Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Bicicleata estatica")
	(num_calorias 500)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class6])
	(tiempo_max 30)
	(tiempo_min 5)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20001]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20005] of  Aerobicos

	(aparato bicicleta_electrica)
	(dificultad media)
	(ejercita
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Bicicleta eliptica")
	(num_calorias 650)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class6])
	(tiempo_max 30)
	(tiempo_min 5)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20001]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20006] of  Aerobicos

	(aparato remo)
	(dificultad alta)
	(ejercita
		[Ontologia_Practica2_IA_Class20012]
		[Ontologia_Practica2_IA_Class20007]
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20009]
		[Ontologia_Practica2_IA_Class20016]
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20010]
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Remo")
	(num_calorias 400)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class3])
	(tiempo_max 30)
	(tiempo_min 5)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20001]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20007] of  Grupo_muscular

	(nombre "Biceps"))

([Ontologia_Practica2_IA_Class20008] of  Grupo_muscular

	(nombre "Triceps"))

([Ontologia_Practica2_IA_Class20009] of  Grupo_muscular

	(nombre "Espalda"))

([Ontologia_Practica2_IA_Class20010] of  Grupo_muscular

	(nombre "Hombro"))

([Ontologia_Practica2_IA_Class20011] of  Grupo_muscular

	(nombre "Pecho"))

([Ontologia_Practica2_IA_Class20012] of  Grupo_muscular

	(nombre "Abdominales"))

([Ontologia_Practica2_IA_Class20013] of  Grupo_muscular

	(nombre "Gluteo"))

([Ontologia_Practica2_IA_Class20014] of  Grupo_muscular

	(nombre "Cuadriceps"))

([Ontologia_Practica2_IA_Class20015] of  Grupo_muscular

	(nombre "Biceps Femoral"))

([Ontologia_Practica2_IA_Class20016] of  Grupo_muscular

	(nombre "Gemelo"))

([Ontologia_Practica2_IA_Class20018] of  Aerobicos

	(aparato soga)
	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20007])
	(nombre_ejercicio "Curl de bíceps en polea baja")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class6])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20019] of  Fuerza_resistencia

	(aparato barra)
	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Tríceps en polea superior")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20020] of  Fuerza_resistencia

	(aparato soga)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Tríceps en polea superior")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20021] of  Fuerza_resistencia

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20011])
	(nombre_ejercicio "Maquina contractora")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20022] of  Aerobicos

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20011])
	(nombre_ejercicio "Cruce de poleas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20023] of  Fuerza_resistencia

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20012])
	(nombre_ejercicio "Crunch en maquina")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20024] of  Aerobicos

	(dificultad media)
	(ejercita
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "Peso muerto en polea baja")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20025] of  Aerobicos

	(dificultad media)
	(ejercita
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Extensiones de cadera en polea baja")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20026] of  Aerobicos

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20012])
	(nombre_ejercicio "Rueda abdominal")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class2])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20028] of  Objetivo

	(descripcion_obj "Definicion"))

([Ontologia_Practica2_IA_Class20029] of  Aerobicos

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Prensa de piernas")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20030] of  Aerobicos

	(dificultad media)
	(edad_min 5)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Extension de Cuadriceps")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20031] of  Aerobicos

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Extensiones de gemelo de pie en máquina")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20033] of  Aerobicos

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Máquina de press de hombros")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20034] of  Aerobicos

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Dominadas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(repeticiones_max 10)
	(repeticiones_min 3)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20035] of  Fuerza_resistencia

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Prensa de hombros con mancuerna")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20036] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Vuelos Laterales")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20037] of  Fuerza_resistencia

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20007])
	(nombre_ejercicio "Flexiones de biceps")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20038] of  Fuerza_resistencia

	(aparato barra)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20007])
	(nombre_ejercicio "Curl de biceps con barra Z")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20039] of  Fuerza_resistencia

	(aparato pesas)
	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Peso Muerto")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20040] of  Fuerza_resistencia

	(aparato pesas)
	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Hip Thrust")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20041] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Remo con mancuernas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20042] of  Fuerza_resistencia

	(aparato pesas)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Apertura de espalda")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20043] of  Fuerza_resistencia

	(aparato barra)
	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Elevacion de gemelos parado con barra")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20044] of  Fuerza_resistencia

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Elevacion de gemelos sentado")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20045] of  Fuerza_resistencia

	(aparato pesas)
	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "Zancadas adelante")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20046] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "sentadilla libre con mancuernas")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20047] of  Fuerza_resistencia

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20011])
	(nombre_ejercicio "Prensa de pecho en Banco")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20048] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20011])
	(nombre_ejercicio "Press de banca inclinado con mancuernas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20049] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Sentadillas con mancuernas")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20050] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Estocadas inversas con mancuernas")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 5)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20051] of  Fuerza_resistencia

	(aparato mancuerna)
	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Patada de Burro de Tríceps con mancuerna")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20052] of  Fuerza_resistencia

	(aparato pesas)
	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Extensiones de triceps (a dos brazos)")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20053] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20012])
	(nombre_ejercicio "Pose de la cobra")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(tiempo_max 3)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20054] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20012])
	(nombre_ejercicio "Curvas laterales de pie")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class6])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20055] of  Estiramiento

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Estiramiento de cadena de apertura")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20056] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Estiramiento de isquiotibiales con apoyo en lumbares")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20057] of  Precalentamiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Flexión de la pierna hacia atrás")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20058] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Flexion de cuadriceps sentado sobre los talones")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20059] of  Estiramiento

	(dificultad media)
	(edad_min 1)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Flexion de cuadriceps sentado sobre una pierna")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20060] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Flexion de cuadriceps con apoyo de la pierna")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20061] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "La \"concha\"")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20062] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Estiramiento del gato")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20063] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Elevación de pelvis")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class2])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20003]
		[Ontologia_Practica2_IA_Class20064]))

([Ontologia_Practica2_IA_Class20064] of  Objetivo

	(descripcion_obj "Aliviar dolor"))

([Ontologia_Practica2_IA_Class20065] of  Precalentamiento

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Estiramiento espinal")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20066] of  Precalentamiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Estiramiento de gemelos: contra la pared")
	(num_calorias 20)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20067] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Ejercicio de estiramiento de los gemelos: de puntillas")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20068] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "Estiramiento de gluteo con rodillo en posicion supina")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20069] of  Estiramiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "Estiramiento de gluteo acostado")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20070] of  Precalentamiento

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20011]
		[Ontologia_Practica2_IA_Class20007])
	(nombre_ejercicio "Estiramiento de bíceps braquial")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20071] of  Precalentamiento

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Estiramiento del músculo tríceps del brazo")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20072] of  Precalentamiento

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20008]
		[Ontologia_Practica2_IA_Class20007]
		[Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Estiramiento global de hombro y brazos")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20073] of  Estiramiento

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20007]
		[Ontologia_Practica2_IA_Class20011]
		[Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Apertura de brazos en una puerta")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20064]
		[Ontologia_Practica2_IA_Class20003]))

([Ontologia_Practica2_IA_Class20074] of  Suelo

	(dificultad alta)
	(ejercita
		[Ontologia_Practica2_IA_Class20007]
		[Ontologia_Practica2_IA_Class20008]
		[Ontologia_Practica2_IA_Class20010]
		[Ontologia_Practica2_IA_Class20012]
		[Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Mountain climbers")
	(num_calorias 100)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class4])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20001]))

([Ontologia_Practica2_IA_Class20075] of  Suelo

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20012]
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20016]
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Salto con elevación de rodillas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20001]))

([Ontologia_Practica2_IA_Class20076] of  Suelo

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20012]
		[Ontologia_Practica2_IA_Class20010]
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Jumpin Jack")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class3])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20001]))

([Ontologia_Practica2_IA_Class20078] of  Suelo

	(dificultad alta)
	(ejercita
		[Ontologia_Practica2_IA_Class20012]
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20015]
		[Ontologia_Practica2_IA_Class20016]
		[Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "Skipping en el sitio")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class4]
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20001]))

([Ontologia_Practica2_IA_Class20080] of  Suelo

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20012])
	(nombre_ejercicio "Plancha abdominal")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class6])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20081] of  Suelo

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20012])
	(nombre_ejercicio "Crunches tradicionales")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 25)
	(repeticiones_min 10)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20082] of  Suelo

	(dificultad media)
	(ejercita
		[Ontologia_Practica2_IA_Class20007]
		[Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Flexiones en V")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20083] of  Suelo

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Puente con piernas muy juntas")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20084] of  Suelo

	(dificultad media)
	(ejercita
		[Ontologia_Practica2_IA_Class20008]
		[Ontologia_Practica2_IA_Class20013])
	(nombre_ejercicio "Puente isométrico con una pierna")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20085] of  Suelo

	(dificultad alta)
	(ejercita
		[Ontologia_Practica2_IA_Class20013]
		[Ontologia_Practica2_IA_Class20015])
	(nombre_ejercicio "Peso muerto con una pierna")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20087] of  Suelo

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Sentadilla Isométrica")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20088] of  Suelo

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20014])
	(nombre_ejercicio "Sentadillas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class5]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20089] of  Suelo

	(dificultad media)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Puente invertido")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class1]
		[Ontologia_Practica2_IA_dea_Class0])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20090] of  Suelo

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20009])
	(nombre_ejercicio "Nadadores")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class2]
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class0]
		[Ontologia_Practica2_IA_dea_Class1])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20028]
		[Ontologia_Practica2_IA_Class20002]))

([Ontologia_Practica2_IA_Class20092] of  Suelo

	(dificultad alta)
	(ejercita
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Paseo del pato")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5])
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20093] of  Suelo

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20014]
		[Ontologia_Practica2_IA_Class20016])
	(nombre_ejercicio "Saltos en puntas de pie")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class6]
		[Ontologia_Practica2_IA_dea_Class5])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20094] of  Suelo

	(dificultad baja)
	(ejercita [Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Remo horizontal isométrico")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20095] of  Suelo

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Flexiones con agarre ancho")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20096] of  Suelo

	(dificultad media)
	(ejercita
		[Ontologia_Practica2_IA_Class20010]
		[Ontologia_Practica2_IA_Class20008]
		[Ontologia_Practica2_IA_Class20011])
	(nombre_ejercicio "Flexiones")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20097] of  Suelo

	(dificultad alta)
	(ejercita [Ontologia_Practica2_IA_Class20008])
	(nombre_ejercicio "Flexiones en diamante")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20098] of  Suelo

	(dificultad baja)
	(ejercita
		[Ontologia_Practica2_IA_Class20011]
		[Ontologia_Practica2_IA_Class20008]
		[Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Flexiones inclinadas")
	(num_calorias 50)
	(puede_contraindicar
		[Ontologia_Practica2_IA_dea_Class3]
		[Ontologia_Practica2_IA_dea_Class6])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_Class20099] of  Suelo

	(dificultad alta)
	(ejercita
		[Ontologia_Practica2_IA_Class20008]
		[Ontologia_Practica2_IA_Class20011]
		[Ontologia_Practica2_IA_Class20010])
	(nombre_ejercicio "Fondos")
	(num_calorias 50)
	(puede_contraindicar [Ontologia_Practica2_IA_dea_Class3])
	(repeticiones_max 15)
	(repeticiones_min 5)
	(tiempo_max 5)
	(tiempo_min 1)
	(tiene_ob
		[Ontologia_Practica2_IA_Class20002]
		[Ontologia_Practica2_IA_Class20028]))

([Ontologia_Practica2_IA_dea_Class0] of  Problema_salud

	(malestar escoliosis))

([Ontologia_Practica2_IA_dea_Class1] of  Problema_salud

	(malestar lordosis))

([Ontologia_Practica2_IA_dea_Class2] of  Problema_salud

	(malestar cifosis))

([Ontologia_Practica2_IA_dea_Class3] of  Problema_salud

	(malestar tendinitis_hombro))

([Ontologia_Practica2_IA_dea_Class4] of  Problema_salud

	(malestar cervical))

([Ontologia_Practica2_IA_dea_Class5] of  Problema_salud

	(malestar dolor_articular))

([Ontologia_Practica2_IA_dea_Class6] of  Problema_salud

	(malestar dolor_espalda))



)




;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 TEMPLATES					 		---------- 								TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------


;;; deftemplate para determinar el nivel de la presion sanguinea

(deftemplate presion_sanguinea
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot normal (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)


;;;;;;;;;;;;;;;;;; 	NIVEL RECOMENDADO DE EJERCICIO


;;; deftemplate para determinar la intensidad de ejercicio dependiendo de su genero, edad y pulsaciones por minuto

(deftemplate intensidad_Pulsaciones
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot media (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)

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

;;; deftemplate para almacenar la intensidad inicial dependiendo de su condicion actual (imc, sensaciones despues de correr, presion_sanguinea)

(deftemplate intensidad_Condicion
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot media (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)


;;;;;;;;;;;;; GENERAL

;;; deftemplate para almacenar la intensidad inicial recomendada resumiendo todos los factores anteriores

(deftemplate intensidad_CondGeneral
	(slot baja (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot media (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot alta (type SYMBOL)(allowed-values TRUE FALSE) (default FALSE))
)


;;;;;;;;;;;;;;;;;; 	PARA ALMACENAR LOS EJERCICIOS RECOMENDADOS

(deftemplate instancias_ejercicios
	(multislot inst_ej (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
	(slot cantidad (type INTEGER))
)

(deftemplate instancias_problema_sal
	(multislot inst_pr (type INSTANCE)(allowed-classes Problema_salud)(cardinality 1 ?VARIABLE))
	(slot cantidad (type INTEGER))
)

(deftemplate instancias_lunes
	(multislot inst_lun (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
	(slot cantidad (type INTEGER))
	)

(deftemplate instancias_martes
	(multislot inst_mart (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
	(slot cantidad (type INTEGER))
	)

(deftemplate instancias_miercoles
	(multislot inst_mierc (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
	(slot cantidad (type INTEGER))
	)

(deftemplate instancias_viernes
	(multislot inst_vier (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
	(slot cantidad (type INTEGER))
	)

(deftemplate instancias_sabado
		(multislot inst_sab (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
		(slot cantidad (type INTEGER))
	)

	(deftemplate instancias_domingo
			(multislot inst_dom (type INSTANCE)(allowed-classes Ejercicio)(cardinality 1 ?VARIABLE))
			(slot cantidad (type INTEGER))
	)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MENSAJES					 		---------- 								MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases, por ejemplo para imprimir el programa recomendado

(defmessage-handler Programa print_programa primary ()
	;;(printout t "--El programa se basará en una rutina de entrenamiento de " ?self:tiempo_diario " minutos diarios" crlf) )
	;;(send ?self:tiene_o print_objetivo)
)


(defmessage-handler Objetivo print_objetivo primary ()
	(printout t crlf)
	;;(printout t "--El programa tiene como objetivo principal: " ?self:descripcion_obj " " crlf) )
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES					 		---------- 								EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general
(deffunction pregunta-general (?pregunta)
	(format t "%s" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "Vuelva a ingresar un valor correcto, por favor [%d, %d] " ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta
(deffunction pregunta-lista (?pregunta $?valores_posibles)
	(format t "%s" ?pregunta)
	(bind ?resposta (readline))
	(bind ?res (str-explode ?resposta))
	?res
)

;;; Funcion para convertir respuestas de y/n a booleano
(deffunction str-to-bool (?resp)
	(bind ?igual (eq (str-compare (lowcase ?resp) "y") 0))
	?igual
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 MAIN					 		---------- 								MAIN
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se iniciara la introduccion de datos al sistema

(defmodule MAIN (export ?ALL))

(defrule comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "---------------------------------------------------------------------" crlf)
	(printout t "------ Sistema de Recomendacion de Programas Fitness de la FIB ------" crlf)
	(printout t "---------------------------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nuevo_cliente))
)

(defrule existe_persona "creamos la instancia para la nueva persona"
    (nuevo_cliente)
    =>

    ;;;creamos las instancias del programa
    (bind ?persona_nueva (make-instance (sym-cat personaInstancia- (gensym)) of Persona))

    (bind ?nombre (pregunta-general "Nombre: "))
    (send ?persona_nueva put-nombre ?nombre)
	(focus hacer_preguntas)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PREGUNTAS				 		---------- 							MODULO DE PREGUNTAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este se le haran las preguntas al nuevo cliente para obtener la informacion de su salud, habitos, ...

(defmodule hacer_preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)

;;,PONER COMO SLOT
(defrule info_personal "regla para saber la informacion personal del cliente"
	(nuevo_cliente)
	?persona_nueva <- (object (is-a Persona))
	=>
	(bind ?q (pregunta-general "Ingrese su edad:  "))
	(send ?persona_nueva put-edad ?q)

	(bind ?g (pregunta-general "Ingrese su genero [masculino (m), femenino (f)]:  "))
	(switch ?g
		(case "f" then (send ?persona_nueva put-genero femenino))
		(case "m" then (send ?persona_nueva put-genero masculino))
	)

	(if (< ?q 18) then (assert(Menor_edad))
	 else (
	 	if (and (>= ?q 18) (< ?q 30)) then (assert(Joven))
	 	else (
	 		if (and (>= ?q 30) (< ?q 45)) then (assert(Adulto))
	 		else (
	 			assert(Adulto_mayor)
	 		)
	 	)
	 )
	)


)


(defrule calc_IDM "calculo idm"
	(nuevo_cliente)
	?persona_nueva <- (object (is-a Persona))
	=>
	(bind ?p (pregunta-general "Ingrese su peso (kg):  "))
	(bind ?a1 (pregunta-general "Ingrese su altura (cm):  "))

	(bind ?a (/ ?a1 100))
	(bind ?idm (/ ?p (* ?a ?a)))

	(printout t  crlf)
	(printout t "-- Su Indice de Masa Corporal es:" ?idm "---" crlf)
	(printout t  crlf)

	(send ?persona_nueva put-peso ?p)
	(send ?persona_nueva put-altura ?a1)
	(send ?persona_nueva put-IMC ?idm)

	(if (< ?idm 18.5) then (assert(bajo_peso))
		else (
			if (and (> ?idm 18.4) (< ?idm 25)) then (assert(normopeso))
			else(
				if (and (> ?idm 24.9) (< ?idm 30)) then (assert(sobrepeso))
				else(
					if (> ?idm 29.9) then (assert(obeso))
				)
			)
		)
	)
)

(defrule presion "presion_sanguinea"
	(nuevo_cliente)
	?persona_nueva <- (object (is-a Persona))
	=>
	(bind ?pmin (pregunta-general "Ingrese su presion sanguinea minima (en mmHg): "))
	(bind ?pmax (pregunta-general "Ingrese su presion sanguinea maxima (en mmHg): "))
	(bind ?ppm1 (pregunta-general "Ingrese sus pulsaciones por minuto en estado de reposo (ppm1): "))

	(printout t  crlf)
	(printout t "------ SI PUEDE POR FAVOR REALICE UN MINUTO DE CARRERA SOSTENIDA ------" crlf)
	(printout t  crlf)

	(bind ?ppm2 (pregunta-general "Ingrese sus pulsaciones por minuto despues de correr (ppm2): "))
	(bind ?marea (pregunta-general "Siente sensacion de mareo o cansancio ahora? (y/n): "))
	(bind ?tir (pregunta-general "Siente tirantez muscular? (y/n): "))

	;;;almacenamos la informacion
	(send ?persona_nueva put-presion_sanguinea_min ?pmin)
	(send ?persona_nueva put-presion_sanguinea_max ?pmax)
	(send ?persona_nueva put-PPM1 ?ppm1)
	(send ?persona_nueva put-PPM2 ?ppm2)
	(send ?persona_nueva put-sensacion_cansancio (str-to-bool ?marea))
	(send ?persona_nueva put-tirantez_muscular (str-to-bool ?tir))
)



(defrule habitos "preguntas sobre habitos"
	(nuevo_cliente)
	?persona_nueva <- (object (is-a Persona))
	=>
	(printout t  crlf)
	(printout t "------ Informacion sobre habitos ------" crlf)
	(printout t "-------------------------------------" crlf)
	(printout t  crlf)

	;;;creamos las instancias
	(bind ?habito_en_trabajo (make-instance (sym-cat habitoInstancia- (gensym)) of En_Trabajo))
	(bind ?habito_fuera_trabajo (make-instance (sym-cat habitoInstancia- (gensym)) of Fuera_Trabajo))

	(bind ?trab (pregunta-general "Usted trabaja? (y/n):"))

	(if (str-to-bool ?trab) then

			(printout t "Cuales de las siguientes actividades realiza en su trabajo?" crlf)
			(printout t "1 - desplazamientos a pie" crlf)
			(printout t "2 - levantamiento de peso" crlf)
			(printout t "3 - actividad sentado" crlf)
			(printout t "4 - actividad de pie" crlf)
			(printout t "5 - movimentos repetitivos" crlf)
			(printout t "6 - esfuerzo muscular" crlf)

			(bind ?act_trab (pregunta-lista "Ingrese los numeros separados por espacios: "))
			(bind ?freq_trab (pregunta-lista "Con que frecuencia las realiza? [pocas_veces(p), ocasional(o), frecuente(f)]  "  ))
			(bind ?dur_trab (pregunta-general "Aproximadamente cuanto se demora en realizarlos? (en minutos) "))

			(assert (persona_trabaja))

			;;;guardamos su informacion
			(progn$ (?it ?act_trab)
				(if (eq ?it 1) then (send ?habito_en_trabajo put-esfuerzo_musc TRUE))
				(if (eq ?it 2) then (send ?habito_en_trabajo put-levantamiento_peso TRUE))
				(if (eq ?it 3) then (send ?habito_en_trabajo put-sentado TRUE))
				(if (eq ?it 4) then (send ?habito_en_trabajo put-de_pie TRUE))
				(if (eq ?it 5) then (send ?habito_en_trabajo put-mov_repet TRUE))
				(if (eq ?it 6) then (send ?habito_en_trabajo put-esfuerzo_musc TRUE))
			)

			(send ?habito_en_trabajo put-duracion ?dur_trab)
			(send ?habito_en_trabajo put-frecuencia ?freq_trab)
			;;(send ?persona_nueva put-tiene_h ?habito_en_trabajo)

		else
			(assert (persona_no_trabaja))

	)

	(printout t "Cuales de las siguentes actividades realiza fuera del trabajo?" crlf)
	(printout t "1 - actividades estaticas (television, lectura, chat, ...)" crlf)
	(printout t "2 - tareas domesticas (barrer, lavar, limpiar, cocinar, ...)" crlf)
	(printout t "3 - desplazamientos (paseos, trotar, paseo de mascotas, compra a pie, ...)" crlf)

	;;;$?valores_posibles <- (0 1 2 3 4 5)
	(bind ?act_fuera (pregunta-lista "Ingrese los numeros separados por espacios: (Ej: 1 3) "  ))
	(bind ?freq_trab (pregunta-lista "Con que frecuencia las realiza? [pocas_veces(p), ocasional(o), frecuente(f)] "  ))
 	(bind ?dur_trab (pregunta-general "Aproximadamente cuanto se demora en realizarlos? (en minutos) "))

 	;;;guardamos su informacion
			(progn$ (?it ?act_fuera)
				(if (eq ?it 1) then (send ?habito_fuera_trabajo put-act_estaticas TRUE))
				(if (eq ?it 2) then (send ?habito_fuera_trabajo put-tareas_domesticas TRUE))
				(if (eq ?it 3) then (send ?habito_fuera_trabajo put-desplazamientos TRUE))
			)

			(send ?habito_fuera_trabajo put-duracion ?dur_trab)
			(send ?habito_fuera_trabajo put-frecuencia ?freq_trab)
			(send ?persona_nueva put-tiene_h ?habito_fuera_trabajo)

	;;relacion Habitos y Persona

	(slot-insert$ ?persona_nueva tiene_h 1 ?habito_en_trabajo)
	(slot-insert$ ?persona_nueva tiene_h 2 ?habito_fuera_trabajo)

)

(defrule problemas_de_Salud "preguntas sobre problemas de salud"
	(nuevo_cliente)
	?persona_nueva <- (object (is-a Persona))
	=>
	(printout t  crlf)
	(printout t "------ Informacion sobre salud ------" crlf)
	(printout t "-------------------------------------" crlf)

	;;;creamos las instancias
	(bind ?problema_salud (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))

	(bind ?salud_persona (make-instance (sym-cat salud-Instancia- (gensym)) of Salud))

	(printout t "Usted sufre de algunos de estos problemas de salud?" crlf)
	(printout t "0 - ninguno" crlf)
	(printout t "1 - lordosis (curvadura en la zona lumbar)" crlf)
	(printout t "2 - dolor articular" crlf)
	(printout t "3 - cifosis (curvatura convexa en la zona superior de la espalda)" crlf)
	(printout t "4 - escoliosis (curvatura lateral en la zona superior de la espalda)" crlf)
	(printout t "5 - dolor lumbar" crlf)
	(printout t "6 - dolor cervical" crlf)
	(printout t "7 - dolor espalda" crlf)
	(printout t "8 - tendinitis en el hombro" crlf)

	(bind ?prob_salud (pregunta-lista "Ingrese los numeros separados por espacios: (Ej: 1 3) "))

	;;;guardamos su informacion
			(progn$ (?it ?prob_salud)
				(if (eq ?it 0) then (assert (Sin_problemas_salud))
					else
					(assert (Con_problemas_salud))
					(if (eq ?it 1) then
						(bind ?problema_salud1 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud1 put-malestar lordosis)
						(send ?problema_salud1 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 2) then
						(bind ?problema_salud2 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud2 put-malestar dolor_articular)
						(send ?problema_salud2 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 3) then
						(bind ?problema_salud3 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud3 put-malestar cifosis)
						(send ?problema_salud3 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 4) then
						(bind ?problema_salud4 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud4 put-malestar escoliosis)
						(send ?problema_salud4 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 5) then
						(bind ?problema_salud5 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud5 put-malestar dolor_lumbar)
						(send ?problema_salud5 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 6) then
						(bind ?problema_salud6 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud6 put-malestar dolor_cervical)
						(send ?problema_salud6 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 7) then
						(bind ?problema_salud7 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud7 put-malestar dolor_espalda)
						(send ?problema_salud7 put-parte_de_3 ?salud_persona)
					)
					(if (eq ?it 8) then
						(bind ?problema_salud8 (make-instance (sym-cat prob-salud-Instancia- (gensym)) of Problema_salud))
						(send ?problema_salud8 put-malestar tendinitis_hombro)
						(send ?problema_salud8 put-parte_de_3 ?salud_persona)
					)
				)
			)
	;;relacion parte de Salud

)

(defrule dieta "preguntas sobre dieta"
		(nuevo_cliente)
		?salud_persona <- (object (is-a Salud))
		=>
		(printout t  crlf)
		(printout t "------ Informacion sobre dieta ------" crlf)
		(printout t "-------------------------------------" crlf)

		;;;creamos las instancias
		(bind ?dieta_persona (make-instance (sym-cat dieta-Instancia- (gensym)) of Dieta))

		(bind ?fruta (pregunta-lista "Con que frecuencia consume fruta? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?verd (pregunta-lista "Con que frecuencia consume verdura? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?carb (pregunta-lista "Con que frecuencia consume carbohidratos? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?prot (pregunta-lista "Con que frecuencia consume proteinas? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?gras (pregunta-lista "Con que frecuencia consume grasas? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?pic (pregunta-lista "Con que frecuencia consume picante? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?agua (pregunta-lista "Con que frecuencia consume agua? [ muy poco (m), poco (p), frecuente (f))]: "  ))
		(bind ?gas (pregunta-lista "Con que frecuencia consume bebidas gaseosas? [ poca (p), normal (n), elevado (e)]: "  ))
		(bind ?sal (pregunta-general "Usted considera que abusa del consumo de sal? (y/n) "))

		;;;almacenamos la informacion

		(switch ?fruta
				(case "p" then (send ?dieta_persona put-consumo_fruta bajo))
				(case "n" then (send ?dieta_persona put-consumo_fruta normal))
				(case "e" then (send ?dieta_persona put-consumo_fruta elevado))
		)
		(switch ?verd
				(case "p" then (send ?dieta_persona put-consumo_verduras bajo))
				(case "n" then (send ?dieta_persona put-consumo_verduras normal))
				(case "e" then (send ?dieta_persona put-consumo_verduras elevado))
		)
		(switch ?carb
				(case "p" then (send ?dieta_persona put-consumo_carbohidratos bajo))
				(case "n" then (send ?dieta_persona put-consumo_carbohidratos normal))
				(case "e" then (send ?dieta_persona put-consumo_carbohidratos elevado))
		)
		(switch ?prot
				(case "p" then (send ?dieta_persona put-consumo_proteina bajo))
				(case "n" then (send ?dieta_persona put-consumo_proteina normal))
				(case "e" then (send ?dieta_persona put-consumo_proteina elevado))
		)
		(switch ?gras
				(case "p" then (send ?dieta_persona put-consumo_grasa bajo))
				(case "n" then (send ?dieta_persona put-consumo_grasa normal))
				(case "e" then (send ?dieta_persona put-consumo_grasa elevado))
		)
		(switch ?pic
				(case "p" then (send ?dieta_persona put-consumo_picante nunca_o_muy_poco))
				(case "n" then (send ?dieta_persona put-consumo_picante frecuente))
				(case "e" then (send ?dieta_persona put-consumo_picante mucho))
		)
		(switch ?gas
				(case "p" then (send ?dieta_persona put-consumo_gaseosa bajo))
				(case "n" then (send ?dieta_persona put-consumo_gaseosa normal))
				(case "e" then (send ?dieta_persona put-consumo_gaseosa elevado))
		)
		(switch ?agua
				(case "m" then (send ?dieta_persona put-consumo_agua muy_poco))
				(case "p" then (send ?dieta_persona put-consumo_agua poco))
				(case "f" then (send ?dieta_persona put-consumo_agua frecuente))
		)
		(if (str-to-bool ?sal) then (send ?dieta_persona put-abuso_sal TRUE))

		;;relacion parte de Salud
		(send ?dieta_persona put-parte_de_4 ?salud_persona)
)

(defrule objetivo "preguntas para establecer el objetivo"
		(nuevo_cliente)
		?persona_nueva <- (object (is-a Persona))
		=>
		(printout t  crlf)
		(printout t "------ OBJETIVO DEL PROGRAMA ------" crlf)
		(printout t "-------------------------------------" crlf)

		;;;creamos las instancias
		(bind ?objetivo_persona (make-instance (sym-cat objetivo-Instancia- (gensym)) of Objetivo))

		(printout t "Cual de los siguentes objetivos quiere lograr con el programa de entrenamiento?" crlf)
		(printout t "1 - aumento de masa muscular" crlf)
		(printout t "2 - bajar peso" crlf)
		(printout t "3 - alivio de dolor" crlf)
		(printout t "4 - flexibilidad" crlf)
		(printout t "5 - definicion" crlf)

		(bind ?objetivo (pregunta-numerica "Ingrese el valor: " 1 5 ))
		(bind ?tiempo (pregunta-numerica "Cuanto tiempo diario usted dispone para el entrenamiento? ( >30 minutos) " 30 1400))

		;;almacenamos la informacion

		(switch ?objetivo
				(case 1 then
					(send ?objetivo_persona put-descripcion_obj "Aumentar masa muscular")
					(assert (aumento_masa)))
				(case 2 then
					(send ?objetivo_persona put-descripcion_obj "Perder peso")
					(assert (bajar_peso)))
				(case 3 then
					(send ?objetivo_persona put-descripcion_obj "Aliviar dolor")
					(assert (alivio_dolor)))
				(case 4 then
					(send ?objetivo_persona put-descripcion_obj "Aumentar flexibilidad")
					(assert (flexibilidad)))
				(case 5 then
					(send ?objetivo_persona put-descripcion_obj "Definicion")
					(assert (definicion)))
		)


)

(defrule compilacionDeDatosPersona "compilamos todas las clases creadas y sus relaciones"
		(nuevo_cliente)
		?persona_nueva <- (object (is-a Persona))
		?objetivo_persona <- (object (is-a Objetivo))
		(not (relaciones_creadas))
		=>

		(bind ?programa_persona (make-instance (sym-cat programa-Instancia- (gensym)) of Programa))

		;;relacion programa objetivo
		(send ?programa_persona put-tiene_o ?objetivo_persona)

		;;relacion Programa y Persona
		(send ?persona_nueva put-solicita ?programa_persona)

		(printout t  crlf)
		(printout t "Su informacion ha sido recibida correctamente" crlf)
		(assert (relaciones_creadas))
)


(defrule finPreguntasAbstaccionDatos "regla para pasar al modulo siguiente"
      (nuevo_cliente)
      =>
	  (printout t crlf)
	  (printout t "Modulos: "crlf)
	  (printout t "Informacion de entrada almacenadas" crlf)
      (focus inferir_datos)
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
	(not (intensidad_Dieta))
	(not (intensidad_HabitosTrabajo))
	(not (intensidad_HabitosFuera))
	(not (intensidad_Condicion))
	(not (presion_sanguinea))
	(not (intensidad_Pulsaciones))
	(not (intensidad_CondGeneral))

	=>
	(assert (intensidad_Dieta))
	(assert (intensidad_HabitosTrabajo))
	(assert (intensidad_HabitosFuera))
	(assert (intensidad_Condicion))
	(assert (presion_sanguinea))
	(assert (intensidad_Pulsaciones))
	(assert (intensidad_CondGeneral))
)

(defrule Presion_sanguinea_alta "Regla para saber si la presion sanguinea es alta"
	(nuevo_cliente)
	(not (presion))
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?sen_cansancio) (presion_sanguinea_min ?pmin) (presion_sanguinea_max ?pmax))
	?presion_san <- (presion_sanguinea)
	(test (or (>= ?pmin 80) (>= ?pmax 120)))
	=>
	(modify ?presion_san (alta TRUE))
	(printout t "presion alta" crlf)
	(assert (presion))
)

(defrule Presion_sanguinea_baja "Regla para saber si la presion sanguinea es baja"
	(nuevo_cliente)
	(not (presion))
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?sen_cansancio) (presion_sanguinea_min ?pmin) (presion_sanguinea_max ?pmax))
	?presion_san <- (presion_sanguinea)
	(test (and (<= ?pmin 60) (<= ?pmax 90)))
	=>
	(modify ?presion_san (baja TRUE))
	(printout t "presion baja" crlf)
	(assert (presion))
)

(defrule Presion_sanguinea_normal "Regla para saber si la presion sanguinea es normal"
	(nuevo_cliente)
	(not (presion))
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?sen_cansancio) (presion_sanguinea_min ?pmin) (presion_sanguinea_max ?pmax))
	?presion_san <- (presion_sanguinea)
	(test (and (and (> ?pmin 60) (< ?pmin 80)) (and (> ?pmax 90) (< ?pmax 120))) )
	=>
	(modify ?presion_san (normal TRUE))
	(printout t "presion normal" crlf)
	(assert (presion))
)

(defrule Intensidad_inicial_dieta_baja1 "Regla para que la intensidad inicial de la dieta sea baja"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (abuso_sal ?sal))
	(test (eq ?sal TRUE))
	=>
	(modify ?int (baja TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)


(defrule Intensidad_inicial_dieta_baja2 "Regla para que la intensidad inicial de la dieta sea baja"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (consumo_agua ?agua)(consumo_carbohidratos ?carbo) (consumo_proteina ?prot))
	(test (or (eq ?agua muy_poco) (eq ?carbo bajo) (eq ?prot bajo)))
	=>
	(modify ?int (baja TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_baja3 "Regla para que la intensidad inicial de la dieta sea baja"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (consumo_grasa ?grasa))
	(test (eq ?grasa elevado))
	=>
	(modify ?int (baja TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_media1 "Regla para que la intensidad inicial de la dieta sea media"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (consumo_grasa ?grasa))
	(test (eq ?grasa normal))
	=>
	(modify ?int (media TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_media2 "Regla para que la intensidad inicial de la dieta sea media"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (consumo_agua ?agua)(consumo_carbohidratos ?carbo) (consumo_proteina ?prot))
	(test (or (eq ?agua poco) (eq ?carbo normal) (eq ?prot normal)))
	=>
	(modify ?int (media TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_alta1 "Regla para que la intensidad inicial de la dieta sea alta"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (consumo_grasa ?grasa))
	(test (eq ?grasa bajo))
	=>
	(modify ?int (alta TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_alta2 "Regla para que la intensidad inicial de la dieta sea alta"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	?d <- (object (is-a Dieta) (consumo_agua ?agua)(consumo_carbohidratos ?carbo) (consumo_proteina ?prot))
	(test (or (eq ?agua frecuente) (eq ?carbo elevado) (eq ?prot elevado)))
	=>
	(modify ?int (alta TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)

(defrule Intensidad_inicial_dieta_default "Regla para que la intensidad inicial de la dieta sea alta -- POR DEFECTO"
	(nuevo_cliente)
	(presion)
	(not (int_dieta))
	?int <- (intensidad_Dieta)
	=>
	(modify ?int (baja TRUE))
	(printout t "intensidad" crlf)
	(assert (int_dieta))
)


(defrule Intensidad_inicial_habitosTrabajo_baja1 "Regla para que la intensidad inicial de los habitos en el trabajo sea baja"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (sentado ?sent))
	(test (eq ?sent TRUE))
	=>
	(modify ?int_hab (baja TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_baja2 "Regla para que la intensidad inicial de los habitos en el trabajo sea baja"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (de_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab (baja TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_baja3 "Regla para que la intensidad inicial de los habitos en el trabajo sea baja"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (esfuerzo_musc ?mus) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?mus TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab (baja TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_media1 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (de_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec ocasional) (eq ?frec frecuente) (> ?dur 10)))
	=>
	(modify ?int_hab (media TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)


(defrule Intensidad_inicial_habitosTrabajo_media2 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (desplazamiento_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10) (< ?dur 20)))
	=>
	(modify ?int_hab (media TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)


(defrule Intensidad_inicial_habitosTrabajo_media3 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (esfuerzo_musc ?musc) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?musc TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10) (< ?dur 20)))
	=>
	(modify ?int_hab (media TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_media4 "Regla para que la intensidad inicial de los habitos en el trabajo sea media"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (levantamiento_peso ?peso) (mov_repet ?rep) (frecuencia ?frec) (duracion ?dur))
	(test (or (eq ?peso TRUE) (eq ?rep TRUE)))
	(test (or (eq ?frec ocasional) (eq ?frec pocas_veces) (< ?dur 20)))
	=>
	(modify ?int_hab (media TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_alta1 "Regla para que la intensidad inicial de los habitos en el trabajo sea alta"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (desplazamiento_pie ?pie) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?pie TRUE))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab (alta TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_alta2 "Regla para que la intensidad inicial de los habitos en el trabajo sea alta"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	?trab <- (object (is-a En_Trabajo) (esfuerzo_musc ?mus) (levantamiento_peso ?peso) (mov_repet ?rep) (frecuencia ?frec) (duracion ?dur))
	(test (or (eq ?mus  TRUE) (eq ?peso TRUE) (eq ?rep TRUE)))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab (alta TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosTrabajo_default "Regla para que la intensidad inicial de los habitos en el trabajo sea baja -- POR DEFECTO"
	(nuevo_cliente)
	(int_dieta)
	(not (int_habitosTrabajo))
	?int_hab <- (intensidad_HabitosTrabajo)
	=>
	(modify ?int_hab (baja TRUE))
	(printout t "h_trabajo" crlf)
	(assert (int_habitosTrabajo))
)

(defrule Intensidad_inicial_habitosFuera_baja1 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (act_estaticas ?est))
	(test (eq ?est TRUE))
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_baja2 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (desplazamientos ?desp) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?desp TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_baja3 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (tareas_domesticas ?tar) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?tar TRUE))
	(test (or (eq ?frec pocas_veces) (< ?dur 10)))
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_media1 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea media"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (desplazamientos ?desp) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?desp TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10) (< ?dur 20)))
	=>
	(modify ?int_hab_fuera (media TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_media2 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea media"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (tareas_domesticas ?tar) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?tar TRUE))
	(test (or (eq ?frec ocasional) (> ?dur 10)(< ?dur 20)))
	=>
	(modify ?int_hab_fuera (media TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_alta1 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea alta"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (desplazamientos ?desp) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?desp TRUE))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab_fuera (alta TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_alta2 "Regla para que la intensidad inicial de los habitos fuera del trabajo sea media"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	?casa <- (object (is-a Fuera_Trabajo) (tareas_domesticas ?tar) (frecuencia ?frec) (duracion ?dur))
	(test (eq ?tar TRUE))
	(test (or (eq ?frec frecuente) (> ?dur 20)))
	=>
	(modify ?int_hab_fuera (alta TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule Intensidad_inicial_habitosFuera_default "Regla para que la intensidad inicial de los habitos fuera del trabajo sea baja -- POR DEFECTO"
	(nuevo_cliente)
	(int_habitosTrabajo)
	(not (int_habitosFuera))
	?int_hab_fuera <- (intensidad_HabitosFuera)
	=>
	(modify ?int_hab_fuera (baja TRUE))
	(printout t "h_fuera" crlf)
	(assert (int_habitosFuera))
)

(defrule FrecuenciaMax_hombre "Regla para calcular la frecuencia maxima de una persona"
	(nuevo_cliente)
	(not (int_frec_max_h))
	?persona_nueva <- (object (is-a Persona) (edad ?edad) (genero ?genero))
	(test (eq (str-compare ?genero "masculino") 0))
	=>
	(printout t "frecuencia maxima hombre" crlf)
	(bind ?value (- 220 ?edad))
	(assert (frec_max  ?value))
	(assert (int_frec_max_h))
)

(defrule FrecuenciaMax_mujer "Regla para calcular la frecuencia maxima de una persona"
	(nuevo_cliente)
	(not (int_frec_max_m))
	?persona_nueva <- (object (is-a Persona) (edad ?edad) (genero ?genero))
	(test (eq (str-compare ?genero "masculino") 0))
	=>
	(printout t "frecuencia maxima mujer" crlf)
	(bind ?value (- 226 ?edad))
	(assert (frec_max  ?value))
	(assert (int_frec_max_m))
)

(defrule Intensidad_inicial_Pulsaciones1 "Regla para determinar la intensidad inicial segun pulsaciones es baja"
	(nuevo_cliente)
	(int_habitosFuera)
	(or (int_frec_max_m) (int_frec_max_h))
	(not (int_pulsacion))
	?int <- (intensidad_Pulsaciones)
	?persona_nueva <- (object (is-a Persona) (PPM1 ?ppm1) (PPM2 ?ppm2))
	(frec_max ?f_max)
	(test (>= ?ppm2 (+(/(*(- ?f_max ?ppm1) 70) 100) ?ppm1)))
	=>
	(printout t "pulsaciones" crlf)
	(modify ?int (baja TRUE))
	(assert (int_pulsacion))
)

(defrule Intensidad_inicial_Pulsaciones2 "Regla para determinar la intensidad inicial segun pulsaciones es media"
	(nuevo_cliente)
	(int_habitosFuera)
	(or (int_frec_max_m) (int_frec_max_h))
	(not (int_pulsacion))
	?int <- (intensidad_Pulsaciones)
	?persona_nueva <- (object (is-a Persona) (PPM1 ?ppm1) (PPM2 ?ppm2))
	(frec_max ?f_max)
	;;;(bind ?min (+(/(*(- ?f_max ?ppm1) 50) 100) ?ppm1))
	;;;(bind ?max (+(/(*(- ?f_max ?ppm1) 70) 100) ?ppm1))
	;;;(test (and (>= ppm2 ?min) (< ppm2 ?max)))

	(test (and (>= ?ppm2 (+(/(*(- ?f_max ?ppm1) 50) 100) ?ppm1)) (< ?ppm2 (+(/(*(- ?f_max ?ppm1) 70) 100) ?ppm1))))
	=>
	(printout t "pulsaciones" crlf)
	(modify ?int (media TRUE))
	(assert (int_pulsacion))
)

(defrule Intensidad_inicial_Pulsaciones3 "Regla para determinar la intensidad inicial segun pulsaciones es alta"
	(nuevo_cliente)
	(int_habitosFuera)
	(or (int_frec_max_m) (int_frec_max_h))
	(not (int_pulsacion))
	?int <- (intensidad_Pulsaciones)
	?persona_nueva <- (object (is-a Persona) (PPM1 ?ppm1) (PPM2 ?ppm2))
	(frec_max ?f_max)
	;;;(bind ?max (+(/(*(- ?f_max ?ppm1) 50) 100) ?ppm1))
	;;;(test (< ppm2 ?max))

	(test (< ?ppm2 (+(/(*(- ?f_max ?ppm1) 50) 100) ?ppm1)))
	=>
	(printout t "pulsaciones" crlf)
	(modify ?int (alta TRUE))
	(assert (int_pulsacion))
)

(defrule Intensidad_inicial_condicion1 "Regla para determinar la intensidad inicial segun algunas otras caracteristicas como sensacion, IMC, presion sanguinea"
	(nuevo_cliente)
	(int_pulsacion)
	(not (int_cond))
	?int <- (intensidad_Condicion)
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?cansancio) (tirantez_muscular ?tirantez))
	(normopeso)
	(presion_sanguinea (alta ?a) (normal ?n) (baja ?b))
	(test (and ?n (or ?cansancio ?tirantez) ))
	=>
	(printout t "condicion" crlf)
	(modify ?int (media TRUE))
	(assert (int_cond))
)

(defrule Intensidad_inicial_condicion2 "Regla para determinar la intensidad inicial segun algunas otras caracteristicas como sensacion, IMC, presion sanguinea"
	(nuevo_cliente)
	(int_pulsacion)
	(not (int_cond))
	?int <- (intensidad_Condicion)
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?cansancio) (tirantez_muscular ?tirantez))
	(test ( or sobrepeso obeso ) )
	(presion_sanguinea (alta ?a) (normal ?n) (baja ?b))
	(test (and ?n (and (not ?cansancio) (not ?tirantez) )))
	=>
	(printout t "condicion" crlf)
	(modify ?int (media TRUE))
	(assert (int_cond))
)

(defrule Intensidad_inicial_condicion3 "Regla para determinar la intensidad inicial segun algunas otras caracteristicas como sensacion, IMC, presion sanguinea"
	(nuevo_cliente)
	(int_pulsacion)
	(not (int_cond))
	?int <- (intensidad_Condicion)
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?cansancio) (tirantez_muscular ?tirantez))
	(test (or bajo_peso (or sobrepeso obeso)) )
	(presion_sanguinea (alta ?a) (normal ?n) (baja ?b))
	(test (and (or ?b ?a) (or ?cansancio ?tirantez )))
	=>
	(printout t "condicion" crlf)
	(modify ?int (baja TRUE))
	(assert (int_cond))
)

(defrule Intensidad_inicial_condicion4 "Regla para determinar la intensidad inicial segun algunas otras caracteristicas como sensacion, IMC, presion sanguinea"
	(nuevo_cliente)
	(int_pulsacion)
	(not (int_cond))
	?int <- (intensidad_Condicion)
	?persona_nueva <- (object (is-a Persona) (sensacion_cansancio ?cansancio) (tirantez_muscular ?tirantez))
	(normo_peso)
	(presion_sanguinea (alta ?a) (normal ?n) (baja ?b))
	(test (and ?n (and (not ?cansancio) (not ?tirantez) )))
	=>
	(printout t "condicion" crlf)
	(modify ?int (alta TRUE))
	(assert (int_cond))
)

(defrule Intensidad_inicial_condicion_default "Regla para determinar la intensidad inicial segun algunas otras caracteristicas como sensacion, IMC, presion sanguinea -- POR DEFECTO"
	(nuevo_cliente)
	(int_pulsacion)
	(not (int_cond))
	?int <- (intensidad_Condicion)
	=>
	(printout t "condicion" crlf)
	(modify ?int (baja TRUE))
	(assert (int_cond))
)

(defrule Intensidad_inicial_General1 "Regla para determinar la intensidad inicial comparando las situaciones anteriores"
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)

	(intensidad_Dieta (alta ?a_dieta) (media ?m_dieta) (baja ?b_dieta))
	(intensidad_HabitosTrabajo (alta ?a_trab) (media ?m_trab) (baja ?b_trab))
	(intensidad_HabitosFuera (alta ?a_fuera) (media ?m_fuera) (baja ?b_fuera))
	(intensidad_Pulsaciones (alta ?a_pulso) (media ?m_pulso) (baja ?b_pulso))
	(intensidad_Condicion (alta ?a_cond) (media ?m_cond) (baja ?b_cond))
	;(test (and (eq  ?a_cond TRUE )  (and (eq ?a_pulso TRUE) (and (eq ?a_fuera TRUE) (and (eq ?a_dieta TRUE) (eq ?a_trab TRUE))))))
	(test (and (eq ?m_dieta TRUE) (eq ?m_cond TRUE ) (neq ?b_pulso TRUE)))
	=>
	(printout t "general 1" crlf)

	(printout t  crlf)
	;(if (and (eq ?a_cond TRUE) (and (eq ?a_pulso TRUE) (and (eq ?a_fuera TRUE) (and (eq ?a_dieta TRUE) (eq ?a_trab TRUE)))) ) then
		(modify ?int (media TRUE))
		(assert (int_cond_gen))
	;	)

)

(defrule Intensidad_inicial_General2 "Regla para determinar la intensidad inicial comparando las situaciones anteriores"
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)

	(intensidad_Dieta (alta ?a_dieta) (media ?m_dieta) (baja ?b_dieta))
	(intensidad_HabitosTrabajo (alta ?a_trab) (media ?m_trab) (baja ?b_trab))
	(intensidad_HabitosFuera (alta ?a_fuera) (media ?m_fuera) (baja ?b_fuera))
	(intensidad_Pulsaciones (alta ?a_pulso) (media ?m_pulso) (baja ?b_pulso))
	(intensidad_Condicion (alta ?a_cond) (media ?m_cond) (baja ?b_cond))

  (test (and (eq ?b_cond TRUE ) (or (eq ?b_dieta TRUE) (eq ?b_trab TRUE) (eq ?b_fuera TRUE) (eq ?b_pulso TRUE) )))
	;(test (and (eq ?b_cond TRUE) (and (eq ?b_pulso TRUE) (and (eq ?b_fuera TRUE) (and (eq ?b_dieta TRUE) (eq ?b_trab TRUE))))))
	=>
	(printout t "general 2" crlf)
	;(if (and (eq ?b_cond TRUE) (and (eq ?b_pulso TRUE) (and (eq ?b_fuera TRUE) (and (eq ?b_dieta TRUE) (eq ?b_trab TRUE))))) then
		(modify ?int (baja TRUE))
		(assert (int_cond_gen))
	;)
)


(defrule Intensidad_inicial_General3 "Regla para determinar la intensidad inicial comparando las situaciones anteriores"
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)

	(intensidad_Dieta (alta ?a_dieta) (media ?m_dieta) (baja ?b_dieta))
	(intensidad_HabitosTrabajo (alta ?a_trab) (media ?m_trab) (baja ?b_trab))
	(intensidad_HabitosFuera (alta ?a_fuera) (media ?m_fuera) (baja ?b_fuera))
	(intensidad_Pulsaciones (alta ?a_pulso) (media ?m_pulso) (baja ?b_pulso))
	(intensidad_Condicion (alta ?a_cond) (media ?m_cond) (baja ?b_cond))


	(test (and (neq ?b_cond TRUE) (neq ?b_pulso TRUE) (neq ?b_dieta TRUE) (or (eq ?a_fuera TRUE) (eq ?a_trab TRUE))))
	=>
	(printout t "general 3" crlf)
	;(if (and (eq ?m_cond TRUE) (and (eq ?m_pulso TRUE) (and (eq ?m_fuera TRUE) (and (eq ?m_dieta TRUE) (eq ?m_trab TRUE))))) then
		(modify ?int (alta TRUE))
		(assert (int_cond_gen))
	;)
)

(defrule Intensidad_inicial_General4 "Regla para determinar la intensidad inicial comparando las situaciones anteriores"
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)

	(intensidad_Dieta (alta ?a_dieta) (media ?m_dieta) (baja ?b_dieta))
	(intensidad_HabitosTrabajo (alta ?a_trab) (media ?m_trab) (baja ?b_trab))
	(intensidad_HabitosFuera (alta ?a_fuera) (media ?m_fuera) (baja ?b_fuera))
	(intensidad_Pulsaciones (alta ?a_pulso) (media ?m_pulso) (baja ?b_pulso))
	(intensidad_Condicion (alta ?a_cond) (media ?m_cond) (baja ?b_cond))

	(test (and (and (and (or (eq ?b_dieta TRUE) (eq ?a_dieta TRUE)) (or (eq ?m_trab TRUE) (eq ?a_trab TRUE))) (or (eq ?m_fuera TRUE) (eq ?a_fuera TRUE)) ) (and (eq ?b_cond TRUE) (or (eq ?b_pulso TRUE) (eq ?m_pulso TRUE) ) )))
	=>
	(printout t "general 4" crlf)
	;(if (and (and (and (or (eq ?b_dieta TRUE) (eq ?a_dieta TRUE)) (or (eq ?m_trab TRUE) (eq ?a_trab TRUE))) (or (eq ?m_fuera TRUE) (eq ?a_fuera TRUE) )) (and (eq ?b_cond TRUE) (or (eq ?b_pulso TRUE) (eq ?m_pulso TRUE) ) )) then
		(modify ?int (baja TRUE))
		(assert (int_cond_gen))
	;)
)

(defrule Intensidad_inicial_General5 "Regla para determinar la intensidad inicial comparando las situaciones anteriores"
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)

	(intensidad_Dieta (alta ?a_dieta) (media ?m_dieta) (baja ?b_dieta))
	(intensidad_HabitosTrabajo (alta ?a_trab) (media ?m_trab) (baja ?b_trab))
	(intensidad_HabitosFuera (alta ?a_fuera) (media ?m_fuera) (baja ?b_fuera))
	(intensidad_Pulsaciones (alta ?a_pulso) (media ?m_pulso) (baja ?b_pulso))
	(intensidad_Condicion (alta ?a_cond) (media ?m_cond) (baja ?b_cond))

	;(test (and (and (and (eq ?m_dieta TRUE) (eq ?m_trab TRUE)) (eq ?m_fuera TRUE) ) (and (eq ?b_cond TRUE) (eq ?a_pulso TRUE) )))
	(test (and (eq ?b_cond FALSE) (eq ?b_fuera FALSE) (eq ?b_dieta FALSE)))
	=>
	(printout t "general 5" crlf)
	;(if (and (and (and (eq ?m_dieta TRUE) (eq ?m_trab TRUE)) (eq ?m_fuera TRUE) ) (and (eq ?b_cond TRUE) (eq ?a_pulso TRUE) )) then
		(modify ?int (media TRUE))
		(assert (int_cond_gen))
	;)
)

(defrule Intensidad_inicial_General6 "Regla para determinar la intensidad inicial comparando las situaciones anteriores"
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)

	(intensidad_Dieta (alta ?a_dieta) (media ?m_dieta) (baja ?b_dieta))
	(intensidad_HabitosTrabajo (alta ?a_trab) (media ?m_trab) (baja ?b_trab))
	(intensidad_HabitosFuera (alta ?a_fuera) (media ?m_fuera) (baja ?b_fuera))
	(intensidad_Pulsaciones (alta ?a_pulso) (media ?m_pulso) (baja ?b_pulso))
	(intensidad_Condicion (alta ?a_cond) (media ?m_cond) (baja ?b_cond))

	;(test (and (and (eq ?m_dieta TRUE) (or (eq ?a_trab TRUE) (eq ?a_fuera TRUE))) (and (eq ?a_cond TRUE) (eq ?m_pulso TRUE) )))
	(test (and (eq ?a_trab TRUE) (eq ?a_fuera TRUE) (eq ?b_pulso FALSE) (eq ?b_cond  FALSE)))
	;;;(test (and ?a_cond ?m_pulso ))
	=>
	(printout t "general 6" crlf)
	;(if (and (and (eq ?m_dieta TRUE) (or (eq ?a_trab TRUE) (eq ?a_fuera TRUE))) (and (eq ?a_cond TRUE) (eq ?m_pulso TRUE) )) then
		(modify ?int (alta TRUE))
		(assert (int_cond_gen))
	;)
)

(defrule Intensidad_inicial_General7 "Regla para determinar la intensidad inicial comparando las situaciones anteriores --POR DEFECTO"
	;(declare (salience -1))
	(nuevo_cliente)
	(int_cond)
	(not (int_cond_gen))
	?int <- (intensidad_CondGeneral)
	=>
	(printout t "general 7" crlf)
	(modify ?int (baja TRUE))
	(assert (int_cond_gen))
)

(defrule finInferenciaDatos "regla para pasar al modulo siguiente"
	(declare (salience -2))
      (nuevo_cliente)
      (int_cond_gen)
      =>
	  (printout t "Abstraccion de datos hecha " crlf)
     (focus modulo_inferencia_ejercicios)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  		MODULO DE INFERENCIA DE EJERCICIOS SEGUN OBJETIVO 		---------- 		MODULO DE INFERENCIA DE EJERCICIOS SEGUN OBJETIVO
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; En este modulo se hace la inferencia de los ejercicios a recomendar
;;; y se irán descartando si tienen restricciones

(defmodule modulo_inferencia_ejercicios
	(import MAIN ?ALL)
	(import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL)
	(export ?ALL)
)

;;; Obtener todos los ejercicios instanciados para poder descartar segun las restricciones

(defrule obtiene_ejercicios
	(nuevo_cliente)
	(not (instancias_ejercicios))
	=>
	(bind ?all_ejercicios_obj (assert (instancias_ejercicios)))
	(bind $?allEjer (find-all-instances ((?inst Ejercicio)) TRUE))
	(modify ?all_ejercicios_obj (inst_ej ?allEjer))
)

;;; Obtener todas las instancias de problema salud

(defrule obtiene_problema_sal
	(nuevo_cliente)
	(not (instancias_problema_sal))
	=>
	(bind ?all_probl_pers (assert (instancias_problema_sal)))
	(bind $?allInstProb (find-all-instances ((?inst Problema_salud)) TRUE))
	(modify ?all_probl_pers (inst_pr ?allInstProb))
	)

;;; Cambiamos a NO_RECOMENDADO los que no cumplen con objetivo ni con la dificultad

(defrule filtrado_Objetivo_intensidad
	(nuevo_cliente)
	?persona_nueva <- (object (is-a Persona) (solicita ?programa))
	?all_ejercicios_obj <- (instancias_ejercicios (inst_ej $?allEjer))
	?intGen <- (intensidad_CondGeneral (alta ?a) (media ?m) (baja ?b))
	(not (ejercicios_con_mismo_objetivo))
	=>
	(printout t "a: " ?a " m: " ?m " b: " ?b " " crlf)
	(if ?m then (bind ?intensidadInicial "media")
	else
		(if ?a then (bind ?intensidadInicial "alta")
		else (bind ?intensidadInicial "baja")
		)
	)

	(bind ?canti 0)
	(bind ?cantiElim 0)
	(bind ?inst_objetivo_prog (send ?programa get-tiene_o))
	(bind ?objetivo_prog (send ?inst_objetivo_prog get-descripcion_obj))

	(printout t crlf)
	(printout t " Datos del programa: " crlf)
	(printout t "----------------------------------------------------- " crlf)


	(printout t "objetivo programa: " ?objetivo_prog " " crlf)
	(printout t "intensidad recomendada: " ?intensidadInicial " " crlf)

	(printout t crlf)
	(printout t " Ejercicios eliminados por no satisfacer el objetivo ni dificultad del programa: " crlf)
	(printout t "----------------------------------------------------- " crlf)


	(bind ?mismoObjetivo FALSE)
	(bind ?mismaInt FALSE)

	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind $?obj_ejer (send ?ejer get-tiene_ob))
		(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
		(bind ?difiEj (send ?ejer get-dificultad))

		;;;comparamos el objetivo del ejercicio y del programa
		(progn$ (?j ?obj_ejer)
			(bind ?obj_desc_ejer (send (instance-address * ?j) get-descripcion_obj))
			(printout t "objetivo ejercicio: " ?obj_desc_ejer " " crlf)

			(if (eq(str-compare ?objetivo_prog ?obj_desc_ejer) 0) then
				(bind ?mismoObjetivo TRUE)
			)
		)

		(printout t "intensidad ejercicio: " ?difiEj " " crlf)

		;;;comparamos la intensidad recomendada
		(if (eq 0 (str-compare ?difiEj ?intensidadInicial)) then
			(bind ?mismaInt TRUE)
		)

		;;;filtramos ejercicio
		(if (and ?mismoObjetivo ?mismaInt) then
			(send (instance-address (nth$ ?i ?allEjer)) put-es_recomendado TRUE)
			(bind ?canti (+ ?canti 1))
		else (bind ?cantiElim (+ ?cantiElim 1))
		)

		(if (and (not ?mismoObjetivo) (not ?mismaInt)) then
			(printout t "Ejercicio: " ?nombreEj " ---NO OBJETIVO NO INTENSIDAD" crlf)
		else
			(if (and (not ?mismoObjetivo) ?mismaInt) then
				(printout t "Ejercicio: " ?nombreEj " ---NO OBJETIVO" crlf)
			else
				(if (and ?mismoObjetivo (not ?mismaInt)) then
					(printout t "Ejercicio: " ?nombreEj " ---NO INTENSIDAD" crlf)
				)
			)
		)

		(bind ?mismoObjetivo FALSE)
		(bind ?mismaInt FALSE)
	)

	(modify ?all_ejercicios_obj (cantidad ?canti))
	(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
	(assert (ejercicios_con_mismo_objetivo))
 )


;;; ------------ DEFRULE DESCARTAR EJERCICIOS CONTRAINDICADOS (FABIO):

;;; Descartar ejercicios con contraindicados para el usuario
(defrule descartarEjercicios_contraindicados
	(nuevo_cliente)
	(ejercicios_con_mismo_objetivo)
	?persona_nueva <- (object (is-a Persona) (tiene ?salud))
	?all_ejercicios_obj <- (instancias_ejercicios (inst_ej $?allEjer)(cantidad ?canti))
	?all_probl_pers <- (instancias_problema_sal (inst_pr $?allInstProb))
	(not (ejercicios_no_contr))
	=>

	(printout t crlf)
	(printout t " Ejercicios eliminados por ser contraindicados para problemas de salud: " crlf)
	(printout t "----------------------------------------------------- " crlf)

	(bind ?canti 0)
	(bind ?cantiElim 0)
	(bind ?no_probl TRUE)
	(loop-for-count (?j 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?j ?allEjer))
		(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
		(bind ?recomendado (send ?ejer get-es_recomendado))
		(bind ?inst_contr (send ?ejer get-puede_contraindicar))

		(printout t "Ejercicio: " ?nombreEj " " crlf)

		(if (neq ?inst_contr [nil]) then
			;;(bind ?puede_contr (send ?inst_contr get-malestar))

			;;(printout t "contraindica: " ?puede_contr " " crlf)

				(if ?recomendado then
					(loop-for-count (?k 1 (length$ ?allInstProb))
						(bind ?inst_probl (nth$ ?k ?allInstProb))
						(bind ?probl (send ?inst_probl get-malestar))

						(printout t " persona padece: " ?probl " " crlf)

						(loop-for-count (?m 1 (length$ ?inst_contr))
							(bind ?enf_contraindicado (nth$ ?k ?inst_contr))
							(bind ?malestar_contraind (send ?enf_contraindicado get-malestar))

							;;si alguna de las enfermedades contraindicadas al ejercicio es diferente al problema de la persona entonces no hay problema
							(if (and ?no_probl  (eq (str-compare ?malestar_contraind ?probl) 1) ) then
								(bind ?no_probl TRUE)
								(bind ?canti (+ ?canti 1))
							else
								(bind ?no_probl FALSE)
							)
						)
					)

					;;;si hay problema contraindicado entonces no recomendar ejercicio
					(if (not ?no_probl) then
						(send (instance-address (nth$ ?j ?allEjer)) put-es_recomendado FALSE)
						(printout t "Ejercicio: " ?nombreEj " --CONTRAINDICADO" crlf)
						(bind ?cantiElim (+ ?cantiElim 1))
					)

				)

		else
			(bind ?canti (+ ?canti 1))
		)

		(bind ?no_probl TRUE)
	)

    (modify ?all_ejercicios_obj (cantidad ?canti))
    (printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
	(assert (ejercicios_no_contr))
)

;;;Regla para obtener todos los ejercicios recomendados

;(defrule obtener_ejercicios_recomendados
;	(nuevo_cliente)
;	(not (programa))
;	;?inst <- (object (is-a Ejercicio) (es_recomendado ?es_rec))
;	=>
;
;	(bind $?ejerc_recomendados (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)) )
;	(assert (programa))
;)


(defrule obtiene_inst_lun
	(nuevo_cliente)
	(not (instancias_lunes))
	=>
	(bind ?all_ejer_lun (assert (instancias_lunes)))
	(bind $?allLun (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)))
	(modify ?all_ejer_lun (inst_lun ?allLun))

	)


;;;Regla para obtenerer los ejercicios del lunes

(defrule obtener_ejercicios_lunes
	(nuevo_cliente)
	?persona <- (object (is-a Persona) (solicita ?Programa))
	?all_ejer_reco <- (instancias_lunes (inst_lun $?allLun)(cantidad ?canti))

	(not (ejercicios_lunes))

	=>

	(printout t crlf)
	(printout t " Ejercicios eliminados por no ser compatibles con el lunes: " crlf)
	(printout t "----------------------------------------------------- " crlf)

	(bind ?canti 0)
	(bind ?cantiElim 0)
	(bind ?tiempo 0)
	(bind ?tiempo_disp (send ?Programa get-tiempo_diario))

	(loop-for-count (?i 1 (length$ ?allLun)) do
		(bind ?mismoDía FALSE)
		(bind ?ejer (nth ?i ?allLun))
		(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
		; bind recomendado ????
		(bind $?ejercita_musc (send ?ejer get-ejercita))
		(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
		(bind ?t (+ ?tiempo ?tiempo_ejer))


		(progn$ (?j ?ejercita_musc)
			(bind ?musc_desc_ejer (send (instance-address * ?j) get-nombre))

			;si ejercita biceps o pecho:
			(if (or (eq(str-compare "Biceps" ?musc_desc_ejer) 0) (eq(str-compare "Pecho" ?musc_desc_ejer) 0) ) then
				(bind ?mismoDía TRUE)
				(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
				;break
				)
		)

		(if (eq ?mismoDía FALSE) then
			;(slot-delete$ ?all_ejer_reco ?allLun ?i ?i)
			(if (instance-address (nth$ ?i ?allLun)) then
				(printout t "EJERCICIO: " ?nombreEj crlf)
				(printout t "musculo ejercitado: " ?musc_desc_ejer " " crlf)
					(send (instance-address (nth$ ?i ?allLun)) delete)
					(printout t "DELETED" crlf)
					(bind ?cantiElim (+ ?cantiElim 1) )
				)
		 )
  )
	(bind ?i 1)
	(while ?tiempo > ?tiempo_disp
			(bind ?ejer (nth ?i ?allLun))
			(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
			(send (instance-address (nth$ ?i ?allLun)) delete)
			(bind ?tiempo (- ?tiempo ?tiempo_ejer) )
			(bind ?i (+ ?i 1))
		)

	(modify ?all_ejer_reco (cantidad ?canti))
	(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
	(assert (ejercicios_lunes))
	)

	(defrule obtiene_inst_mart
		(nuevo_cliente)
		(not (instancias_martes))
		=>
		(bind ?all_ejer_mart (assert (instancias_martes)))
		(bind $?allMart (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)))
		(modify ?all_ejer_mart (inst_mart ?allMart))

		)


	;;;Regla para obtenerer los ejercicios del lunes

	(defrule obtener_ejercicios_martes
		(nuevo_cliente)
		?persona <- (object (is-a Persona) (solicita ?Programa))
		?all_ejer_reco <- (instancias_martes (inst_mart $?allMart)(cantidad ?canti))

		(not (ejercicios_martes))

		=>

		(printout t crlf)
		(printout t " Ejercicios eliminados por no ser compatibles con el lunes: " crlf)
		(printout t "----------------------------------------------------- " crlf)

		(bind ?canti 0)
		(bind ?cantiElim 0)
		(bind ?tiempo 0)
		(bind ?tiempo_disp (send ?Programa get-tiempo_diario))

		(loop-for-count (?i 1 (length$ ?allMart)) do
			(bind ?mismoDía FALSE)
			(bind ?ejer (nth ?i ?allMart))
			(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
			; bind recomendado ????
			(bind $?ejercita_musc (send ?ejer get-ejercita))
			(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
			(bind ?t (+ ?tiempo ?tiempo_ejer))


			(progn$ (?j ?ejercita_musc)
				(bind ?musc_desc_ejer (send (instance-address * ?j) get-nombre))

				;si ejercita biceps o pecho:
				(if (or (eq(str-compare "Biceps Femoral" ?musc_desc_ejer) 0) (eq(str-compare "Cuadriceps" ?musc_desc_ejer) 0)
				(eq(str-compare "Hombro" ?musc_desc_ejer) 0) (eq(str-compare "Abdominales" ?musc_desc_ejer) 0)) then
					(bind ?mismoDía TRUE)
					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
					;break
					)
			)

			(if (eq ?mismoDía FALSE) then
				;(slot-delete$ ?all_ejer_reco ?allMart ?i ?i)
				(if (instance-address (nth$ ?i ?allMart)) then
					(printout t "EJERCICIO: " ?nombreEj crlf)
					(printout t "musculo ejercitado: " ?musc_desc_ejer " " crlf)
						(send (instance-address (nth$ ?i ?allMart)) delete)
						(printout t "DELETED" crlf)
						(bind ?cantiElim (+ ?cantiElim 1) )
					)
			 )
		)
		(bind ?i 1)
		(while ?tiempo > ?tiempo_disp
				(bind ?ejer (nth ?i ?allMart))
				(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
				(send (instance-address (nth$ ?i ?allMart)) delete)
				(bind ?tiempo (- ?tiempo ?tiempo_ejer) )
				(bind ?i (+ ?i 1))
			)

		(modify ?all_ejer_reco (cantidad ?canti))
		(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
		(assert (ejercicios_martes))
		)








		(defrule obtiene_inst_mierc
			(nuevo_cliente)
			(not (instancias_miercoles))
			=>
			(bind ?all_ejer_mierc (assert (instancias_miercoles)))
			(bind $?allMierc (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)))
			(modify ?all_ejer_mierc (inst_mierc ?allMierc))

			)


		;;;Regla para obtenerer los ejercicios del lunes

		(defrule obtener_ejercicios_miercoles
			(nuevo_cliente)
			?persona <- (object (is-a Persona) (solicita ?Programa))
			?all_ejer_reco <- (instancias_miercoles (inst_mierc $?allMierc)(cantidad ?canti))

			(not (ejercicios_miercoles))

			=>

			(printout t crlf)
			(printout t " Ejercicios eliminados por no ser compatibles con el lunes: " crlf)
			(printout t "----------------------------------------------------- " crlf)

			(bind ?canti 0)
			(bind ?cantiElim 0)
			(bind ?tiempo 0)
			(bind ?tiempo_disp (send ?Programa get-tiempo_diario))

			(loop-for-count (?i 1 (length$ ?allMierc)) do
				(bind ?mismoDía FALSE)
				(bind ?ejer (nth ?i ?allMierc))
				(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
				; bind recomendado ????
				(bind $?ejercita_musc (send ?ejer get-ejercita))
				(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
				(bind ?t (+ ?tiempo ?tiempo_ejer))


				(progn$ (?j ?ejercita_musc)
					(bind ?musc_desc_ejer (send (instance-address * ?j) get-nombre))

					;si ejercita biceps o pecho:
					(if (or (eq(str-compare "Triceps" ?musc_desc_ejer) 0) (eq(str-compare "Espalda" ?musc_desc_ejer) 0) ) then
						(bind ?mismoDía TRUE)
						(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
						;break
						)
				)

				(if (eq ?mismoDía FALSE) then
					;(slot-delete$ ?all_ejer_reco ?allMierc ?i ?i)
					(if (instance-address (nth$ ?i ?allMierc)) then
						(printout t "EJERCICIO: " ?nombreEj crlf)
						(printout t "musculo ejercitado: " ?musc_desc_ejer " " crlf)
							(send (instance-address (nth$ ?i ?allMierc)) delete)
							(printout t "DELETED" crlf)
							(bind ?cantiElim (+ ?cantiElim 1) )
						)
				 )
			)
			(bind ?i 1)
			(while ?tiempo > ?tiempo_disp
					(bind ?ejer (nth ?i ?allMierc))
					(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
					(send (instance-address (nth$ ?i ?allMierc)) delete)
					(bind ?tiempo (- ?tiempo ?tiempo_ejer) )
					(bind ?i (+ ?i 1))
				)

			(modify ?all_ejer_reco (cantidad ?canti))
			(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
			(assert (ejercicios_miercoles))
			)






			(defrule obtiene_inst_vier
				(nuevo_cliente)
				(not (instancias_viernes))
				=>
				(bind ?all_ejer_vier (assert (instancias_viernes)))
				(bind $?allVier (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)))
				(modify ?all_ejer_vier (inst_vier ?allVier))

				)

				(defrule obtener_ejercicios_viernes
					(nuevo_cliente)
					?persona <- (object (is-a Persona) (solicita ?Programa))
					?all_ejer_reco <- (instancias_viernes (inst_vier $?allVier)(cantidad ?canti))

					(not (ejercicios_viernes))

					=>

					(printout t crlf)
					(printout t " Ejercicios eliminados por no ser compatibles con el lunes: " crlf)
					(printout t "----------------------------------------------------- " crlf)

					(bind ?canti 0)
					(bind ?cantiElim 0)
					(bind ?tiempo 0)
					(bind ?tiempo_disp (send ?Programa get-tiempo_diario))

					(loop-for-count (?i 1 (length$ ?allVier)) do
						(bind ?mismoDía FALSE)
						(bind ?ejer (nth ?i ?allVier))
						(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
						; bind recomendado ????
						(bind $?ejercita_musc (send ?ejer get-ejercita))
						(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
						(bind ?t (+ ?tiempo ?tiempo_ejer))


						(progn$ (?j ?ejercita_musc)
							(bind ?musc_desc_ejer (send (instance-address * ?j) get-nombre))

							;si ejercita biceps o pecho:
							(if (or (eq(str-compare "Biceps" ?musc_desc_ejer) 0) (eq(str-compare "Pecho" ?musc_desc_ejer) 0) ) then
								(bind ?mismoDía TRUE)
								(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
								;break
								)
						)

						(if (eq ?mismoDía FALSE) then
							;(slot-delete$ ?all_ejer_reco ?allMierc ?i ?i)
							(if (instance-address (nth$ ?i ?allVier)) then
								(printout t "EJERCICIO: " ?nombreEj crlf)
								(printout t "musculo ejercitado: " ?musc_desc_ejer " " crlf)
									(send (instance-address (nth$ ?i ?allVier)) delete)
									(printout t "DELETED" crlf)
									(bind ?cantiElim (+ ?cantiElim 1) )
								)
						 )
					)
					(bind ?i 1)
					(while ?tiempo > ?tiempo_disp
							(bind ?ejer (nth ?i ?allVier))
							(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
							(send (instance-address (nth$ ?i ?allVier)) delete)
							(bind ?tiempo (- ?tiempo ?tiempo_ejer) )
							(bind ?i (+ ?i 1))
						)

					(modify ?all_ejer_reco (cantidad ?canti))
					(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
					(assert (ejercicios_viernes))
					)


					(defrule obtiene_inst_sab
						(nuevo_cliente)
						(not (instancias_sabado))
						=>
						(bind ?all_ejer_sab (assert (instancias_sabado)))
						(bind $?allSab (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)))
						(modify ?all_ejer_sab (inst_sab ?allSab))

						)

						(defrule obtener_ejercicios_sabado
							(nuevo_cliente)
							?persona <- (object (is-a Persona) (solicita ?Programa))
							?all_ejer_reco <- (instancias_sabado (inst_sab $?allSab)(cantidad ?canti))

							(not (ejercicios_sabado))

							=>

							(printout t crlf)
							(printout t " Ejercicios eliminados por no ser compatibles con el lunes: " crlf)
							(printout t "----------------------------------------------------- " crlf)

							(bind ?canti 0)
							(bind ?cantiElim 0)
							(bind ?tiempo 0)
							(bind ?tiempo_disp (send ?Programa get-tiempo_diario))

							(loop-for-count (?i 1 (length$ ?allSab)) do
								(bind ?mismoDía FALSE)
								(bind ?ejer (nth ?i ?allSab))
								(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
								; bind recomendado ????
								(bind $?ejercita_musc (send ?ejer get-ejercita))
								(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
								(bind ?t (+ ?tiempo ?tiempo_ejer))


								(progn$ (?j ?ejercita_musc)
									(bind ?musc_desc_ejer (send (instance-address * ?j) get-nombre))

									;si ejercita biceps o pecho:
									(if (or (eq(str-compare "Biceps Femoral" ?musc_desc_ejer) 0) (eq(str-compare "Cuadriceps" ?musc_desc_ejer) 0)
									(eq(str-compare "Hombro" ?musc_desc_ejer) 0) (eq(str-compare "Abdominales" ?musc_desc_ejer) 0) ) then
										(bind ?mismoDía TRUE)
										(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
										;break
										)
								)

								(if (eq ?mismoDía FALSE) then
									;(slot-delete$ ?all_ejer_reco ?allMierc ?i ?i)
									(if (instance-address (nth$ ?i ?allSab)) then
										(printout t "EJERCICIO: " ?nombreEj crlf)
										(printout t "musculo ejercitado: " ?musc_desc_ejer " " crlf)
											(send (instance-address (nth$ ?i ?allSab)) delete)
											(printout t "DELETED" crlf)
											(bind ?cantiElim (+ ?cantiElim 1) )
										)
								 )
							)
							(bind ?i 1)
							(while ?tiempo > ?tiempo_disp
									(bind ?ejer (nth ?i ?allSab))
									(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
									(send (instance-address (nth$ ?i ?allSab)) delete)
									(bind ?tiempo (- ?tiempo ?tiempo_ejer) )
									(bind ?i (+ ?i 1))
								)

							(modify ?all_ejer_reco (cantidad ?canti))
							(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
							(assert (ejercicios_sabado))
							)





							(defrule obtiene_inst_dom
								(nuevo_cliente)
								(not (instancias_domingo))
								=>
								(bind ?all_ejer_dom (assert (instancias_domingo)))
								(bind $?allDom (find-all-instances ((?inst Ejercicio)) (eq ?inst:es_recomendado TRUE)))
								(modify ?all_ejer_dom (inst_dom ?allDom))

								)

								(defrule obtener_ejercicios_domingo
									(nuevo_cliente)
									?persona <- (object (is-a Persona) (solicita ?Programa))
									?all_ejer_reco <- (instancias_domingo (inst_dom $?allDom)(cantidad ?canti))

									(not (ejercicios_domingo))

									=>

									(printout t crlf)
									(printout t " Ejercicios eliminados por no ser compatibles con el lunes: " crlf)
									(printout t "----------------------------------------------------- " crlf)

									(bind ?canti 0)
									(bind ?cantiElim 0)
									(bind ?tiempo 0)
									(bind ?tiempo_disp (send ?Programa get-tiempo_diario))

									(loop-for-count (?i 1 (length$ ?allDom)) do
										(bind ?mismoDía FALSE)
										(bind ?ejer (nth ?i ?allDom))
										(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
										; bind recomendado ????
										(bind $?ejercita_musc (send ?ejer get-ejercita))
										(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
										(bind ?t (+ ?tiempo ?tiempo_ejer))


										(progn$ (?j ?ejercita_musc)
											(bind ?musc_desc_ejer (send (instance-address * ?j) get-nombre))

											;si ejercita biceps o pecho:
											(if (or (eq(str-compare "Triceps" ?musc_desc_ejer) 0) (eq(str-compare "Espalda" ?musc_desc_ejer) 0) ) then
												(bind ?mismoDía TRUE)
												(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
												;break
												)
										)

										(if (eq ?mismoDía FALSE) then
											;(slot-delete$ ?all_ejer_reco ?allMierc ?i ?i)
											(if (instance-address (nth$ ?i ?allDom)) then
												(printout t "EJERCICIO: " ?nombreEj crlf)
												(printout t "musculo ejercitado: " ?musc_desc_ejer " " crlf)
													(send (instance-address (nth$ ?i ?allDom)) delete)
													(printout t "DELETED" crlf)
													(bind ?cantiElim (+ ?cantiElim 1) )
												)
										 )
									)
									(bind ?i 1)
									(while ?tiempo > ?tiempo_disp
											(bind ?ejer (nth ?i ?allDom))
											(bind ?tiempo_ejer (send ?ejer get-tiempo_max))
											(send (instance-address (nth$ ?i ?allDom)) delete)
											(bind ?tiempo (- ?tiempo ?tiempo_ejer) )
											(bind ?i (+ ?i 1))
										)

									(modify ?all_ejer_reco (cantidad ?canti))
									(printout t "N Eliminados en este modulo: " ?cantiElim " " crlf)
									(assert (ejercicios_domingo))
									)
;(defrule obtener_ejercicios_lunes
;	(nuevo_cliente)
;	?persona <- (object (is-a Persona) (solicita ?programa))
;	?all_ejer_reco <- (instancias_ejercicios (inst_ej $?allEjer))
;	(not (ejercicios_lunes))
;	=>
;	(bind ?tiempo 0)
;	(bind ?tiempo_disp (send ?programa tiempo_diario))
;	(bind $?lista_ejerc_lunes )
;	(loop-for-count (?i 1 (length$ ?allEjer)) do
;		(bind ?ejer (nth$ ?i ?allEjer))
;		(bind ?tiempo_ejer (send ?ejer tiempo_max))
;		(bind ?ejercita_musc (send ?ejer ejercita))
;		(bind ?t (+ ?tiempo ?tiempo_ejer))
;		(if (< ?t ?tiempo_disp) then
;			(loop-for-count (?j 1 (length$ ?ejercita_musc)) do
;				(bind ?musc (nth$ ?j ?ejercita_musc))
;				(bind ?nombre_musc (send ?musc get-nombre))
;				(if (or (eq ?nombre_musc "Biceps") (eq ?nombre_musc "Pecho")) then
;					(insert$ ?lista_ejerc_lunes 1 ?ejer)
;					(bind ?tiempo (+ ?tiempo ?tiempo_ejer))
;				)
;			)
;		)
;	)
;	(assert (ejercicios_lunes))
;)

(defrule ImprimirEjercicios
	(declare (salience -1))
	(nuevo_cliente)
	(not (EjerciciosPantalla))
	?all_ejercicios_obj <- (instancias_ejercicios (inst_ej $?allEjer))
	=>
	(printout t " " crlf)
	(printout t " Resumen de Ejercicios: " crlf)
	(printout t "----------------------------------------------------- " crlf)

	(bind ?canti 0)
	(loop-for-count (?i 1 (length$ ?allEjer)) do
		(bind ?ejer (nth$ ?i ?allEjer))
		(bind $?obj_ejer (send ?ejer get-tiene_ob))
		(bind ?nombreEj (send ?ejer get-nombre_ejercicio))
		(bind ?difiEj (send ?ejer get-dificultad))
		(bind ?recomendado (send ?ejer get-es_recomendado))

		(printout t "nombre ejercicio: " ?nombreEj " " crlf)

		(progn$ (?j ?obj_ejer)
			(bind ?obj_desc_ejer (send (instance-address * ?j) get-descripcion_obj))
			(printout t "objetivo ejercicio: " ?obj_desc_ejer " " crlf)
		)

		(printout t "intensidad ejercicio: " ?difiEj " " crlf)
		(printout t "es recomendado: " ?recomendado " " crlf)

		(if ?recomendado then
			(bind ?canti (+ ?canti 1))
		)
	)

	(printout t "Cantidad recomendados: " ?canti " " crlf)

	(assert (EjerciciosPantalla))
)


(defrule finInferenciaEjercicios "regla para pasar al modulo siguiente"
	(declare (salience -2))
      (nuevo_cliente)
      =>
      (printout t crlf)
	  (printout t "Inferencia de ejercicios hecha " crlf)
	  (assert (FIN))
)


;;; En este modulo se hace la inferencia del programa

(defmodule modulo_inferencia_programa
	(import MAIN ?ALL)
	(import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL)
	(import modulo_inferencia_ejercicios ?ALL)
	(export ?ALL)
)
