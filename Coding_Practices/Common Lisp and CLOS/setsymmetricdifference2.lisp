;; C. Constantinides, 2009.

(defun setsymmetricdifference2 (lst1 lst2)
  (union (setdifference lst1 lst2)(setdifference lst2 lst1)))