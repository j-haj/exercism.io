(defpackage #:hello-world
  (:use #:common-lisp)
  (:export #:hello-world)
  (:nicknames #:hw))

(in-package #:hello-world)

(defun hello-world (a)
  "Prints 'Hello World!' if a is nil, otherwise 'Hello {a}!'"
  (format t (if (eq a nil)
              "Hello World!"
              (format nil "Hello ~S!" a))))
