;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021 by Symbolics Pte. Ltd. All rights reserved.

(asdf:defsystem :ips
  :name "Lisp Statistics Examples"
  :version     (:read-file-form "version.sexp")
  :description "Worked examples from the book, The Introduction to the Practice of Statistics"
  :author "Steven Nunez <steve@symbolics.tech>"
  :license :MS-PL
  :depends-on (#:lisp-stat #:dexador #:plot/vglt #:alexandria #:access #:common-lisp-jupyter)
  :in-order-to ((test-op (test-op ips/tests)))
  :components ((:file #:pkgdcls)
	       (:file #:init)
	       (:static-file #:LICENSE)
	       (:module "src"
			:serial t
			:components
			((:file #:data)
			 (:file #:plot)))))

(asdf:defsystem :ips/tests
  :description "Unit tests for Lisp-Stat example project"
  :license :MS-PL
  :depends-on (#:ips #:parachute) ; Replace parachute with a different test framework if you wish.
  :serial t
  :pathname "tests/"
  :components ((:file #:tstpkg)
	       (:file #:example))
  :perform (test-op (o s)
  		    (uiop:symbol-call :parachute :test :ips-tests)))
