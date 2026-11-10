
#lang racket

; Suponga que el banco paga 3.5% para depósitos menores o iguales a $40,000, 
;4% para depósitos menores o iguales a $260,000 y 
; 4.5% para depósitos mayores a $260,000. 
; Escriba una función que reciba un depósito y devuelva el interés asignado al depósito.

(define (interes deposito)
  (if (<= deposito 40000)
      (* deposito 0.035)
      (if (<= deposito 260000)
          (* deposito 0.04)
          (* deposito 0.045)
      )
  )
)

(displayln (interes 500000)) 
