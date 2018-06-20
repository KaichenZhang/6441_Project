;; C. Constantinides, 2009.

(defun count-nodes (tree)
    (if (null tree)
        0
        (+ 1 
           (count-nodes (car (cdr tree))) 
           (count-nodes (car (cdr (cdr tree)))))))