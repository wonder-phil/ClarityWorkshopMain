
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
(define-public (cube (x int))
	(ok (* x x x)))
	
(define-public (nine (x int))
	(ok (unwrap-panic (cube (unwrap-panic (cube x))))))

;; read only functions
;;

;; private functions
;;

