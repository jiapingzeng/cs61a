; Q1
(define (sign x)
  (cond 
    ((< x 0) -1)
    ((> x 0) 1)
    (else 0)
  )
)

; Q2
(define (square x) (* x x))

(define (pow b n)
  (cond 
    ((= n 0) 1)
    ((= n 1) b)
    ((even? n) (square (pow b (/ n 2))))
    (else (* b (pow b (- n 1))))
  )
)

; Q3
(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)

; Q4
(define (ordered? s)
  (if (null? (cdr s))
    #t
    (if (<= (car s) (cadr s))
      (ordered? (cdr s))
      #f
    )
  )
)

; Q5
(define (nodots s)
  (if (pair? s)
    (cons
      (if (pair? (car s))
        (nodots (car s))
        (car s))
      (nodots (cdr s)))
    (if (null? s)
      nil 
      (list s)
    )
  )
)

; Q6
(define (empty? s) (null? s))

(define (add s v)
  (if (empty? s)
    (list v)
    (cond
      ((< v (car s)) (cons v s))
      ((> v (car s)) (cons (car s) (add (cdr s) v)))
      (else s)
    )
  )
)

; Q7
; Sets as sorted lists
(define (contains? s v)
  (if (empty? s)
    #f
    (if (= v (car s))
      #t
      (contains? (cdr s) v)
    )
  )
)

; Q8
(define (intersect s t)
  (if (empty? s)
    '()
    (if (contains? t (car s))
      (cons (car s) (intersect (cdr s) t))
      (intersect (cdr s) t)
    )
  )
)

(define (union s t)
  (cond
    ((empty? s) t)
    ((empty? t) s)
    ((< (car s) (car t)) (cons (car s) (union (cdr s) t)))
    ((> (car s) (car t)) (cons (car t) (union s (cdr t))))
    (else (cons (car s) (union (cdr s) (cdr t))))
  )
)