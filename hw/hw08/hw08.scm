(define (my-filter pred s) 
  (if (not (null? s))
    (if (pred (car s))
        (cons (car s) (my-filter pred (cdr s)))
        (my-filter pred (cdr s)))
    nil))

(define (interleave lst1 lst2) 
  (if (null? lst1)
    (if (null? lst2)
      nil
      (interleave lst2 lst1))
    (cons (car lst1) (interleave lst2 (cdr lst1)))))

(define (accumulate joiner start n term)
  (if (= n 0)
    start
    (joiner (term n) (accumulate joiner start (- n 1) term))))

(define (no-repeats lst) 
  (if (not (null? lst))
    (cons (car lst) (no-repeats (my-filter (lambda (x) (not (= x (car lst)))) (cdr lst))))
    nil))
