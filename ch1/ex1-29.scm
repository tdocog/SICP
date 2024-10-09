; simpsons rule
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))
  )
)

(define (cube x) (* x x x))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (f (+ a (* k h))))
  (define (coeff k ) 
    (cond ((= k 0) 1) ; if k == 0
          ((= k n) 1) ; if k == n 
          ((= 1 (remainder k 2)) 4) ; if odd
          ((= 0 (remainder k 2)) 2) ; if even 
    ))
  (define (getTerm x) (* (yk x) (coeff x)))
  (define (next n) (+ n 1))
  (* (/ h 3) (sum getTerm 0 next n))
)