;; C. Constantinides, 2009.

(defun setsymmetricdifference (lst1 lst2)
  (setdifference (union lst1 lst2)(intersection lst1 lst2)))