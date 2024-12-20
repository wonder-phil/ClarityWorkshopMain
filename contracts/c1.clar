
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
(define-data-var message (string-ascii 21) "Clarity is a virtue")
;; data maps
;;


;; read only functions
;;
(define-read-only (get-my-message) (ok (var-get message)))

;; public functions
;;
(define-public (set-my-message (str (string-ascii 21)))
	(ok (var-set message str)))

(define-map factorials uint uint)

(map-insert factorials u0 u1)
(map-insert factorials u1 u1)
(map-insert factorials u2 u1)
(map-insert factorials u3 u1)
(map-insert factorials u4 u1)

;;(define-data-var lst (list) (list 1 2 3 4 5 6))
(define-constant lst (list 1 2 3 4 5))

(define-read-only (get-my-value (x uint))
	(ok (map-get? factorials x)))
	
(define-public (fact (v int))
	(ok (fold * lst v)))
	
(define-public (fact-1)
	(ok (fold * lst 1)))	
	
(define-private (is-even-one (x int))
	(if (is-eq (mod x 2) 0)
		true
		false))

(define-public (e)
	(ok (fold * (list 1 2) 3)))
			
(define-public (is-even-all)
	(ok (filter is-even-one lst)))
	
;;(define-public (square-all (index uint))
;;	(ok (filter square lst)))

