; Auto-generated. Do not edit!


(cl:in-package srv-srv)


;//! \htmlinclude communicate-request.msg.html

(cl:defclass <communicate-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0))
)

(cl:defclass communicate-request (<communicate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <communicate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'communicate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv-srv:<communicate-request> is deprecated: use srv-srv:communicate-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <communicate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv-srv:num1-val is deprecated.  Use srv-srv:num1 instead.")
  (num1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <communicate-request>) ostream)
  "Serializes a message object of type '<communicate-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <communicate-request>) istream)
  "Deserializes a message object of type '<communicate-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<communicate-request>)))
  "Returns string type for a service object of type '<communicate-request>"
  "srv/communicateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'communicate-request)))
  "Returns string type for a service object of type 'communicate-request"
  "srv/communicateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<communicate-request>)))
  "Returns md5sum for a message object of type '<communicate-request>"
  "e70e17925c7578e703aec9f3657a032c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'communicate-request)))
  "Returns md5sum for a message object of type 'communicate-request"
  "e70e17925c7578e703aec9f3657a032c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<communicate-request>)))
  "Returns full string definition for message of type '<communicate-request>"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'communicate-request)))
  "Returns full string definition for message of type 'communicate-request"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <communicate-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <communicate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'communicate-request
    (cl:cons ':num1 (num1 msg))
))
;//! \htmlinclude communicate-response.msg.html

(cl:defclass <communicate-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass communicate-response (<communicate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <communicate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'communicate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv-srv:<communicate-response> is deprecated: use srv-srv:communicate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <communicate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv-srv:result-val is deprecated.  Use srv-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <communicate-response>) ostream)
  "Serializes a message object of type '<communicate-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <communicate-response>) istream)
  "Deserializes a message object of type '<communicate-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<communicate-response>)))
  "Returns string type for a service object of type '<communicate-response>"
  "srv/communicateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'communicate-response)))
  "Returns string type for a service object of type 'communicate-response"
  "srv/communicateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<communicate-response>)))
  "Returns md5sum for a message object of type '<communicate-response>"
  "e70e17925c7578e703aec9f3657a032c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'communicate-response)))
  "Returns md5sum for a message object of type 'communicate-response"
  "e70e17925c7578e703aec9f3657a032c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<communicate-response>)))
  "Returns full string definition for message of type '<communicate-response>"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'communicate-response)))
  "Returns full string definition for message of type 'communicate-response"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <communicate-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <communicate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'communicate-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'communicate)))
  'communicate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'communicate)))
  'communicate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'communicate)))
  "Returns string type for a service object of type '<communicate>"
  "srv/communicate")