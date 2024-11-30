
;; title: c7
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
(define-constant  lst (list u1 u2 u3 u4 u5))

;; private functions
;;
(define-private (psquare (num uint))
	(* num num))
  
(define-public (square-numbers (numbers (list 10 uint)))
 	 (ok (map psquare numbers)))

(define-private ( is-even (num uint ))
    (is-eq (mod num u2) u0))
    
(define-public (map-even-numbers 
                    (numbers (list 10 uint)))
    (ok (map is-even numbers)))
