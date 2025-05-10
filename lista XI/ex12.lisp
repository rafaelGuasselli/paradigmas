(defun print_line (x)
	(write-line (write-to-string x))
)

(defun mdc (a b)
	(if (= a 0)
		b
		(mdc (mod b a) a)
	)
) 

(setf a (read) b (read) c (read))
(print_line (mdc c (mdc a b)))