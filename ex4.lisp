(defun xor2 (x y)
   (not (or (and x y) (not (or x y))))
)

(defun print_line (x)
    (write-line (write-to-string x))
)

(print_line (xor2 T T))
(print_line (xor2 NIL T))
(print_line (xor2 T NIL))
(print_line (xor2 NIL NIL))