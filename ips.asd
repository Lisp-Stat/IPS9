;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021 by Symbolics Pte. Ltd. All rights reserved.

(asdf:defsystem #:ips
  :name "Lisp Statistics Examples"
  :version     (:read-file-form "version.sexp")
  :description "Worked examples from the book, The Introduction to the Practice of Statistics"
  :author "Steven Nunez <steve@symbolics.tech>"
  :license :MS-PL
  :depends-on (#:lisp-stat #:dexador #:plot/vglt #:plot/text #:alexandria #:access #:jsown #:common-lisp-jupyter)
  :in-order-to ((test-op (test-op ips/tests)))
  :components ((:file #:pkgdcls)
	       (:file #:init)
	       (:static-file #:LICENSE)
	       (:module "src"
			:serial t
			:components
			((:file #:data)
			 (:file #:utils)
			 (:file #:plot)))))
