;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

#+nil
(defun plot (spec)
  "Render a Vega-Lite specification, SPEC, in a Jupyter notebook"
  (let ((yason:*list-encoder* 'yason:encode-alist))
    (jupyter:inline-result
     (jsown:parse
      (yason:with-output-to-string* (:stream-symbol s)
	(yason:encode spec s)))
     "application/vnd.vegalite.v3+json")))

(defun plot (spec)
  "Render a Vega-Lite specification, SPEC, in a Jupyter notebook"
  (j:vega-lite (vl-to-shasht spec)))	;CLJ/shasht has a unique encoding for alists
