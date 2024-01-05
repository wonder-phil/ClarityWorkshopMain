
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
;;
;;; A map that creates a principal => uint relation.
(define-map balances principal uint)

;;
;;
;; Set the "balance" of the tx-sender to u500. - in a private/public function
(map-set balances tx-sender u500)

;; Retrieve the balance - in a private/public/read-only function
(map-get? balances tx-sender)

;; public functions
;;
;; data maps
;;

;; public functions
;;
(define-public (count-up)
    (begin
        (map-set balances tx-sender (+ (get-count tx-sender) u1))
        (ok true)
    )
)

;; read only functions
;;
(define-read-only (get-count (who principal))
    (default-to u0 (map-get? balances who))
)

;; private functions
;;

