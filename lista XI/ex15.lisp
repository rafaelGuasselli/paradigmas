(defun print_line (x)
	(write-line (write-to-string x))
)

(defun sieve (n)
	(setf primes '())
	(setf isPrime (make-array (1+ n) :initial-element T))
	(loop for i from 2 to n do
		(if (aref isPrime i)
			(loop for j from (* i 2) to n by i do 
				(setf (aref isPrime j) NIL)
				(if (= j n)
					(setf primes (cons i primes))
				)
			)
		)
	)
)

(defun eulerTotient (n)
	(sieve n)
	(	
		let(
			(acc n)
		)
		(dolist (p primes acc)
			(setf acc (* acc (- 1 (/ 1 p))))
			(+ acc 0)
		)
	)
)

(defun mdc (a b)
	(if (= a 0)
		b
		(mdc (mod b a) a)
	)
) 

(setf n (read))
(print_line (eulerTotient n))