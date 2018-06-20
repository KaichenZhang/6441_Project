;; C. Constantinides, 2009.

(defun power (a n)
    (if (zerop n)
        1
        (* a (power a (- n 1)))))