(defun media (a b c)
	(/ (+ a (+ b c)) 3)
)

(defun print_line (x)
	(write-line (write-to-string x))
)

(setq a (read))
(setq b (read))
(setq c (read))

(if (>= (media a b c) 6)
	(print_line "Aprovado")
	(print_line "Reprovado")
)