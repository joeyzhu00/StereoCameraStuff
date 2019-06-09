;; Auto-generated. Do not edit!


(when (boundp 'interface::Cluster_bound_list)
  (if (not (find-package "INTERFACE"))
    (make-package "INTERFACE"))
  (shadow 'Cluster_bound_list (find-package "INTERFACE")))
(unless (find-package "INTERFACE::CLUSTER_BOUND_LIST")
  (make-package "INTERFACE::CLUSTER_BOUND_LIST"))

(in-package "ROS")
;;//! \htmlinclude Cluster_bound_list.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass interface::Cluster_bound_list
  :super ros::object
  :slots (_header _cluster_bounds _num_clusters ))

(defmethod interface::Cluster_bound_list
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster_bounds __cluster_bounds) (let (r) (dotimes (i 0) (push (instance interface::Cluster_bound :init) r)) r))
    ((:num_clusters __num_clusters) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster_bounds __cluster_bounds)
   (setq _num_clusters (round __num_clusters))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster_bounds
   (&rest __cluster_bounds)
   (if (keywordp (car __cluster_bounds))
       (send* _cluster_bounds __cluster_bounds)
     (progn
       (if __cluster_bounds (setq _cluster_bounds (car __cluster_bounds)))
       _cluster_bounds)))
  (:num_clusters
   (&optional __num_clusters)
   (if __num_clusters (setq _num_clusters __num_clusters)) _num_clusters)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; interface/Cluster_bound[] _cluster_bounds
    (apply #'+ (send-all _cluster_bounds :serialization-length)) 4
    ;; int64 _num_clusters
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; interface/Cluster_bound[] _cluster_bounds
     (write-long (length _cluster_bounds) s)
     (dolist (elem _cluster_bounds)
       (send elem :serialize s)
       )
     ;; int64 _num_clusters
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_clusters (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_clusters) (= (length (_num_clusters . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_clusters . bv) 0) 0) s)
              (write-long (ash (elt (_num_clusters . bv) 1) -1) s))
             ((and (class _num_clusters) (= (length (_num_clusters . bv)) 1)) ;; big1
              (write-long (elt (_num_clusters . bv) 0) s)
              (write-long (if (>= _num_clusters 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_clusters s)(write-long (if (>= _num_clusters 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; interface/Cluster_bound[] _cluster_bounds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_bounds (let (r) (dotimes (i n) (push (instance interface::Cluster_bound :init) r)) r))
     (dolist (elem- _cluster_bounds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int64 _num_clusters
#+(or :alpha :irix6 :x86_64)
      (setf _num_clusters (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_clusters (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get interface::Cluster_bound_list :md5sum-) "3713a3df0748c501c3bdcf9ca17013e9")
(setf (get interface::Cluster_bound_list :datatype-) "interface/Cluster_bound_list")
(setf (get interface::Cluster_bound_list :definition-)
      "Header header

# cluster centroids and bounds in the current frame
Cluster_bound[] cluster_bounds

# number of clusters in the current frame
int64 num_clusters

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
MSG: interface/Cluster_bound
Header header

# contains the centroid location of each cluster and bounds

# centroid location
geometry_msgs/Point32 centroid_location

# cluster min bounds (x_min, y_min, z_min)
geometry_msgs/Point32 min_bound

# cluster max bounds (x_max, y_max, z_max)
geometry_msgs/Point32 max_bound

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



(provide :interface/Cluster_bound_list "3713a3df0748c501c3bdcf9ca17013e9")


