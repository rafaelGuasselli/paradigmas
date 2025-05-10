(defun print_line (x)
	(write-line (write-to-string x))
)

(defun operacao (op x y)
	(cond 
		((eq op '+) (+ x y))
		((eq op '-) (- x y))
		((eq op '*) (* x y))
		((eq op '/) (/ x y))
		(t (error "Operação inválida"))
	)
)

(setf op (read) x (read) y (read))
(print_line (operacao op x y))