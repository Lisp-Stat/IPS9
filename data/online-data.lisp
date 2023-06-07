;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.

(lisp-stat:def sources
    (aops:flatten			;make array one dimensional
     (aops:stack-cols			;combine columns (only one here) 'vertically'
      (aops:recycle #("google")    :inner 406) ;repeat/recycle the contents of the vector (i.e. the 'inner' parts)
      (aops:recycle #("library")   :inner 75)
      (aops:recycle #("wikipedia") :inner 52)
      (aops:recycle #("other")     :inner 19))))

