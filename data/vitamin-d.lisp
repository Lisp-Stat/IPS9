;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

(defdf vitamin-d (read-csv ips:eg01-22))

(replace-column! vitamin-d 'months #'(lambda (x)
				      (cond ((= x 1) "FebMar")
					    ((= x 2) "AprMay")
					    ((= x 3) "JunJul")
					    ((= x 4) "AugSep")
					    ((= x 5) "OctNov")
					    ((= x 6) "DecJan"))))
