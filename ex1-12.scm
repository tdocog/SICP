(define (p r c)
  (cond ((or (= c 1 )(= r 1) (= c r)) 1) 
        (else (+ (p (- r 1) (- c 1)) (p (- r 1) c)))
  ))