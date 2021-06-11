;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021 by Symbolics Pte. Ltd. All rights reserved.

(uiop:define-package #:ips
  (:documentation "Examples from the Introduction to the Practice of Statistics")
  (:use :cl :ls-user :dfio :data-frame :select :alexandria :access)
  (:import-from :vglt :bar-chart :pie-chart)
  (:import-from :plot/text :stem-and-leaf)
  (:export #:plot
	   #:eg01-07
	   #:eg01-11))
