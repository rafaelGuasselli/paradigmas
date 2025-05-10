(defun isTriangle (a b c)
	(and (<= a (+ b c)) (and (<= b (+ a c)) (<= c (+ a c))))
)

(defun print_line (x)
	(write-line (write-to-string x))
)

(setq x (read))
(setq y (read))
(setq z (read))

(if (isTriangle x y z)
	(print_line "Triangulo")
	(print_line "Não triangulo")
)