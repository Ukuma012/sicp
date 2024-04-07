#lang sicp
(define (same-parity . items)
  (define (parity i) (remainder (car i) 2))
  (define (same-parity-rec i p)
    (if (null? i)
      i
      (if (= (parity i) p)
        (cons (car i) (same-parity-rec (cdr i) p))
        (same-parity-rec (cdr i) p))))
  (same-parity-rec items (parity items)))