#lang pie

(which-Nat
 zero
 'naught
 (λ (n) 'more))

(claim puu (Pair U U))
(define puu (cons Atom Atom))

(claim Pear U)
(define Pear (Pair Nat Nat))

(claim Pear-maker U)
(define Pear-maker
  (-> Nat Nat Pear))

(claim elim-Pear
  (-> Pear Pear-maker Pear))
(define elim-Pear
  (λ (pear maker)
    (maker (car pear) (cdr pear))))

(elim-Pear
  (cons 3 17)
  (λ (a d) (cons d a)))

(claim pearwise+
  (-> Pear Pear Pear))
(define pearwise+
  (λ (p1 p2)
    (elim-Pear p1
      (λ (p1-fst p1-snd)
        (elim-Pear p2
          (λ (p2-fst p2-snd)
            (cons
              (+ p1-fst p2-fst)
              (+ p1-snd p2-snd))))))))