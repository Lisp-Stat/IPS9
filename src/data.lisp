;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: IPS -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

;;; Part I Looking at Data - Distributions

;; Chapter 1
(defvar eg01-07 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-07ONLINE.csv")
(defvar eg01-11 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-11SCF.csv")
(defvar eg01-14 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-14IQ.csv")
(defvar eg01-16 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-16CALLS.csv")
(defvar eg01-19 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-19COLLEGE.csv")
(defvar eg01-21 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-21PTH.csv")
(defvar eg01-22 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-22VITDS.csv")
(defvar eg01-23 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-23TTS24.csv")
(defvar eg01-31 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-31POETS.csv")
(defvar eg01-36 "https://raw.githubusercontent.com/eepsmedia/codapxyz/master/static-data/csv/Titanic%20Passengers.csv")
;(defvar eg01-36 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-36TITANIC.csv") ;amherst has the wrong data set
(defvar eg01-46 "https://nhorton.people.amherst.edu/ips9/data/chapter01/EG01-46IQ.csv")

;; Chapter 2
(defvar eg02-08 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-008LAUNDRY.csv")
(defvar eg02-09 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-009LAUNDRY.csv")
(defvar eg02-10 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-010LAUND.csv")
(defvar eg02-11 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-011EDSPEND.csv")
(defvar eg02-12 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-012CALCIUM.csv")
(defvar eg02-13 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-013CALCIUM.csv")
(defvar eg02-14 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-014EDSPEND.csv")
(defvar eg02-15 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-015LAUND.csv")
(defvar eg02-16 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-016LAUND.csv")
(defvar eg02-17 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-017EDSPEND.csv")
(defvar eg02-19 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-019FIDGET.csv")
(defvar eg02-20 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-020FIDGET.csv")
(defvar eg02-21 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-021FIDGET.csv")
(defvar eg02-24 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-024FIDGET.csv")
(defvar eg02-25 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-025FIDGET.csv")
(defvar eg02-26 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-026FIDGET.csv")
(defvar eg02-27 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-027INBIRTH.csv")
(defvar eg02-28 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-028HBA1C.csv")
(defvar eg02-29 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-029HBA1C.csv")
(defvar eg02-33 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-033IOM.csv")
(defvar eg02-34 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-034IOM.csv")
(defvar eg02-35 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-035IOM.csv")
(defvar eg02-36 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-036IOM.csv")
(defvar eg02-37 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-037IOM.csv")
(defvar eg02-38 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-038IOM.csv")
(defvar eg02-39 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-039IOM.csv")
(defvar eg02-40 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-040IOM.csv")
(defvar eg02-41 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-041CUSTSER.csv")
(defvar eg02-42 "https://nhorton.people.amherst.edu/ips9/data/chapter02/EG02-042CUSTSER.csv")






