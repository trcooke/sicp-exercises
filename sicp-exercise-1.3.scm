;;; Define a procedure that takes three numbers as arguments and returns
;;; the sum of the squares of the two larger numbers.

(define (sq x)
  (* x x)
)

(define (sum-square-two-largest x y z)
  (if (> x y)
    (if (> y z) (+ (sq x) (sq y)) (+ (sq x) (sq z)))
    (if (> x z) (+ (sq y) (sq x)) (+ (sq y) (sq z))))
)

(sum-square-two-largest 1 2 3)
; 13
