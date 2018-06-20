;; C. Constantinides, 2009.

(defun reverse2 (lst)
  (cond ((null lst) '())
        (t (append (reverse2 (cdr lst)) (list (car lst))))))
