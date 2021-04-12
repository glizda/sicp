(define (sqrt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (<= a b)
  (or (< a b) (= a b)))

(define (good-enough? previous-guess guess)
  (<= (abs (- previous-guess guess)) (* guess 0.001)))

(define (sqrt x)
  (sqrt-iter 2.0 1.0 x))

(sqrt 4)
