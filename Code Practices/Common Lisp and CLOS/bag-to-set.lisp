;; C. Constantinides, 2009.

(defun bag-to-set (bag)
  (cond ((null bag) '())
        ((member (car bag) (cdr bag)) (bag-to-set (cdr bag)))
        (t (cons (car bag) (bag-to-set(cdr bag))))))