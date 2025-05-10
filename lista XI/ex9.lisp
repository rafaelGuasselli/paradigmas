(defstruct Vetor
	x
	y
	z
)

(defun print_line (x)
	(write-line (write-to-string x))
)

(defun directionVetor (p1 p2)
	(
		let ( 
			(x (- (Vetor-x p2) (Vetor-x p1)))
			(y (- (Vetor-y p2) (Vetor-y p1)))
			(z (- (Vetor-z p2) (Vetor-z p1)))
		)
		(make-Vetor :x x :y y :z z)
	)
)

(defun VetorSize (v)
	(
		let (
			(x (expt (Vetor-x v) 2))
			(y (expt (Vetor-y v) 2))
			(z (expt (Vetor-z v) 2))
		)
		(sqrt (+ x (+ y z)))
	)
)

(setf x1 (read) y1 (read) z1 (read))
(setf x2 (read) y2 (read) z2 (read))

(setf p1 (make-Vetor :x x1 :y y1 :z z1))
(setf p2 (make-Vetor :x x2 :y y2 :z z2))
(setf dv (directionVetor p1 p2))

(print_line (VetorSize dv))