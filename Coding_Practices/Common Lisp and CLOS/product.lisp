;; C. Constantinides, 2009.

(defun product (lst)
  (cond ((null lst) 1)
        (t (* (car lst) (product (cdr lst))))))