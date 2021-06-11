;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

;;; Utilities for working with Lisp-Stat in Common Lisp Jupyter notebooks

(defun print-df (df)
  "Print a dataframe to a jupyter-notebook cell"
  (df:pprint-markdown df :stream jupyter:*markdown-output*))

(defun alistp (value)
  "Return T if VALUE is an ALIST"
  (and (listp value)
       (every #'consp value)))

(defun vl-to-shasht (spec)
  "Convert a Vega-Lite SPEC, an ALIST, to shasht format"
  (cond
    ((alistp spec)
     (cons :object-alist
           (mapcar (lambda (pair)
                     (cons (car pair)
                           (vl-to-shasht (cdr pair))))
                   spec)))
    ((typep spec '(vector t *))
     (map 'vector #'vl-to-shasht spec))
    (t
     spec)))
