#lang pie

(claim one Nat)
(define one
  (add1 zero))

(claim two Nat)
(define two
  (add1 one))

(claim four Nat)
(define four
  (add1
    (add1
      (add1
        (add1 zero)))))

