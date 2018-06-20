;; C. Constantinides, 2009.

(defun remainder (n m)
  (cond ((< n m) n)
        (t (remainder (- n m) m))))