
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
;; https://docs.stacks.co/docs/clarity/language-functions
;; data vars
;;

;; data maps
;;
(define-constant lst (list 1 2 3 4))

;; public functions
;;

;; https://docs.stacks.co/docs/clarity/language-functions

(define-public (my-exp)
	(ok (fold my-pow lst 1)))

;; read only functions
;;

;; private functions
;;
(define-private (my-pow (b int) (e int))
	(pow b e))

;; calculates (- 11 (- 7 (- 3 2)))
;;(fold - (list 3 7 11) 2) ;; Returns 5 