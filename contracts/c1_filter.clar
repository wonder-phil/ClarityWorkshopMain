
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

;; private functions
;;



;;(define-data-var lst (list) (list 1 2 3 4 5 6))
(define-constant lst (list 1 2 3))

(define-private (is-odd (x int))
	(if (is-eq (mod x 2) 0)
		true
		false))

(define-private (my-private-filter)
	(filter is-odd (list 1 2 3 4 5 6)))

(define-public (my-filter)
	(ok (filter is-odd (list 1 2 3 4 5 6))))

(define-public (example-fold (v int))
	(ok (fold + lst v)))
	
;; Try 
;; (unwrap! (contract-call? .c1 example-fold 1) -9)
	
(define-public (example-fold2)
	(ok (fold and (list true true false) true)))
	
(define-public (example-fold3)
	(ok (my-filter)))	
	
;;(define-public (example-fold4)
;;(ok (fold and (my-private-filter) true)))