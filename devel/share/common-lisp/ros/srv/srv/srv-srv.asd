
(cl:in-package :asdf)

(defsystem "srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "communicate" :depends-on ("_package_communicate"))
    (:file "_package_communicate" :depends-on ("_package"))
  ))