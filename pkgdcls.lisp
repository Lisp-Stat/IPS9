;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021 by Symbolics Pte. Ltd. All rights reserved.

(uiop:define-package :ips
  (:documentation "Examples from The Introduction to the Practice of Statistics")
  (:use :cl :ls-user :dfio :data-frame :vglt :alexandria :access)
  (:export #:plot))

