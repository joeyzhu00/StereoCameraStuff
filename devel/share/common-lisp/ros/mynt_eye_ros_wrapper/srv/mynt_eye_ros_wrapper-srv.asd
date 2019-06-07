
(cl:in-package :asdf)

(defsystem "mynt_eye_ros_wrapper-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetInfo" :depends-on ("_package_GetInfo"))
    (:file "_package_GetInfo" :depends-on ("_package"))
  ))