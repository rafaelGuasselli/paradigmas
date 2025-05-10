(defun print_line (x)
	(write-line (write-to-string x))
)

(defun mdc (a b)
	(if (= a 0)
		b
		(mdc (mod b a) a)
	)
) 

(defun mmc (a b)
	(
		let (
			(div (mdc a b))
			(mul (* a b))
		)
		(/ mul div)
	)
)

(setf a (read) b (read))
(print_line (mmc a b))