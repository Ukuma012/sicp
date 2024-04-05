#lang sicp
(define (cont-frac n d k)
  (define (recur i)
    (if (= k i)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (recur (+ 1 i))))))
  (recur 1))

(define (euler k)
  (cont-frac (lambda (i) 1.0)
             (