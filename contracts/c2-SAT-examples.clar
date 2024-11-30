
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
(define-data-var x1 int 0)
(define-data-var x2 int 0)
(define-data-var x3 int 0)
(define-data-var x4 int 0)
(define-data-var x5 int 0)

(define-data-var Nx1 int 1)
(define-data-var Nx2 int 1)
(define-data-var Nx3 int 1)
(define-data-var Nx4 int 1)
(define-data-var Nx5 int 1)

(define-constant lst (list 1 2 3 4 5))

;; data maps
;;

;; public functions
;;
(define-public (get-x1) 
    (ok (var-get x1)))

(define-public (get-Nx1) 
    (ok (var-get Nx1)))

(define-public (set-Nx1) 
    (ok 
        (begin 
            (var-set Nx1 99)
            (var-get Nx1)
        )
    )
)
;;
;;
(define-public (eval-me1)
	(if (is-eq (three-sat1 (flip (var-get x1)) 
	                       (flip (var-get x2)) 
						   (var-get Nx3))
                true)
		(ok 1)
		(ok 0))
)

(define-public (eval-me2)
	(if (is-eq (three-sat1 (flip (var-get x4)) 
	                       (flip (var-get x1)) 
						   (flip (var-get Nx3)))
                true)
		(ok 1)
		(ok 0))
)

(define-public (two-evals) 
    (if (is-eq (eval-me1)
               (eval-me2))
        (ok "true")
        (ok "false")
    )
)

               
;; read only functions
;;

;; private functions
;;
(define-private (flip (x int))
	(if (is-eq x 1)
		0
		1)
)

(define-private (three-sat1 (x int) (y int) (z int))
	(and (is-eq x 1)
		 (is-eq y 1)
		 (is-eq z 1))
)