; Auto-generated. Do not edit!


(cl:in-package interface-msg)


;//! \htmlinclude Cluster_bound.msg.html

(cl:defclass <Cluster_bound> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (centroid_location
    :reader centroid_location
    :initarg :centroid_location
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (min_bound
    :reader min_bound
    :initarg :min_bound
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (max_bound
    :reader max_bound
    :initarg :max_bound
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass Cluster_bound (<Cluster_bound>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster_bound>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster_bound)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-msg:<Cluster_bound> is deprecated: use interface-msg:Cluster_bound instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Cluster_bound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:header-val is deprecated.  Use interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'centroid_location-val :lambda-list '(m))
(cl:defmethod centroid_location-val ((m <Cluster_bound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:centroid_location-val is deprecated.  Use interface-msg:centroid_location instead.")
  (centroid_location m))

(cl:ensure-generic-function 'min_bound-val :lambda-list '(m))
(cl:defmethod min_bound-val ((m <Cluster_bound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:min_bound-val is deprecated.  Use interface-msg:min_bound instead.")
  (min_bound m))

(cl:ensure-generic-function 'max_bound-val :lambda-list '(m))
(cl:defmethod max_bound-val ((m <Cluster_bound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:max_bound-val is deprecated.  Use interface-msg:max_bound instead.")
  (max_bound m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster_bound>) ostream)
  "Serializes a message object of type '<Cluster_bound>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min_bound) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_bound) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster_bound>) istream)
  "Deserializes a message object of type '<Cluster_bound>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min_bound) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_bound) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster_bound>)))
  "Returns string type for a message object of type '<Cluster_bound>"
  "interface/Cluster_bound")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster_bound)))
  "Returns string type for a message object of type 'Cluster_bound"
  "interface/Cluster_bound")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster_bound>)))
  "Returns md5sum for a message object of type '<Cluster_bound>"
  "1f26147d262f31105abc5a4203e9e284")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster_bound)))
  "Returns md5sum for a message object of type 'Cluster_bound"
  "1f26147d262f31105abc5a4203e9e284")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster_bound>)))
  "Returns full string definition for message of type '<Cluster_bound>"
  (cl:format cl:nil "Header header~%~%# contains the centroid location of each cluster and bounds~%~%# centroid location~%geometry_msgs/Point32 centroid_location~%~%# cluster min bounds (x_min, y_min, z_min)~%geometry_msgs/Point32 min_bound~%~%# cluster max bounds (x_max, y_max, z_max)~%geometry_msgs/Point32 max_bound~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster_bound)))
  "Returns full string definition for message of type 'Cluster_bound"
  (cl:format cl:nil "Header header~%~%# contains the centroid location of each cluster and bounds~%~%# centroid location~%geometry_msgs/Point32 centroid_location~%~%# cluster min bounds (x_min, y_min, z_min)~%geometry_msgs/Point32 min_bound~%~%# cluster max bounds (x_max, y_max, z_max)~%geometry_msgs/Point32 max_bound~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster_bound>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min_bound))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_bound))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster_bound>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster_bound
    (cl:cons ':header (header msg))
    (cl:cons ':centroid_location (centroid_location msg))
    (cl:cons ':min_bound (min_bound msg))
    (cl:cons ':max_bound (max_bound msg))
))
