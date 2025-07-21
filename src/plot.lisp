;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: IPS -*-
;;; Copyright (c) 2021, 2022, 2025 by Symbolics Pte. Ltd. All rights reserved.
;;; SPDX-License-identifier: MS-PL
(in-package #:ips)

(defun plot (p)
  "Render a Vega-Lite specification, SPEC, in a Jupyter notebook"
  (j:vega-lite (shasht:read-json (with-output-to-string (s)
				   (vega:write-spec p :spec-loc s)))))

