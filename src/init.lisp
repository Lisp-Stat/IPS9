;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-Lisp; Package: IPS -*-
;;; Copyright (c) 2021-2022, 2025 by Symbolics Pte. Ltd. All rights reserved.
;;; SPDX-License-identifier: MS-PL

;;; Logical pathname setup
(eval-when (:load-toplevel :execute)
  (setf (logical-pathname-translations "ips")
	`(("DATA;**;*.*.*" ,(merge-pathnames "data/**/*.*" (asdf:system-source-directory 'ips)))
	  ("CACHE;**;*.*.*"    ,(merge-pathnames "ips/**/*.*" (uiop:xdg-cache-home)))
	  ("CONFIG;**;*.*.*"   ,(merge-pathnames "ips/**/*.*" (uiop:xdg-config-home))))))

;; This is temporary. Delete after the next Quicklisp update.
;; Expect a redefinition warning
(defmacro vega:defplot (name &body spec)
  "Define a plot NAME. Returns an object of PLOT class bound to a symbol NAME.  Adds symbol to *all-plots*."
  (proclaim `(special ,name))
  `(progn
     (defparameter ,name (vega::%defplot ',name ,@spec))
     (setf (gethash (vega::plot-name ,name) vega:*all-plots*) ,name)
     ,name))
