#lang sicp

(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? n) (= (remainder n 2) 0))

(define (fast-times a b)
  (fast-times-iter 0 a b))

(define (fast-times-iter n a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-times-iter n (double a) (halve b)))
        (else (fast-times-iter (+ n a) a (- b 1)))))
         
        
