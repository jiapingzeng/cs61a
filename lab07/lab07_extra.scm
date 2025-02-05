;; Lab 7 Optional Questions ;;

; Q4
(define (composed f g)
  (lambda (x) (f (g x)))
)

; Q5
(define (intersect f1 f2)
  (lambda (x) (= (f1 x) (f2 x)))
)

;;; Tests

; (add-two 2) evaluates to 4, (square 2) also evaluates to 4
((intersect add-two square) 2)
; expect #t


; (add-two 3) evaluates to 5, (square 3) instead evaluates to 9
((intersect add-two square) 3)
; expect #f


; Q6
(define (max a b) (if (> a b) a b))
(define (min a b) (if (> a b) b a))
(define (gcd a b)
  
)

;;; Tests
(gcd 24 60)
; expect 12
(gcd 1071 462)
; expect 21