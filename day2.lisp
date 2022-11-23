(in-package #:advent2021)

(defun read-sonar-sweep ()
   (uiop:read-file-lines  (asdf:system-relative-pathname 'advent2021 "inputs/day2")))

(defun day2/solution1 ()
  (let ((sonar-sweep (read-sonar-sweep)) )
    (apply '* 
    (loop 
	  :for ping :in 
		    (mapcar (lambda (x) (uiop:split-string x :separator " "))
			    sonar-sweep  )
	  when (string-equal (car ping) "forward") :sum (parse-integer (car (cdr ping))) into x
	    when (string-equal (car ping) "up")      :sum (- 0 (parse-integer (car (cdr ping)))) into y
	      when (string-equal (car ping) "down")    :sum (parse-integer (car (cdr ping))) into y
		:finally (return (list x y))))))
;;brigitte bardot bardot

(defun day2/solution2 ()
  (let ((sonar-sweep (read-sonar-sweep)) )
  (apply '* 
    (loop 
	  :for ping :in 
		    (mapcar (lambda (x) (uiop:split-string x :separator " "))
			    sonar-sweep  )
	  when (string-equal (car ping) "forward")  :sum (parse-integer (car (cdr ping))) into x
	    when (string-equal (car ping) "forward") :sum (* aim  (parse-integer (car (cdr ping)))) into y
	      when (string-equal (car ping) "up")      :sum (- 0 (parse-integer (car (cdr ping)))) into aim
		when (string-equal (car ping) "down")    :sum (parse-integer (car (cdr ping))) into aim
		 ; debug do  (print (list aim x y))
	  :finally (return (list x y))))))
;; olè


   
