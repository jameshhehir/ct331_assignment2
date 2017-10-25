#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

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


