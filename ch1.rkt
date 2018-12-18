#lang pie

'atom
'ratatouille
'---

(the (Pair Atom Atom)
  (cons 'ratatouille 'baguette))

(Pair Atom Atom)

(car (the (Pair Atom Atom)
       (cons 'ratatouille 'baguette)))

(cdr (the (Pair Atom Atom)
       (cons 'ratatouille 'baguette)))

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
