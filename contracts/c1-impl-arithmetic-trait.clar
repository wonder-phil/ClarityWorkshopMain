
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

;; read only functions
;;
(impl-trait  .t1.arithmetic)

(define-read-only (multiply (a uint) (b uint))
    (ok (* a b))
)

(define-read-only (add (a uint) (b uint))
    (ok (+ a b))
)
;; private functions
;;

