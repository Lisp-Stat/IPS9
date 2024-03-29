;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-Lisp; Package: IPS -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.

;;; Logical pathname setup
(eval-when (:load-toplevel :execute)
  (setf (logical-pathname-translations "ips")
	`(("DATA;**;*.*.*" ,(merge-pathnames "data/**/*.*" (asdf:system-source-directory 'ips)))
	  ("CACHE;**;*.*.*"    ,(merge-pathnames "ips/**/*.*" (uiop:xdg-cache-home)))
	  ("CONFIG;**;*.*.*"   ,(merge-pathnames "ips/**/*.*" (uiop:xdg-config-home))))))
