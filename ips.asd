;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021, 2023, 2025 by Symbolics Pte. Ltd. All rights reserved.
;;; SPDX-License-identifier: MS-PL

(defsystem #:ips
  :name "Introduction to the Practice of Statistics in Lisp-Stat"
  :version     "1.4.0"
  :description "Worked examples from the book, The Introduction to the Practice of Statistics"
  :author "Steven Nunez <steve@symbolics.tech>"
  :license :MS-PL
  :depends-on (#:lisp-stat
	       #:dexador
	       #:plot/vega
	       #:plot/text
	       #:alexandria
	       #:jsown
	       #:common-lisp-jupyter)
  :components ((:static-file #:LICENSE)
	       (:module "src"
			:serial t
			:components ((:file #:pkgdcls)
				     (:file #:init)
				     (:file #:data)
				     (:file #:utils)
				     (:file #:plot)))))
