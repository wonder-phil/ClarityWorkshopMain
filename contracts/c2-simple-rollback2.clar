
;; title: c2
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
(define-data-var save-my-var int -1)
;; data maps
;;

;; public functions
;;
(define-public (get-my-var)
    (ok (var-get my-var))
)

(define-public (get-save-my-var)
    (ok (var-get save-my-var))
)

(define-public (undo-my-var)
	(begin
		(var-set my-var 123)
		(var-set save-my-var (var-get my-var))
		(roll-back 10) ;;  !!
	)
)
;; read only functions
;;

;; private functions
;;
(define-private (roll-back (x int)) ;; PRIVATE
	(begin
		(var-set my-var x)
		(err "rollback"))
)

