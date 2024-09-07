(define (greaterThanEqualTo a b) 
  (or (> a b) (= a b))
  )   

(define (sumOfSqures a b)
  (+ (* a a) (* b b))
  )

(define (sumOfTwoLarger a b c) 
  (cond 
      ((and (greaterThanEqualTo a c) (greaterThanEqualTo b c)) (sumOfSqures a b)) ; if a and b is greater than c
      ((and (greaterThanEqualTo a b) (greaterThanEqualTo c b)) (sumOfSqures a c)) ; if a and c is greater than b
      (else (sumOfSqures b c)) ; if b and c is greater than a
  ))

