
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
(define-data-var my-var int -1)
;; data maps
;;

;; public functions
;;
(define-public (undo-my-var)
	(begin
		(var-set my-var 123)
		(err "reverse var-set") ;;  Comment this out!
	)
)

(define-public (get-my-var)
	(ok (var-get my-var))) 
	
(define-public (set-my-var (x int))
	(ok (var-set my-var x))) 
;; read only functions
;;

;; private functions
;;


	
