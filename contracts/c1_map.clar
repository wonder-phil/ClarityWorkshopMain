
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

;;
(define-constant err-invalid-caller (err u1))

(define-map authorised-callers principal bool)
(define-map recipients principal bool)

(map-set recipients tx-sender true)
(map-set authorised-callers tx-sender true)
(map-set authorised-callers 'ST20ATRN26N9P05V2F1RHFRV24X8C8M3W54E427B2 true)

(define-public (is-authorised-caller (caller principal))
	(ok (map-get? authorised-callers caller)))

(define-private (is-valid-caller (caller principal))
    ;; Implement.
	(if (default-to false (map-get? authorised-callers caller))
		true
		false)
)

(define-public (delete-recipient (recipient principal))
    (if (is-valid-caller tx-sender)
        (ok (map-delete recipients recipient))
        err-invalid-caller
    )
)
