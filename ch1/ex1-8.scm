(define (cbrtGuess guess x)
  (if (goodEnough guess x)
    (* guess 1.0) ;if good enough return curr guess
    (cbrtGuess (improve guess x) x) ; else recursizely call sqrtguess with the improved guess and x
    ))

(define (goodEnough guess x)
  (< (abs (- (* guess guess guess) x)) (* 0.001 x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

  

