
;; title: c1
;; version:
;; summary:
;; description:

;; traits
;;

;; token definitions
;;

;; constants
;;

;; data vars
;;

;; data maps
;;

;; public functions
;;

(define-private (is-even (num uint))
  (is-eq (mod num u2) u0))

(define-public (filter-even-numbers (numbers (list 10 uint)))
 	 (ok (filter is-even numbers)))

;; read only functions
;;

;; private functions
;;

