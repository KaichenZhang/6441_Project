;; C. Constantinides, 2012.

(defun dist (n lst)
 (if (null lst)
  nil
  (cons (list n (car lst)) (dist n (cdr lst) ))))