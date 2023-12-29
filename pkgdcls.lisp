;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021-2023 by Symbolics Pte. Ltd. All rights reserved.

(uiop:define-package #:ips
  (:documentation "Examples from the Introduction to the Practice of Statistics")
  (:use :lisp-stat)
  (:import-from :plot/text #:stem-and-leaf #:back-to-back-stem-and-leaf)
  (:import-from :num-utils #:sum #:e/ #:e* #:esquare #:square)
  ;; (:import-from :lisp-stat #:variables)
  (:import-from :distributions #:r-normal #:pdf #:cdf)
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
	   #:eg01-46
	   #:eg02-08
	   #:eg02-09
	   #:eg02-10
	   #:eg02-11
	   #:eg02-12
	   #:eg02-13
	   #:eg02-14
	   #:eg02-15
	   #:eg02-16
	   #:eg02-17
	   #:eg02-19
	   #:eg02-20
	   #:eg02-21
	   #:eg02-24
	   #:eg02-25
	   #:eg02-26
	   #:eg02-27
	   #:eg02-28
	   #:eg02-29
	   #:eg02-33
	   #:eg02-34
	   #:eg02-35
	   #:eg02-36
	   #:eg02-37
	   #:eg02-38
	   #:eg02-39
	   #:eg02-40
	   #:eg02-41
	   #:eg02-42))

