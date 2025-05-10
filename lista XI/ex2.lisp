(setq x (read))
(defun absoluta (x)
    (if (< x 0)
        (- 0 x)
        x
    )
)

(write (absoluta x))