; Auto-generated. Do not edit!


(cl:in-package interface-msg)


;//! \htmlinclude Cluster_bound_list.msg.html

(cl:defclass <Cluster_bound_list> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cluster_bounds
    :reader cluster_bounds
    :initarg :cluster_bounds
    :type (cl:vector interface-msg:Cluster_bound)
   :initform (cl:make-array 0 :element-type 'interface-msg:Cluster_bound :initial-element (cl:make-instance 'interface-msg:Cluster_bound)))
   (num_clusters
    :reader num_clusters
    :initarg :num_clusters
    :type cl:integer
    :initform 0))
)

(cl:defclass Cluster_bound_list (<Cluster_bound_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster_bound_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster_bound_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-msg:<Cluster_bound_list> is deprecated: use interface-msg:Cluster_bound_list instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Cluster_bound_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:header-val is deprecated.  Use interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cluster_bounds-val :lambda-list '(m))
(cl:defmethod cluster_bounds-val ((m <Cluster_bound_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:cluster_bounds-val is deprecated.  Use interface-msg:cluster_bounds instead.")
  (cluster_bounds m))

(cl:ensure-generic-function 'num_clusters-val :lambda-list '(m))
(cl:defmethod num_clusters-val ((m <Cluster_bound_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:num_clusters-val is deprecated.  Use interface-msg:num_clusters instead.")
  (num_clusters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster_bound_list>) ostream)
  "Serializes a message object of type '<Cluster_bound_list>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cluster_bounds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cluster_bounds))
  (cl:let* ((signed (cl:slot-value msg 'num_clusters)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster_bound_list>) istream)
  "Deserializes a message object of type '<Cluster_bound_list>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cluster_bounds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cluster_bounds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'interface-msg:Cluster_bound))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_clusters) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster_bound_list>)))
  "Returns string type for a message object of type '<Cluster_bound_list>"
  "interface/Cluster_bound_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster_bound_list)))
  "Returns string type for a message object of type 'Cluster_bound_list"
  "interface/Cluster_bound_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster_bound_list>)))
  "Returns md5sum for a message object of type '<Cluster_bound_list>"
  "3713a3df0748c501c3bdcf9ca17013e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster_bound_list)))
  "Returns md5sum for a message object of type 'Cluster_bound_list"
  "3713a3df0748c501c3bdcf9ca17013e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster_bound_list>)))
  "Returns full string definition for message of type '<Cluster_bound_list>"
  (cl:format cl:nil "Header header~%~%# cluster centroids and bounds in the current frame~%Cluster_bound[] cluster_bounds~%~%# number of clusters in the current frame~%int64 num_clusters~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: interface/Cluster_bound~%Header header~%~%# contains the centroid location of each cluster and bounds~%~%# centroid location~%geometry_msgs/Point32 centroid_location~%~%# cluster min bounds (x_min, y_min, z_min)~%geometry_msgs/Point32 min_bound~%~%# cluster max bounds (x_max, y_max, z_max)~%geometry_msgs/Point32 max_bound~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster_bound_list)))
  "Returns full string definition for message of type 'Cluster_bound_list"
  (cl:format cl:nil "Header header~%~%# cluster centroids and bounds in the current frame~%Cluster_bound[] cluster_bounds~%~%# number of clusters in the current frame~%int64 num_clusters~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: interface/Cluster_bound~%Header header~%~%# contains the centroid location of each cluster and bounds~%~%# centroid location~%geometry_msgs/Point32 centroid_location~%~%# cluster min bounds (x_min, y_min, z_min)~%geometry_msgs/Point32 min_bound~%~%# cluster max bounds (x_max, y_max, z_max)~%geometry_msgs/Point32 max_bound~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster_bound_list>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cluster_bounds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster_bound_list>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster_bound_list
    (cl:cons ':header (header msg))
    (cl:cons ':cluster_bounds (cluster_bounds msg))
    (cl:cons ':num_clusters (num_clusters msg))
))
