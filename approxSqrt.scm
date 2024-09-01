(define (sqrtGuess guess x)
  (if (goodEnough guess x)
    (* guess 1.0) ;if good enough return curr guess
    (sqrtGuess (improve guess x) x) ; else recursizely call sqrtguess with the improved guess and x
    ))

(define (goodEnough guess x)
  (< (abs (- (* guess guess) x)) (* 0.001 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))
  