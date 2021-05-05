(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
              (* 2 (f (- n 2)))
              (* 3 (f (- n 3)))))))

(f 1)
(f 2)
(f 3)
(f 5)
(f -1)

(define (fi n)
  (define (f-iter a b c count)
    (cond ((< count 0) count)
      ((= count 0) a)
      ((= count 1) b)
      ((= count 2) c)
      (else (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))))
  (f-iter 0 1 2 n))

(fi 1)
(fi 2)
(fi 3)
(fi 5)
(fi -1)