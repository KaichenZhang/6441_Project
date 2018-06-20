;; C. Constantinides, 2009.

(defun compress (lst)
  (cond
     ((or (null lst) (null (cdr lst))) lst)
     ((equal (car lst) (car (cdr lst))) (compress (cdr lst)))
     (t (cons (car lst) (compress (cdr lst))))))