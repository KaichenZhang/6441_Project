;; C. Constantinides, 2009.

(defun consr (lst elt)
    (if (null lst) (list elt)
       (cons (car lst) (consr (cdr lst) elt))))