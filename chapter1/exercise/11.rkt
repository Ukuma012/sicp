#lang sicp
(define (f1 n)
  (if (< n 3)
      n
      (+ (f1 (- n 1))
         (* 2 (f1 (- n 2)))
         (* 3 (f1 (- n 3))))))

(define (f2 n)
  (f-iter 2 1 0 n))

(define (f-iter x y z n)
  (cond ((= n 0) z)
        ((= n 1) y)
        ((= n 2) x)
        (else (f-iter (+ x (* 2 y) (* 3 z)) x y (- n 1)))))

(f1 4)
(f2 4)