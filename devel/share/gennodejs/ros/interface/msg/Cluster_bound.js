// Auto-generated. Do not edit!

// (in-package interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Cluster_bound {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.centroid_location = null;
      this.min_bound = null;
      this.max_bound = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('centroid_location')) {
        this.centroid_location = initObj.centroid_location
      }
      else {
        this.centroid_location = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('min_bound')) {
        this.min_bound = initObj.min_bound
      }
      else {
        this.min_bound = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('max_bound')) {
        this.max_bound = initObj.max_bound
      }
      else {
        this.max_bound = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cluster_bound
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [centroid_location]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centroid_location, buffer, bufferOffset);
    // Serialize message field [min_bound]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.min_bound, buffer, bufferOffset);
    // Serialize message field [max_bound]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.max_bound, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cluster_bound
    let len;
    let data = new Cluster_bound(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [centroid_location]
    data.centroid_location = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_bound]
    data.min_bound = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_bound]
    data.max_bound = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interface/Cluster_bound';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f26147d262f31105abc5a4203e9e284';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cluster_bound(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.centroid_location !== undefined) {
      resolved.centroid_location = geometry_msgs.msg.Point32.Resolve(msg.centroid_location)
    }
    else {
      resolved.centroid_location = new geometry_msgs.msg.Point32()
    }

    if (msg.min_bound !== undefined) {
      resolved.min_bound = geometry_msgs.msg.Point32.Resolve(msg.min_bound)
    }
    else {
      resolved.min_bound = new geometry_msgs.msg.Point32()
    }

    if (msg.max_bound !== undefined) {
      resolved.max_bound = geometry_msgs.msg.Point32.Resolve(msg.max_bound)
    }
    else {
      resolved.max_bound = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = Cluster_bound;
