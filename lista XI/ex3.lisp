(defun area (base altura)
    (/ (* base altura) 2)
)

(setq base (read))
(setq altura (read))
(write (area base altura))