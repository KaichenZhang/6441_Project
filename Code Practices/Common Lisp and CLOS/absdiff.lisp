;; C. Constantinides, 2009.

(defun absdiff (x y)
  (if (> x y)
    (- x y)
    (- y x)))
