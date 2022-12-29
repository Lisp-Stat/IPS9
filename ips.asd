;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.

(defsystem #:ips
  :name "Introduction to the Practice of Statistics in Lisp-Stat"
  :version     "1.0.1"
  :description "Worked examples from the book, The Introduction to the Practice of Statistics"
  :author "Steven Nunez <steve@symbolics.tech>"
  :license :MS-PL
  :depends-on (#:lisp-stat
	       #:dexador
	       #:plot/vega
	       #:plot/text
	       #:alexandria
;;	       #:alexandria+
	       #:jsown
	       #:common-lisp-jupyter)
  :components ((:file #:pkgdcls)
	       (:file #:init)
	       (:static-file #:LICENSE)
	       (:module "src"
			:serial t
			:components ((:file #:data)
				     (:file #:utils)
				     (:file #:plot)))))
