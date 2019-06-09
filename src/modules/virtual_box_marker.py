#!/usr/bin/env python

"""
NOTE: Generates a rectangular box in front of the mynt camera in rviz that represents the mynt camera virtual box. This is purely
      for visualizing the stereo camera points that are in the virtual box. Uses the parameters in the virtual box launch file

      Publishes
      ---------
      Topic: /virtual_box_visualization
        Msg: geometry_msgs/Polygon
"""

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PolygonStamped, Point32

class VirtualBox(object):
    """Publishes a box in rviz from parameters in the virtual box launch file"""

    def __init__(self):
        """Initializing MarkerArray message publisher"""
        self.virtualBoxPublisher = rospy.Publisher("/virtual_box_visualization", PolygonStamped, queue_size=1)
        
    def vbox_callback(self, event):
        """Timer callback for the polygon, creation @ 20 hz"""
        self.create_virtual_box_mynt()

    def create_virtual_box_mynt(self):
        """Compose and publish PolygonStamped message in the mynt frame"""
        polygonMsg = PolygonStamped()

        x_min = rospy.get_param('/virtual_box_counter/x_lower_bound')
        x_max = rospy.get_param('/virtual_box_counter/x_upper_bound')
        
        y_min = rospy.get_param('/virtual_box_counter/y_lower_bound')
        y_max = rospy.get_param('/virtual_box_counter/y_upper_bound')

        z_min = rospy.get_param('/virtual_box_counter/z_lower_bound')
        z_max = rospy.get_param('/virtual_box_counter/z_upper_bound')

        polygonMsg.polygon.points = [Point32(x_min, y_min, z_min),
                                    Point32(x_min, y_min, z_max),
                                    Point32(x_min, y_max, z_max),
                                    Point32(x_min, y_max, z_min),
                                    Point32(x_min, y_min, z_min),
                                    Point32(x_max, y_min, z_min),
                                    Point32(x_max, y_min, z_max),
                                    Point32(x_max, y_max, z_max),
                                    Point32(x_max, y_max, z_min),
                                    Point32(x_min, y_max, z_min),
                                    Point32(x_min, y_max, z_max),
                                    Point32(x_max, y_max, z_max),
                                    Point32(x_max, y_min, z_max),
                                    Point32(x_min, y_min, z_max),
                                    Point32(x_min, y_min, z_min),
                                    Point32(x_max, y_min, z_min),
                                    Point32(x_max, y_max, z_min)]

        polygonMsg.header.frame_id = "/mynt"

        polygonMsg.header.stamp = rospy.Time.now()
    
        self.virtualBoxPublisher.publish(polygonMsg)
        
    def virtual_box_creation(self):
        """Create a polygon message and publish to rviz for visualization"""
        rospy.Timer(rospy.Duration(0.05), self.vbox_callback)
        rospy.spin()

def main():
    rospy.init_node("virtual_box_marker_node", anonymous=False)
    virtualBoxCreator = VirtualBox()

    try:
        virtualBoxCreator.virtual_box_creation()
    except rospy.ROSInterruptException:
        pass

if __name__ == "__main__":
    main()
