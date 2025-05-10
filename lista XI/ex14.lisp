(defun print_line (x)
	(write-line (write-to-string x))
)

(defun mdc (a b)
	(if (= a 0)
		b
		(mdc (mod b a) a)
	)
) 

(setf a (read) b (read))
(if (= (mdc a b) 1)
	(print_line "Coprimos")
	(print_line "Não Coprimos")
)