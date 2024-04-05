#lang sicp
(define (cont-frac n d k)
  (define (recur i)
    (if (= k i)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (recur (+ 1 i))))))
  (recur 1))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           5)

(define (cont-frac-iter n d k)
  (define (iter i result)
    (if (= 0 i)
        result
        (iter (- i 1) (/ (n i) (+ result (d i))))))
  (iter (- 1 k) (/ (n k) (d k))))

(cont-frac-iter (lambda (i) 1.0)
                (lambda (i) 1.0)
                5)