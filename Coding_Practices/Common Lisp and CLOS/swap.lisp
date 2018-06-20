;; C. Constantinides, 2009.

(defun swap (lst)
  (if (or (null lst) (null (cdr lst))) 
      lst
    (cons (car (cdr lst)) 
          (cons (car lst) (swap (cdr (cdr lst)))))))