(defun fib (n)
	(if (<= n 1)
		1
		(+ (fib (- n 1)) (fib (- n 2)))
	)
)

(defun print_line (x)
	(write-line (write-to-string x))
)

(setq n (read))
(print_line (fib n))