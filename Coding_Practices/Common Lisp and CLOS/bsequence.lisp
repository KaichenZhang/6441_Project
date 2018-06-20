;; C. Constantinides, 2009.

(defun bsequence (n)
  (if (= n 0)
    (cons 0 '())
    (cons n (bsequence(- n 1)))))
