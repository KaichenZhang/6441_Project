;; C. Constantinides, 2009.

(defun factorial (n)
  (if (= n 0)
    1
    (* n (factorial (- n 1)))))