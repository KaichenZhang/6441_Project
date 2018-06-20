(defun setp (lst)
  (cond
   ((not (listp lst)) nil) 
   ((null lst) t)
   ((not(member (car lst) (cdr lst))) (setp (cdr lst)))
   (t   nil)))