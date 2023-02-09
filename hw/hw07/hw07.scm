(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst) 
    (if (null?(cdr asc-lst))
        (> 2 1)
        (if (<= (car asc-lst) (car (cdr asc-lst)))
            (ascending? (cdr asc-lst))
            (> 1 2)))
)

(define (square n) (* n n))

(define (pow base exp) 
    (if ())
)
