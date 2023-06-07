;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2022 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

(defdf college-students (read-csv eg01-19))

;(replace-column! college-students 'undergrads (e/ college-students:undergraduates 1000))
(replace-column! ips::college-students 'ips::undergrads (e/ (select ips::college-students t 'ips::undergrads) 1000))


;(print-data coupons)
