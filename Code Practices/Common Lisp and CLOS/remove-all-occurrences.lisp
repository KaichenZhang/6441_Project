;; C. Constantinides, 2009.

(defun remove-all-occurrences (lst elt)
    (if (null lst)
      nil
      (if (equal (car lst) elt)
        (remove-all-occurrences (cdr lst) elt)
        (cons (car lst) (remove-all-occurrences (cdr lst) elt)))))