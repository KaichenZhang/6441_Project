;; C. Constantinides, 2009.

(defun addelement (number tree)
  (if (null tree)
      (list number '() '())
    (cond ((< number (car tree))
           (list (car tree)
                 (add number (car (cdr tree)))
                 (car (cdr (cdr tree)))))
          ((> number (car tree))
           (list (car tree)
                 (car (cdr tree))
                 (add number (car (cdr (cdr tree))))))
          (t tree))))
