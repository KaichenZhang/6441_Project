;; C. Constantinides, 2012.

(defun front (lst)
     (cond ((null lst)       nil)
           ((null (cdr lst)) '())
           (t                (cons (car lst) (front (cdr lst))))))