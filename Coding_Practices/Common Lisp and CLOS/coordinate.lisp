;; C. Constantinides, 2009.

(defclass semaphone()
  s)

(defmethod initialize ((sem semaphore))
  (setf (slot-value s 'sem) 0))

(defmethod increment ((sem semaphore))
  (+ 1 (slot-value s 'sem)))

(defmethod decrement ((sem semaphore))
  (- 1 (slot-value s 'sem)))