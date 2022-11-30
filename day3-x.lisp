(in-package #:advent2021)

(defun read-gamma-rate ()
  (loop :for gamma :in
		   (uiop:read-file-lines
		    (asdf:system-relative-pathname 'advent2021 "inputs/day3-test"))
	collect (mapcar #'parse-integer (split "" gamma))))

(defun get-gr ()
  (loop :for gamma :in
		   (read-gamma-rate)
	counting (first gamma) into tot
	counting (oddp (nth 0 gamma)) into ga_1
	counting (oddp (nth 1 gamma)) into ga_2
	counting (oddp (nth 2 gamma)) into ga_3
	counting (oddp (nth 3 gamma)) into ga_4
	counting (oddp (nth 4 gamma)) into ga_5
	finally ( return  (format t "~a~a~a~a~a" 
			(if (> 0.5 (/ ga_1 tot)) 1 0)
			(if (> 0.5 (/ ga_2 tot)) 1 0)
			(if (> 0.5 (/ ga_3 tot)) 1 0)
			(if (> 0.5 (/ ga_4 tot)) 1 0)
			(if (> 0.5 (/ ga_5 tot)) 1 0)))))

;;-----------------------------------------------



(defun parse-binary (num)
  (parse-integer num :radix 2))

(defun write-binary (num)
  (write-to-string num :base 2 ))

(defun read-gamma-rate ()
  (mapcar #'parse-binary
	  (uiop:read-file-lines
	   (asdf:system-relative-pathname 'advent2021 "inputs/day3-test"))))

(defun write-gamma-rate()
  (loop for rate in (read-gamma-rate)
	collect (list rate(write-binary rate))))
  
(defun day3/solution1 ()
 )
