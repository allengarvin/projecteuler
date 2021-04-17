#lang racket

(define *input*
  (map (λ (c) (-(char->integer c) 48))
       ((compose string->list string-trim file->string) "008-input.txt")))

(define (each-cons xs n)
  (cond [(< (length xs) n) (error "each-cons list less than length")]
        [(= (length xs) n) (list xs)]
        [else (cons (take xs n) (each-cons (cdr xs) n))]))

(define (mul xs) (apply * xs))

(displayln (apply max (map mul (each-cons *input* 13))))