;; Auto-generated. Do not edit!


(when (boundp 'srv::communicate)
  (if (not (find-package "SRV"))
    (make-package "SRV"))
  (shadow 'communicate (find-package "SRV")))
(unless (find-package "SRV::COMMUNICATE")
  (make-package "SRV::COMMUNICATE"))
(unless (find-package "SRV::COMMUNICATEREQUEST")
  (make-package "SRV::COMMUNICATEREQUEST"))
(unless (find-package "SRV::COMMUNICATERESPONSE")
  (make-package "SRV::COMMUNICATERESPONSE"))

(in-package "ROS")





(defclass srv::communicateRequest
  :super ros::object
  :slots (_num1 ))

(defmethod srv::communicateRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass srv::communicateResponse
  :super ros::object
  :slots (_result ))

(defmethod srv::communicateResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass srv::communicate
  :super ros::object
  :slots ())

(setf (get srv::communicate :md5sum-) "e70e17925c7578e703aec9f3657a032c")
(setf (get srv::communicate :datatype-) "srv/communicate")
(setf (get srv::communicate :request) srv::communicateRequest)
(setf (get srv::communicate :response) srv::communicateResponse)

(defmethod srv::communicateRequest
  (:response () (instance srv::communicateResponse :init)))

(setf (get srv::communicateRequest :md5sum-) "e70e17925c7578e703aec9f3657a032c")
(setf (get srv::communicateRequest :datatype-) "srv/communicateRequest")
(setf (get srv::communicateRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1

---
# 服务器响应发送的数据
int32 result
")

(setf (get srv::communicateResponse :md5sum-) "e70e17925c7578e703aec9f3657a032c")
(setf (get srv::communicateResponse :datatype-) "srv/communicateResponse")
(setf (get srv::communicateResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1

---
# 服务器响应发送的数据
int32 result
")



(provide :srv/communicate "e70e17925c7578e703aec9f3657a032c")


