;; Auto-generated. Do not edit!


(when (boundp 'interface::Cluster_bound)
  (if (not (find-package "INTERFACE"))
    (make-package "INTERFACE"))
  (shadow 'Cluster_bound (find-package "INTERFACE")))
(unless (find-package "INTERFACE::CLUSTER_BOUND")
  (make-package "INTERFACE::CLUSTER_BOUND"))

(in-package "ROS")
;;//! \htmlinclude Cluster_bound.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass interface::Cluster_bound
  :super ros::object
  :slots (_header _centroid_location _min_bound _max_bound ))

(defmethod interface::Cluster_bound
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:centroid_location __centroid_location) (instance geometry_msgs::Point32 :init))
    ((:min_bound __min_bound) (instance geometry_msgs::Point32 :init))
    ((:max_bound __max_bound) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _centroid_location __centroid_location)
   (setq _min_bound __min_bound)
   (setq _max_bound __max_bound)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:centroid_location
   (&rest __centroid_location)
   (if (keywordp (car __centroid_location))
       (send* _centroid_location __centroid_location)
     (progn
       (if __centroid_location (setq _centroid_location (car __centroid_location)))
       _centroid_location)))
  (:min_bound
   (&rest __min_bound)
   (if (keywordp (car __min_bound))
       (send* _min_bound __min_bound)
     (progn
       (if __min_bound (setq _min_bound (car __min_bound)))
       _min_bound)))
  (:max_bound
   (&rest __max_bound)
   (if (keywordp (car __max_bound))
       (send* _max_bound __max_bound)
     (progn
       (if __max_bound (setq _max_bound (car __max_bound)))
       _max_bound)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point32 _centroid_location
    (send _centroid_location :serialization-length)
    ;; geometry_msgs/Point32 _min_bound
    (send _min_bound :serialization-length)
    ;; geometry_msgs/Point32 _max_bound
    (send _max_bound :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point32 _centroid_location
       (send _centroid_location :serialize s)
     ;; geometry_msgs/Point32 _min_bound
       (send _min_bound :serialize s)
     ;; geometry_msgs/Point32 _max_bound
       (send _max_bound :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point32 _centroid_location
     (send _centroid_location :deserialize buf ptr-) (incf ptr- (send _centroid_location :serialization-length))
   ;; geometry_msgs/Point32 _min_bound
     (send _min_bound :deserialize buf ptr-) (incf ptr- (send _min_bound :serialization-length))
   ;; geometry_msgs/Point32 _max_bound
     (send _max_bound :deserialize buf ptr-) (incf ptr- (send _max_bound :serialization-length))
   ;;
   self)
  )

(setf (get interface::Cluster_bound :md5sum-) "1f26147d262f31105abc5a4203e9e284")
(setf (get interface::Cluster_bound :datatype-) "interface/Cluster_bound")
(setf (get interface::Cluster_bound :definition-)
      "Header header

# contains the centroid location of each cluster and bounds

# centroid location
geometry_msgs/Point32 centroid_location

# cluster min bounds (x_min, y_min, z_min)
geometry_msgs/Point32 min_bound

# cluster max bounds (x_max, y_max, z_max)
geometry_msgs/Point32 max_bound

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :interface/Cluster_bound "1f26147d262f31105abc5a4203e9e284")


