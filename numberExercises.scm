(define +
	(lambda (n m)
		(cond
			((zero? m) n)
			(else (add1 (+ n (sub1 m)))))))

(define + 
	(lambda (n m)
		(cond 
			((zero? m) n)
			(else (+ (add1 n) (sub1m))))))

(define -
	(lambda (n m)
		(cond
			((zero? m) n)
			(else (- (sub1 n) (sub1m))))))

(define -
	(lambda (n m)
		(cond
			((zero? m) n)
			(else (sub1 (- n (sub1 m)))))))

(define addup
	(lamnbda (tup)
		(cond
			((null? tup) 0)
			(else (+ (car tup) (addup (cdr tup)))))))

(define *
	(lambda (n m)
		(cond 
			((null? m) 0)
			(else (* (+ n n)(sub1 m))))))

(define *
	(lambda (n m)
		(cond
			((null? m) 0)
			(else (+ n (* n (sub1 m)))))))

listas del mismo tamaño
(define tup+
	(lambda (tup1 tup2)
		(cond
			((and (null? tup1) (null? tup2))(quote()))
			(else (cons (+ (car tup1)(car tup2))(tup+ (cdr tup1)(cdr tup2)))))))

*****
(define tup+
	(lambda (tup1 tup2)
		(cond
			((null? tup1) tup2)
			((null? tup2) tup1)
			(else (cons (+ (car tup1)(car tup2))(tup+ (cdr tup1)(cdr tup2)))))))
*****

(define >
	(lambda (n m)
		(cond
			((zero? n) #f)
			((zero? m) #t)
			(else (> (sub1 n) (sub1 m))))))

(define <
	(lambda (n m)
		(cond 
			((zero? m) #f)
			((zero? n) #t)
			(else (< (sub1 n) (sub1 m)))))
(define <
	(lambda (n m)
		(cond
			((> n m) #f)
			(else #t))))

(define =
	(lambda (n m)
		(cond 
			((or (< n m) (> n m)) #f)
			(else #t))))

(define ^
	(lambda (n m)
		(cond 
			((zero? m) 1)
			(else (* n (^ n (sub1 m)))))))
