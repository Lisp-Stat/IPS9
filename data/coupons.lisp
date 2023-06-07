;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-
;;; Copyright (c) 2022 by Symbolics Pte. Ltd. All rights reserved.
(in-package #:ips)

(defdf coupons (plist-df '(:type      #("Italian" "Italian" "BBQ" "BBQ" "Mexican" "Mexican" "Seafood")
			   :name      #("Domo's" "Mama Rita's" "Smokey McSween's" "Smokey Grill" "Dos Amigos" "Holy Guacamole" "Sea Grill")
			   :item      #("Pizza" "Pizza" "Barbecue" "Ribs" "Tacos" "Steak fajitas" "Shrimp platter")
			   :Reg-Price  #(20 20 30 20 16 13 20)
			   :Disc-Price #(10 12 17 11 8 8 11))))

(set-properties coupons :unit '(:Reg-Price  "USD"
				:Disc-Price "USD"))

(set-properties coupons :label '(:type "Type of restaurant"
				 :name "Name of restaurant"
				 :item "Discounted item"
				 :Reg-Price "Regular price of item"
				 :Disc-Price "Discounted price of item"))

(heuristicate-types coupons)

(set-properties coupons :type '(:type :categorical
				:name :categorical
				:item :categorical))

(print-data coupons)
