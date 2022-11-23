
(in-package #:advent2021)

(defun read-sonar-sweep ()
  (mapcar #'parse-integer
	  (uiop:read-file-lines  (asdf:system-relative-pathname 'advent2021 "inputs/day1"))))
(defun day1/solution1 ()
  (let ((sonar-sweep (read-sonar-sweep)) )
  (loop :for couple :in (loop :for i :from 1 :below (length sonar-sweep)
	collect (cons (nth (- i 1) sonar-sweep)
		      (nth i sonar-sweep)))
	when (> (cdr couple)
		(car couple))
	  count couple)
	       
    ))

(defun get-triple ()
  (let ((sonar-sweep (read-sonar-sweep)) )  
    (loop :for triple :in
		      (loop :for i :from 2 :below (length sonar-sweep)
				 collect (+  (nth (- i 2) sonar-sweep)
		    				(nth (- i 1) sonar-sweep)
						(nth i sonar-sweep)))
	  collect triple)))

(defun day1/solution2 ()
  (let((tri (get-triple)) )
    (loop :for couple :in (loop :for i :from 1 :below (length tri)
				collect (cons (nth (- i 1) tri)
					      (nth i tri)))
	  when (> (cdr couple)
		  (car couple))
	    count couple)
  ))
