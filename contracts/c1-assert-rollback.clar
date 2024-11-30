
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
(define-constant err-none     (err u0))
(define-constant err-smaller  (err u1))
(define-constant err-larger   (err u2))
(define-constant err-false    (err u3))
;; data vars
;;
(define-data-var change-me      int -1)
(define-data-var change-me-save int -1)
;; data maps
;;
(define-map my-map int uint)


;; public functions
;;
(define-public (test-assert-with-rollback)
    (ok (begin
            (asserts! (is-eq (var-set change-me 999) false) err-false) 
            (asserts! (is-none (map-get? my-map 42)) err-none)  
        )
    )
)

(define-public (get-change-me) 
    (ok (var-get change-me))
)
;; read only functions
;;

        
;; private functions
;;

