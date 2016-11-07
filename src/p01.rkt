;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Project Euler - Problem 1
; 
; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
; The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000.
;
; Example:
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#lang racket
;; List -> num

;(define (sum-multiples-of l) 0) ;this is the stub

(define (sum-multiples-of xl)
   (foldl + 0 (filter
                (lambda (x) (or (zero? (modulo x 3)) (zero? (modulo x 5)))) xl))
)


;Run unit tests
(require rackunit)
;; Given a list of positive integers returns the sum of the multiples of 3 and 5
(check-eq? (sum-multiples-of '()) 0)
(check-eq? (sum-multiples-of '(1)) 0)
(check-eq? (sum-multiples-of '(1 2 3)) 3)
(check-eq? (sum-multiples-of '(1 2 3 4 5)) 8)
(check-eq? (sum-multiples-of '(1 2 3 4 5 6 7 8 9)) 23)
(check-eq? (sum-multiples-of  (build-list 1000 values)) 233168)

