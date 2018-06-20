;; C. Constantinides, 2009.

(defun length2 (lst)
  (if (null lst)
    0 
    (+ 1 (length2 (cdr lst)))))
