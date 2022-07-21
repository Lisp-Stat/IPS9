;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: IPS -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

;;; Utilities for working with Lisp-Stat in Common Lisp Jupyter notebooks

(defun print-df (df)
  "Print a data-frame to a jupyter-notebook cell"
  (df:print-markdown df :stream jupyter:*markdown-output*))

(defun vl-to-shasht (spec)
  "Convert a Vega-Lite SPEC, an ALIST, to shasht format"
  (cond
    ((alistp spec) (cons :object-alist
			 (mapcar (lambda (pair)
				   (cons (car pair)
					 (vl-to-shasht (cdr pair))))
				 spec)))
    ((typep spec '(vector t *)) (map 'vector #'vl-to-shasht spec))
    (t spec)))
