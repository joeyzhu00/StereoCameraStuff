; Auto-generated. Do not edit!


(cl:in-package mynt_eye_ros_wrapper-srv)


;//! \htmlinclude GetInfo-request.msg.html

(cl:defclass <GetInfo-request> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0))
)

(cl:defclass GetInfo-request (<GetInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mynt_eye_ros_wrapper-srv:<GetInfo-request> is deprecated: use mynt_eye_ros_wrapper-srv:GetInfo-request instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <GetInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mynt_eye_ros_wrapper-srv:key-val is deprecated.  Use mynt_eye_ros_wrapper-srv:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetInfo-request>)))
    "Constants for message type '<GetInfo-request>"
  '((:DEVICE_NAME . 0)
    (:SERIAL_NUMBER . 1)
    (:FIRMWARE_VERSION . 2)
    (:HARDWARE_VERSION . 3)
    (:SPEC_VERSION . 4)
    (:LENS_TYPE . 5)
    (:IMU_TYPE . 6)
    (:NOMINAL_BASELINE . 7)
    (:AUXILIARY_CHIP_VERSION . 8)
    (:ISP_VERSION . 9)
    (:IMG_INTRINSICS . 10)
    (:IMG_EXTRINSICS_RTOL . 11)
    (:IMU_INTRINSICS . 12)
    (:IMU_EXTRINSICS . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetInfo-request)))
    "Constants for message type 'GetInfo-request"
  '((:DEVICE_NAME . 0)
    (:SERIAL_NUMBER . 1)
    (:FIRMWARE_VERSION . 2)
    (:HARDWARE_VERSION . 3)
    (:SPEC_VERSION . 4)
    (:LENS_TYPE . 5)
    (:IMU_TYPE . 6)
    (:NOMINAL_BASELINE . 7)
    (:AUXILIARY_CHIP_VERSION . 8)
    (:ISP_VERSION . 9)
    (:IMG_INTRINSICS . 10)
    (:IMG_EXTRINSICS_RTOL . 11)
    (:IMU_INTRINSICS . 12)
    (:IMU_EXTRINSICS . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInfo-request>) ostream)
  "Serializes a message object of type '<GetInfo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInfo-request>) istream)
  "Deserializes a message object of type '<GetInfo-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInfo-request>)))
  "Returns string type for a service object of type '<GetInfo-request>"
  "mynt_eye_ros_wrapper/GetInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInfo-request)))
  "Returns string type for a service object of type 'GetInfo-request"
  "mynt_eye_ros_wrapper/GetInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInfo-request>)))
  "Returns md5sum for a message object of type '<GetInfo-request>"
  "422c950b17bb0d86a2478389576d7ab5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInfo-request)))
  "Returns md5sum for a message object of type 'GetInfo-request"
  "422c950b17bb0d86a2478389576d7ab5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInfo-request>)))
  "Returns full string definition for message of type '<GetInfo-request>"
  (cl:format cl:nil "uint32 DEVICE_NAME=0~%uint32 SERIAL_NUMBER=1~%uint32 FIRMWARE_VERSION=2~%uint32 HARDWARE_VERSION=3~%uint32 SPEC_VERSION=4~%uint32 LENS_TYPE=5~%uint32 IMU_TYPE=6~%uint32 NOMINAL_BASELINE=7~%uint32 AUXILIARY_CHIP_VERSION=8~%uint32 ISP_VERSION=9~%uint32 IMG_INTRINSICS=10~%uint32 IMG_EXTRINSICS_RTOL=11~%uint32 IMU_INTRINSICS=12~%uint32 IMU_EXTRINSICS=13~%uint32 key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInfo-request)))
  "Returns full string definition for message of type 'GetInfo-request"
  (cl:format cl:nil "uint32 DEVICE_NAME=0~%uint32 SERIAL_NUMBER=1~%uint32 FIRMWARE_VERSION=2~%uint32 HARDWARE_VERSION=3~%uint32 SPEC_VERSION=4~%uint32 LENS_TYPE=5~%uint32 IMU_TYPE=6~%uint32 NOMINAL_BASELINE=7~%uint32 AUXILIARY_CHIP_VERSION=8~%uint32 ISP_VERSION=9~%uint32 IMG_INTRINSICS=10~%uint32 IMG_EXTRINSICS_RTOL=11~%uint32 IMU_INTRINSICS=12~%uint32 IMU_EXTRINSICS=13~%uint32 key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInfo-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInfo-request
    (cl:cons ':key (key msg))
))
;//! \htmlinclude GetInfo-response.msg.html

(cl:defclass <GetInfo-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass GetInfo-response (<GetInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mynt_eye_ros_wrapper-srv:<GetInfo-response> is deprecated: use mynt_eye_ros_wrapper-srv:GetInfo-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mynt_eye_ros_wrapper-srv:value-val is deprecated.  Use mynt_eye_ros_wrapper-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInfo-response>) ostream)
  "Serializes a message object of type '<GetInfo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInfo-response>) istream)
  "Deserializes a message object of type '<GetInfo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInfo-response>)))
  "Returns string type for a service object of type '<GetInfo-response>"
  "mynt_eye_ros_wrapper/GetInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInfo-response)))
  "Returns string type for a service object of type 'GetInfo-response"
  "mynt_eye_ros_wrapper/GetInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInfo-response>)))
  "Returns md5sum for a message object of type '<GetInfo-response>"
  "422c950b17bb0d86a2478389576d7ab5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInfo-response)))
  "Returns md5sum for a message object of type 'GetInfo-response"
  "422c950b17bb0d86a2478389576d7ab5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInfo-response>)))
  "Returns full string definition for message of type '<GetInfo-response>"
  (cl:format cl:nil "string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInfo-response)))
  "Returns full string definition for message of type 'GetInfo-response"
  (cl:format cl:nil "string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInfo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInfo-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInfo)))
  'GetInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInfo)))
  'GetInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInfo)))
  "Returns string type for a service object of type '<GetInfo>"
  "mynt_eye_ros_wrapper/GetInfo")