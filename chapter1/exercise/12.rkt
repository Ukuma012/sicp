#lang sicp
(define (pascal n i)
  (cond ((= i n) 1)
        ((= 0 i) 1)
        (+ (pascal (- i 1) (- n 1)) (pascal i (- n 1)))))

(pascal 3 1)