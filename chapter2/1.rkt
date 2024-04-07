#lang sicp

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))


(define (numer x) (car x))
(define (denom x) (cdr x))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (Make-rat n d)
  (let ((g (gcd n d))
        (denom-sign (if (> d 0) 1 -1)))
    (cons (* (/ n g) denom-sign)
          (* (/ d g) denom-sign))))

