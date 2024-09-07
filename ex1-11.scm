; recursive way
(define (f n) 
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))
              ))
  ))  

; iterative way

(define (g n) 
 (define (gIter a b c count) 
  (cond ((< n 3) n)
        ((<= count 0) a)
        (else (gIter (+ a (* 2 b) (* 3 c)) a b (- count 1)))
        )
  )
  (gIter 2 1 0 (- n 2))
)
