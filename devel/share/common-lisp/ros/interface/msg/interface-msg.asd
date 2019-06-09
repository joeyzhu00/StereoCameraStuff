
(cl:in-package :asdf)

(defsystem "interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Cluster_bound" :depends-on ("_package_Cluster_bound"))
    (:file "_package_Cluster_bound" :depends-on ("_package"))
    (:file "Cluster_bound_list" :depends-on ("_package_Cluster_bound_list"))
    (:file "_package_Cluster_bound_list" :depends-on ("_package"))
  ))