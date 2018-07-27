;;;;;;;;;;;;;;;
;; Questions ;;
;;;;;;;;;;;;;;;

; Mutable functions in Scheme

(define (make-fib)
  (define curr 0) (define next 1)
  (lambda ()
    (let ([x curr])
      (begin (set! curr next) (set! next (+ x curr)))
    x
    )
  )
)