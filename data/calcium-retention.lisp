;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2023 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

(defdf calcium-retention (read-csv ips:eg02-12))

(heuristicate-types calcium-retention)

(set-properties calcium-retention :unit '(:caintake    "mg/d"
					  :caretention "mg/d"))

(set-properties calcium-retention :label '(:caintake "Calcium intake"
					   :caretention "Calcium retention"
					   :logret    "Log of calcium retention"))

;;; This data set contains a mixture of integer and float values.  Convert to double-float.
(map nil #'(lambda (key)
	     (let ((data (column calcium-retention key)))
	       (replace-column! calcium-retention
				key
				(as-simple-double-float-vector data))))
     (keys calcium-retention))

