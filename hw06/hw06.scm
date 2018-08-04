;;;;;;;;;;;;;;;
;; Questions ;;
;;;;;;;;;;;;;;;

; Streams

(define (find s predicate)
  (cond
    ((null? s) #f)
    ((predicate (car s)) (car s))
    (else (find (cdr-stream s) predicate))
  )
)

(define (scale-stream s k)
  (if 
    (null? s)
    nil
    (cons-stream (* k (car s)) (scale-stream (cdr-stream s) k))
  )
)

(define (has-cycle? s)
  (define (pair-tracker seen-so-far curr)
    (cond 
      ((null? curr) #f)
      ((contains? seen-so-far curr) #t)
      (else 
        (pair-tracker 
          (cons curr seen-so-far)
          (cdr-stream curr)
        )
      )
    )
  )
  (pair-tracker nil s)
)

(define (contains? lst s)
  (cond 
    ((null? lst) #f)
    ((eq? s (car lst)) #t)
    (else (contains? (cdr lst) s))
  )
)
(define (has-cycle-constant s)
  'YOUR-CODE-HERE
)

; Tail recursion

(define (accumulate combiner start n term)
  (if
    (= n 0)
    start
    (accumulate combiner (combiner start (term n)) (- n 1) term)
  )
)

; Macros

(define-macro (list-of expr for var in lst if filter-expr)
  `(map (lambda (,var) ,expr) (filter (lambda (,var) ,filter-expr) ,lst))
)