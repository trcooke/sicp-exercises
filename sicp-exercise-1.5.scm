;;; Ben Bitdiddle has invented a test to determine whether the 
;;; interpreter he is faced with is using applicative- order 
;;; evaluation or normal-order evaluation. He defines the following two procedures
:
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;;; Normal-order evaluation - "Fully expand and then reduce"
(test 0 (p))
(if (= 0 0) 0 p)
0
; p is never evaluated. Thus race condition not entered.

;;; Applicative-order evaluation - "Evaluate the arguments then apply"
(test 0 (p))
(if (= x 0) 0 y) ; evaluate args
(if (= 0 0) 0 p) ; evaluate p
(if (= 0 0) 0 p) ; evaluate p
(if (= 0 0) 0 p) ; evaluate p
(if (= 0 0) 0 p) ; evaluate p
; p never evaluates to a primitive. Race condition.
