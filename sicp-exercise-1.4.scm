;;; Describe the behaviour of

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)

;;; If b positive then sum a and b else subtract b from a

