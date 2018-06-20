;; C. Constantinides, 2012.

(defun pairs (lst1 lst2)
   (if (or (null lst1) (null lst2))
      nil
      (cons (list (car lst1) (car lst2))   (pairs (cdr lst1) (cdr lst2) ))))
