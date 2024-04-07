#lang sicp
(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (square x) (* x x))



; 1
(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
            (square-list (cdr items)))))

; 2
; map helps establish an abstracion barrier that isolates the implenentation of procedures that transform lists from the details of how the elements of the list are extracted and combined
(define (square-list2 items)
  (map square items))

(square-list (list 1 2 3 4))
(square-list2 (list 1 2 3 4))