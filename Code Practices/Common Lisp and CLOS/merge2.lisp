;; C. Constantinides, 2009.

(defun merge2 (lst1 lst2)
  (cond ((null lst1) lst2)
        ((null lst2) lst1)
        ((= (car lst1) (car lst2)) (merge2 (cdr lst1) lst2))
        ((< (car lst1) (car lst2)) (cons (car lst1) (merge2 (cdr lst1) lst2)))
        (t (cons (car lst2) (merge2 lst1 (cdr lst2))))))