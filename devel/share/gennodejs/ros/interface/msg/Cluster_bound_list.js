// Auto-generated. Do not edit!

// (in-package interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cluster_bound = require('./Cluster_bound.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Cluster_bound_list {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cluster_bounds = null;
      this.num_clusters = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cluster_bounds')) {
        this.cluster_bounds = initObj.cluster_bounds
      }
      else {
        this.cluster_bounds = [];
      }
      if (initObj.hasOwnProperty('num_clusters')) {
        this.num_clusters = initObj.num_clusters
      }
      else {
        this.num_clusters = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cluster_bound_list
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster_bounds]
    // Serialize the length for message field [cluster_bounds]
    bufferOffset = _serializer.uint32(obj.cluster_bounds.length, buffer, bufferOffset);
    obj.cluster_bounds.forEach((val) => {
      bufferOffset = Cluster_bound.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [num_clusters]
    bufferOffset = _serializer.int64(obj.num_clusters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cluster_bound_list
    let len;
    let data = new Cluster_bound_list(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_bounds]
    // Deserialize array length for message field [cluster_bounds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_bounds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_bounds[i] = Cluster_bound.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [num_clusters]
    data.num_clusters = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cluster_bounds.forEach((val) => {
      length += Cluster_bound.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interface/Cluster_bound_list';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3713a3df0748c501c3bdcf9ca17013e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cluster_bound_list(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster_bounds !== undefined) {
      resolved.cluster_bounds = new Array(msg.cluster_bounds.length);
      for (let i = 0; i < resolved.cluster_bounds.length; ++i) {
        resolved.cluster_bounds[i] = Cluster_bound.Resolve(msg.cluster_bounds[i]);
      }
    }
    else {
      resolved.cluster_bounds = []
    }

    if (msg.num_clusters !== undefined) {
      resolved.num_clusters = msg.num_clusters;
    }
    else {
      resolved.num_clusters = 0
    }

    return resolved;
    }
};

module.exports = Cluster_bound_list;
