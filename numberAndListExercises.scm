(define length
	(lambda (lat)
		(cond
			((null? lat) 0)
			(else (add1 (lenth (cdr lat)))))))

(define pick
	(lambda (n lat)
		(cond 
			((zero? (sub1 n))(car lat))
			(else (pick (sub1 n)(cdr lat))))))

(define rempick
	(lambda (n lat)
		(cond 
			((zero? (sub1 n))(cdr lat))
			(else (cons (car lat) (rempick (sub1 n) (cdr lat)))))))

(define no-nums
	(lambda (lat)
		(cond
			((null? lat)(quote()))
			(else (cond 
				((number? (car lat))(no-nums (cdr lat)))
				(else (cons (car lat) (no-nums (cdr lat)))))))))

(define all-nums
	(lambda (lat)
		(cond
			((null? lat)(quote()))
			(else (cond 
				((number? (car lat))(cons (car lat) (all-nums (cdr lat))))
				(else (all-nums (cdr lat)))))))))

(define eqan?
	(lambda (a1 a2)
		(cond
			((and (number? a1) (number? a2)) (= a1 a2))
			((or (number? a1) (number? a2)) #f)
			(else (eq? a1 a2)))))

(define occur
	(lambda (a lat)
		(cond 
			((null? lat) 0)
			(else (cond 
				((eqan? (car lat) a) (add1 (occur a (cdr lat))))
				(else (occur a (cdr lat))))))))

;;;does not work,
;;;if its 0 it gives an error
(define one?
	(lambda (n)
		(cond
			((zero? (sub1 n)) #t)
			(else #f))))
;;;one? fixed (the one I made)
(define one?
	(lambda (n)
		(cond
			((zero? n) #f)
			(else (zero? (sub1 n))))))
;;;the one the book gives
(define one?
	(lambda (n)
		(cond 
			(else (= n 1)))))

(define one?
	(lambda (n)
		(= n 1)))

(define rempick
	(lambda (n lat)
		(cond 
			((one? n)(cdr lat))
			(else (cons (car lat) (rempick (sub1 n) (cdr lat)))))))
