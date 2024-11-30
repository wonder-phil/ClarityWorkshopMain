
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
(define-public (hello) 
    (ok "Hello world!"))

(define-public (hello-name (name (string-ascii 10)))
    (ok (concat "Hello " name))
)

(define-public (cube (x int))
    (ok (* x x x))
)


(define-public (tenth-power (x int))
    (ok (* x 
         (unwrap-panic
            (cube 
                (unwrap-panic (cube x)))))
    )
)
;; read only functions
;;

;; private functions
;;
(define-private (pcube (x int))
    (* x x x)
)

(define-private (add-numbers (sum uint) (num uint))
  (+ sum num))

(define-public (sum-list (numbers (list 10 uint)))
  (ok (fold add-numbers  numbers u0)))

(define-constant lst (list u1 u2 u3 u4 u5))
