;; C. Constantinides, 2009.

(defun setunion (lst1 lst2)
  (cond
    ((null lst1) lst2)
    ((null lst2) lst1)
    ((member (car lst1) lst2)(setunion (cdr lst1) lst2))
    (t (cons (car lst1) (setunion (cdr lst1) lst2)))))
