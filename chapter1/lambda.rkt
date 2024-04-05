#lang sicp
(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))))

(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))