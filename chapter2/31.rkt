#lang sicp
(define (square x) (* x x))

(define (tree-map proc tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (proc tree))
        (else (cons (tree-map proc (car tree))
                    (tree-map proc (cdr tree))))))
              
(define (square-tree tree)
  (tree-map square tree))