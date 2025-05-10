(defun print_line (x)
	(write-line (write-to-string x))
)

(defun maximo (a b)
	(if (>= a b)
		a
		b
	)
)


(setf a (read) b (read) c (read))
(print_line (maximo (maximo b c) a))