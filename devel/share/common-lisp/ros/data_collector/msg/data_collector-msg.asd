
(cl:in-package :asdf)

(defsystem "data_collector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Ball_Car" :depends-on ("_package_Ball_Car"))
    (:file "_package_Ball_Car" :depends-on ("_package"))
  ))