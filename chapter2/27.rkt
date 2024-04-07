#lang sicp
(define (reverse items)
  (if (null? items)
      '()
      (append (reverse (cdr items)) (list (car items)))))

(define (deep-reverse x)
  (if (not (pair? x))
       x
       (append (deep-reverse (cdr x)) (list (deep-reverse (car x))))))

(define x (list (list 1 2) (list 3 4)))

(deep-reverse x)