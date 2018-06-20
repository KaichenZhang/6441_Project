;; C. Constantinides, 2009.

(defun nodes (tree)
    (if (null tree)
      0
      (+ 1 (nodes(car (cdr tree))) (nodes (car (cdr (cdr tree)))))))
