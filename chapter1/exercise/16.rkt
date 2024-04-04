#lang sicp

(define (fast-expt b n)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (fast-expt-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-expt-iter a (* b b) (/ n 2)))
          (else (fast-expt-iter (* a b) b (- n 1)))))
  (fast-expt-iter 1 b n))

(fast-expt 2 10)