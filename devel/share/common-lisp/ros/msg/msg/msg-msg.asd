
(cl:in-package :asdf)

(defsystem "msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "req" :depends-on ("_package_req"))
    (:file "_package_req" :depends-on ("_package"))
  ))