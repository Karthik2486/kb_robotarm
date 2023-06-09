;; Auto-generated. Do not edit!


(when (boundp 'robotarm_controller::AnglesConverter)
  (if (not (find-package "ROBOTARM_CONTROLLER"))
    (make-package "ROBOTARM_CONTROLLER"))
  (shadow 'AnglesConverter (find-package "ROBOTARM_CONTROLLER")))
(unless (find-package "ROBOTARM_CONTROLLER::ANGLESCONVERTER")
  (make-package "ROBOTARM_CONTROLLER::ANGLESCONVERTER"))
(unless (find-package "ROBOTARM_CONTROLLER::ANGLESCONVERTERREQUEST")
  (make-package "ROBOTARM_CONTROLLER::ANGLESCONVERTERREQUEST"))
(unless (find-package "ROBOTARM_CONTROLLER::ANGLESCONVERTERRESPONSE")
  (make-package "ROBOTARM_CONTROLLER::ANGLESCONVERTERRESPONSE"))

(in-package "ROS")





(defclass robotarm_controller::AnglesConverterRequest
  :super ros::object
  :slots (_base _shoulder _elbow _gripper ))

(defmethod robotarm_controller::AnglesConverterRequest
  (:init
   (&key
    ((:base __base) 0.0)
    ((:shoulder __shoulder) 0.0)
    ((:elbow __elbow) 0.0)
    ((:gripper __gripper) 0.0)
    )
   (send-super :init)
   (setq _base (float __base))
   (setq _shoulder (float __shoulder))
   (setq _elbow (float __elbow))
   (setq _gripper (float __gripper))
   self)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:shoulder
   (&optional __shoulder)
   (if __shoulder (setq _shoulder __shoulder)) _shoulder)
  (:elbow
   (&optional __elbow)
   (if __elbow (setq _elbow __elbow)) _elbow)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:serialization-length
   ()
   (+
    ;; float64 _base
    8
    ;; float64 _shoulder
    8
    ;; float64 _elbow
    8
    ;; float64 _gripper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _base
       (sys::poke _base (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shoulder
       (sys::poke _shoulder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elbow
       (sys::poke _elbow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gripper
       (sys::poke _gripper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _base
     (setq _base (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shoulder
     (setq _shoulder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elbow
     (setq _elbow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gripper
     (setq _gripper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robotarm_controller::AnglesConverterResponse
  :super ros::object
  :slots (_base _shoulder _elbow _gripper ))

(defmethod robotarm_controller::AnglesConverterResponse
  (:init
   (&key
    ((:base __base) 0.0)
    ((:shoulder __shoulder) 0.0)
    ((:elbow __elbow) 0.0)
    ((:gripper __gripper) 0.0)
    )
   (send-super :init)
   (setq _base (float __base))
   (setq _shoulder (float __shoulder))
   (setq _elbow (float __elbow))
   (setq _gripper (float __gripper))
   self)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:shoulder
   (&optional __shoulder)
   (if __shoulder (setq _shoulder __shoulder)) _shoulder)
  (:elbow
   (&optional __elbow)
   (if __elbow (setq _elbow __elbow)) _elbow)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:serialization-length
   ()
   (+
    ;; float64 _base
    8
    ;; float64 _shoulder
    8
    ;; float64 _elbow
    8
    ;; float64 _gripper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _base
       (sys::poke _base (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shoulder
       (sys::poke _shoulder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elbow
       (sys::poke _elbow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gripper
       (sys::poke _gripper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _base
     (setq _base (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shoulder
     (setq _shoulder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elbow
     (setq _elbow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gripper
     (setq _gripper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robotarm_controller::AnglesConverter
  :super ros::object
  :slots ())

(setf (get robotarm_controller::AnglesConverter :md5sum-) "904e8346ace63ec441f6f58d8efc6687")
(setf (get robotarm_controller::AnglesConverter :datatype-) "robotarm_controller/AnglesConverter")
(setf (get robotarm_controller::AnglesConverter :request) robotarm_controller::AnglesConverterRequest)
(setf (get robotarm_controller::AnglesConverter :response) robotarm_controller::AnglesConverterResponse)

(defmethod robotarm_controller::AnglesConverterRequest
  (:response () (instance robotarm_controller::AnglesConverterResponse :init)))

(setf (get robotarm_controller::AnglesConverterRequest :md5sum-) "904e8346ace63ec441f6f58d8efc6687")
(setf (get robotarm_controller::AnglesConverterRequest :datatype-) "robotarm_controller/AnglesConverterRequest")
(setf (get robotarm_controller::AnglesConverterRequest :definition-)
      "float64 base
float64 shoulder
float64 elbow 
float64 gripper
---
float64 base
float64 shoulder
float64 elbow 
float64 gripper
")

(setf (get robotarm_controller::AnglesConverterResponse :md5sum-) "904e8346ace63ec441f6f58d8efc6687")
(setf (get robotarm_controller::AnglesConverterResponse :datatype-) "robotarm_controller/AnglesConverterResponse")
(setf (get robotarm_controller::AnglesConverterResponse :definition-)
      "float64 base
float64 shoulder
float64 elbow 
float64 gripper
---
float64 base
float64 shoulder
float64 elbow 
float64 gripper
")



(provide :robotarm_controller/AnglesConverter "904e8346ace63ec441f6f58d8efc6687")


