(define (inc a)
  (+ a 1))

(define (dec a)
  (- a 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;; Execution for (+ 3 3)

(+ 3 3)
(inc (+ 2 3))
(inc (inc (+ 1 3)))
(inc (inc (inc (+ 0 3))))
     
;; => 6. This implementation is recursive

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 3 3)
(+ 2 4)
(+ 1 5)
(+ 0 6)

;; => 6. This implementation is iterative
