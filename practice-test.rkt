;;; Tests for 

#lang racket
 
(require rackunit
         "practice.rkt")

(define practice-tests
  (test-suite
   "Test suite for practice programs"
    (test-case
     "an atom should be identified as an atom"
     (check-equal? (double-every-other-element '(1 3 5 2 4 6 8 7 9)) '(1 6 5 4 4 12 8 14 9) "Should double every other element")
    )
    (test-case
     "sorts a list using insertion order"
     (check-equal? (isort '(3 2 4 1 5)) '(1 2 3 4 5) "Should be sorted")
     )
    (test-case
     "squaring without recurrsion"
     (check-equal? (square-list '(5 6 4 8 9)) '(25 81) "Returns a list of squares of all odd integers")
     )
    (test-case
     "Should indicate if leap year or not"
     (check-equal? (leap-year 2013) #f "Should return false as it doesn't devide by 4 or 400")
     (check-equal? (leap-year 2000) #f "Should return false as it devides by 100")
     (check-equal? (leap-year 2012) #t "Should return true as it devides by 4")
     )
    (test-case
     "Should replace every second item after first"
     (check-equal? (replace-with 3 '(1 3 5 9 8 2 0)) '(3 3 3 9 3 2 3))
     (check-equal? (replace-with 0 '(1 2 3 4 5)) '(0 2 0 4 0))
     (check-equal? (replace-with 0 '()) '())
     (check-equal? (replace-with 0 '(7)) '(0))
     )
    (test-case
     "Testing myappend"
     (check-equal? (my-append 3 '(1 2 4)) '(3 1 2 4))
    )
    (test-case
     "Testing my-length"
     (check-equal? (my-list-length '(1 2 3 4 5)) 5)
     )
  )
)

(require rackunit/text-ui)
(run-tests practice-tests)