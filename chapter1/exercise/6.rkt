#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enoguh? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enoguh? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

;; new-ifは関数なので、applicative-order evaluationで3つの引数全てが評価されて無限ループになる

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)