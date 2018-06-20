;; C. Constantinides, 2012

(defun insert (n lst)
 (cond   ((null lst) (list n))
        ;; ((and (null (cdr lst)) (< (car lst) n)) (append lst (list n)))
         ((< n (car lst)) (cons n lst))
         (t (cons (car lst) (insert n (cdr lst))))))