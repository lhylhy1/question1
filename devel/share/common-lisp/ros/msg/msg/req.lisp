; Auto-generated. Do not edit!


(cl:in-package msg-msg)


;//! \htmlinclude req.msg.html

(cl:defclass <req> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass req (<req>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <req>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'req)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg-msg:<req> is deprecated: use msg-msg:req instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <req>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg-msg:data-val is deprecated.  Use msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <req>) ostream)
  "Serializes a message object of type '<req>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <req>) istream)
  "Deserializes a message object of type '<req>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<req>)))
  "Returns string type for a message object of type '<req>"
  "msg/req")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'req)))
  "Returns string type for a message object of type 'req"
  "msg/req")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<req>)))
  "Returns md5sum for a message object of type '<req>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'req)))
  "Returns md5sum for a message object of type 'req"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<req>)))
  "Returns full string definition for message of type '<req>"
  (cl:format cl:nil "string data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'req)))
  "Returns full string definition for message of type 'req"
  (cl:format cl:nil "string data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <req>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <req>))
  "Converts a ROS message object to a list"
  (cl:list 'req
    (cl:cons ':data (data msg))
))
