;; C. Constantinides, 2009.

(defun issubsetp (set1 set2)
  (if (null set1)
    t
    (if (member (car set1) set2)
      (issubsetp (cdr set1) set2)
      nil)))
