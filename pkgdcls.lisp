;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.

(uiop:define-package #:ips
  (:documentation "Examples from the Introduction to the Practice of Statistics")
  (:use :cl :ls-user :dfio :data-frame :select)
  (:import-from :plot/text #:stem-and-leaf #:back-to-back-stem-and-leaf)
  (:import-from :num-utils #:sum #:e/ #:e*)
  (:import-from :lisp-stat #:variables)
  (:import-from :jupyter #:vega-lite)
  (:export #:plot
	   #:eg01-07
	   #:eg01-11
	   #:eg01-14
	   #:eg01-16
	   #:eg01-19
	   #:eg01-21
	   #:eg01-22
	   #:eg01-23
	   #:eg01-31
	   #:eg01-36
	   #:eg01-46))
