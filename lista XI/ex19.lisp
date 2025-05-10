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

(defun primeSum (a b)
	(if (and (aref isPrime a) (aref isPrime b))
		(list a b)
		(primeSum (+ a 1) (- b 1))
	)
)

(setf n (read))
(sieve n)
(print_line (primeSum 2 (- n 2)))