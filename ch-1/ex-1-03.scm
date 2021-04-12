(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (biggest-out-of-three a b c)
  (cond
    ((and (> a b) (> a c)) a)
    ((and (> b a) (> b c)) b)
    ((and (> c a) (> c b)) c)
    ((or (> a b) (> a c)) a)
    (else b)))

(define (biggest-out-of-two a b)
  (if (> a b) a b))

(define (second-biggest-out-of-three a b c)
  (cond
    ((= (biggest-out-of-three a b c) a) (biggest-out-of-two b c))
    ((= (biggest-out-of-three a b c) b) (biggest-out-of-two a c))
    ((= (biggest-out-of-three a b c) c) (biggest-out-of-two a b))))

(define (fun a b c)
  (sum-of-squares (biggest-out-of-three a b c) (second-biggest-out-of-three a b c)))

(fun 7 2 3)
