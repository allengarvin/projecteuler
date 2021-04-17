#lang racket
(apply + (filter (λ (d) (or (zero? (remainder d 5)) (zero? (remainder d 3)))) (range 1 1000)))