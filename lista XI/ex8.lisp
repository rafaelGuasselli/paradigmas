

(defun quadraticFormula (a b c)
	(setq delta (- (* b b) (* 4 (* a c))))
	(print delta)
	(if (>= delta 0)
		(
			let (
				(left (- 0 b))
				(right (sqrt delta))
				(div (* a 2))
			)
			(list 
				(/ (+ left right) div) 
				(/ (- left right) div)
			)
		)
		'("invalid" "invalid")
	)
)

(defun print_line (x)
	(write-line (write-to-string x))
)

(setq a (read))
(setq b (read))
(setq c (read))


(print_line (quadraticFormula a b c))