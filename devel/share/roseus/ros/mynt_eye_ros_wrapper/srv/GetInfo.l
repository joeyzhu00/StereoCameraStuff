;; Auto-generated. Do not edit!


(when (boundp 'mynt_eye_ros_wrapper::GetInfo)
  (if (not (find-package "MYNT_EYE_ROS_WRAPPER"))
    (make-package "MYNT_EYE_ROS_WRAPPER"))
  (shadow 'GetInfo (find-package "MYNT_EYE_ROS_WRAPPER")))
(unless (find-package "MYNT_EYE_ROS_WRAPPER::GETINFO")
  (make-package "MYNT_EYE_ROS_WRAPPER::GETINFO"))
(unless (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST")
  (make-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(unless (find-package "MYNT_EYE_ROS_WRAPPER::GETINFORESPONSE")
  (make-package "MYNT_EYE_ROS_WRAPPER::GETINFORESPONSE"))

(in-package "ROS")





(intern "*DEVICE_NAME*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*DEVICE_NAME* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*DEVICE_NAME* 0)
(intern "*SERIAL_NUMBER*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*SERIAL_NUMBER* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*SERIAL_NUMBER* 1)
(intern "*FIRMWARE_VERSION*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*FIRMWARE_VERSION* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*FIRMWARE_VERSION* 2)
(intern "*HARDWARE_VERSION*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*HARDWARE_VERSION* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*HARDWARE_VERSION* 3)
(intern "*SPEC_VERSION*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*SPEC_VERSION* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*SPEC_VERSION* 4)
(intern "*LENS_TYPE*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*LENS_TYPE* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*LENS_TYPE* 5)
(intern "*IMU_TYPE*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*IMU_TYPE* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*IMU_TYPE* 6)
(intern "*NOMINAL_BASELINE*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*NOMINAL_BASELINE* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*NOMINAL_BASELINE* 7)
(intern "*AUXILIARY_CHIP_VERSION*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*AUXILIARY_CHIP_VERSION* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*AUXILIARY_CHIP_VERSION* 8)
(intern "*ISP_VERSION*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*ISP_VERSION* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*ISP_VERSION* 9)
(intern "*IMG_INTRINSICS*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*IMG_INTRINSICS* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*IMG_INTRINSICS* 10)
(intern "*IMG_EXTRINSICS_RTOL*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*IMG_EXTRINSICS_RTOL* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*IMG_EXTRINSICS_RTOL* 11)
(intern "*IMU_INTRINSICS*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*IMU_INTRINSICS* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*IMU_INTRINSICS* 12)
(intern "*IMU_EXTRINSICS*" (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(shadow '*IMU_EXTRINSICS* (find-package "MYNT_EYE_ROS_WRAPPER::GETINFOREQUEST"))
(defconstant mynt_eye_ros_wrapper::GetInfoRequest::*IMU_EXTRINSICS* 13)
(defclass mynt_eye_ros_wrapper::GetInfoRequest
  :super ros::object
  :slots (_key ))

(defmethod mynt_eye_ros_wrapper::GetInfoRequest
  (:init
   (&key
    ((:key __key) 0)
    )
   (send-super :init)
   (setq _key (round __key))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; uint32 _key
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _key
       (write-long _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mynt_eye_ros_wrapper::GetInfoResponse
  :super ros::object
  :slots (_value ))

(defmethod mynt_eye_ros_wrapper::GetInfoResponse
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mynt_eye_ros_wrapper::GetInfo
  :super ros::object
  :slots ())

(setf (get mynt_eye_ros_wrapper::GetInfo :md5sum-) "422c950b17bb0d86a2478389576d7ab5")
(setf (get mynt_eye_ros_wrapper::GetInfo :datatype-) "mynt_eye_ros_wrapper/GetInfo")
(setf (get mynt_eye_ros_wrapper::GetInfo :request) mynt_eye_ros_wrapper::GetInfoRequest)
(setf (get mynt_eye_ros_wrapper::GetInfo :response) mynt_eye_ros_wrapper::GetInfoResponse)

(defmethod mynt_eye_ros_wrapper::GetInfoRequest
  (:response () (instance mynt_eye_ros_wrapper::GetInfoResponse :init)))

(setf (get mynt_eye_ros_wrapper::GetInfoRequest :md5sum-) "422c950b17bb0d86a2478389576d7ab5")
(setf (get mynt_eye_ros_wrapper::GetInfoRequest :datatype-) "mynt_eye_ros_wrapper/GetInfoRequest")
(setf (get mynt_eye_ros_wrapper::GetInfoRequest :definition-)
      "uint32 DEVICE_NAME=0
uint32 SERIAL_NUMBER=1
uint32 FIRMWARE_VERSION=2
uint32 HARDWARE_VERSION=3
uint32 SPEC_VERSION=4
uint32 LENS_TYPE=5
uint32 IMU_TYPE=6
uint32 NOMINAL_BASELINE=7
uint32 AUXILIARY_CHIP_VERSION=8
uint32 ISP_VERSION=9
uint32 IMG_INTRINSICS=10
uint32 IMG_EXTRINSICS_RTOL=11
uint32 IMU_INTRINSICS=12
uint32 IMU_EXTRINSICS=13
uint32 key
---
string value

")

(setf (get mynt_eye_ros_wrapper::GetInfoResponse :md5sum-) "422c950b17bb0d86a2478389576d7ab5")
(setf (get mynt_eye_ros_wrapper::GetInfoResponse :datatype-) "mynt_eye_ros_wrapper/GetInfoResponse")
(setf (get mynt_eye_ros_wrapper::GetInfoResponse :definition-)
      "uint32 DEVICE_NAME=0
uint32 SERIAL_NUMBER=1
uint32 FIRMWARE_VERSION=2
uint32 HARDWARE_VERSION=3
uint32 SPEC_VERSION=4
uint32 LENS_TYPE=5
uint32 IMU_TYPE=6
uint32 NOMINAL_BASELINE=7
uint32 AUXILIARY_CHIP_VERSION=8
uint32 ISP_VERSION=9
uint32 IMG_INTRINSICS=10
uint32 IMG_EXTRINSICS_RTOL=11
uint32 IMU_INTRINSICS=12
uint32 IMU_EXTRINSICS=13
uint32 key
---
string value

")



(provide :mynt_eye_ros_wrapper/GetInfo "422c950b17bb0d86a2478389576d7ab5")


