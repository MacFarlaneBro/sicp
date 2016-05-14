(define (f n)
  (cond ((< n 3) n)
        (else
         (+ (* (f(- n 1)))
            (* 2 (f(- n 2)))
            (* 3 (f(- n 3)))))))

(define (f n)
  (define (iterator a b c counter)
    (if (= counter 0)
        a
        (iterator b c (+ c (* 2 b) (* 3 a)) (- counter 1))))
  (iterator 0 1 2 n))

(f 3)
