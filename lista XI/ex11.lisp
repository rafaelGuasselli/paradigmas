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
(print_line (mdc a b))