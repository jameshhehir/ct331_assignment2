#lang racket

;A
(define (ins_beg a b)         
  (cons a b))                 

(ins_beg 'a '(b c d))
(ins_beg '(a b) '(b c d))

;B
(define (ins_end a b)        
  (append b (list a)))

(ins_end 'a '(b c d))
(ins_end '(a b) '(b c d))

;C
(define (cout_top_level tree)
  (if (or (not (list? tree)) (null? tree)) 0         
      (+ 1 (apply max (map cout_top_level tree)))))  

(cout_top_level '(1 2 3(4 5 6)))

;D
(define (count_instances key lst)
   (if (null? lst)                  
       0
       (if (eq? key (car lst))      
           (+ 1 (count_instances key (cdr lst)))
           (count_instances key (cdr lst)))))

(count_instances 7 '(4 4 5 7 7 6 7 9 7))

;E
(define (count_instances_tr key lst) 			
  (let total ((lst lst) (n 0))
    (if (null? lst)
        n
        (total (cdr lst)
                  (if (eq? key (car lst))
                      (+ n 1)
                      n)))))
(count_instances_tr 7 '(4 4 5 7 7 6 7 9 7))

;F
(define (count_instances_deep lst)
  (cond ((null? lst) 0)
        ((list? lst) (+ (count_instances_deep (car lst)) (count_instances_deep (cdr lst))))
        (else 1)))

(count_instances_deep '((2 2) 7 (3 4)))
