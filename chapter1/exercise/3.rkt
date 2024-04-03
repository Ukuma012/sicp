;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (answer x y z)
  (cond ((and (>= x y) (>= y z))　(sum-of-squares x y))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))
        ((and (>= y x) (>= z x)) (sum-of-squares y z))
        ))

(answer 3 4 5)
(answer 1 1 1)
(answer 2 2 1)