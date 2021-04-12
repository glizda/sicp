(define (cbrt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess)
      guess
      (cbrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (<= a b)
  (or (< a b) (= a b)))

(define (good-enough? previous-guess guess)
  (<= (abs (- previous-guess guess)) (* guess 0.001)))

(define (cbrt x)
  (cbrt-iter 2.0 1.0 x))

(cbrt 8)
