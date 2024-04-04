#lang sicp
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? n) (= (remainder n 2) 0))

(define (fast-multi a n)
  (cond ((n = 0) 0)
        ((even? n) double (fast-multi a (halve n)))
        (else (+ a (fast-multi a (- n 1))))))
