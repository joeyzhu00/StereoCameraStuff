# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interface: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iinterface:/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Idiagnostic_msgs:/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" NAME_WE)
add_custom_target(_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interface" "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" "interface/Cluster_bound:geometry_msgs/Point32:std_msgs/Header"
)

get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" NAME_WE)
add_custom_target(_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interface" "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" "geometry_msgs/Point32:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg"
  "${MSG_I_FLAGS}"
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)
_generate_msg_cpp(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)

### Generating Services

### Generating Module File
_generate_module_cpp(interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interface_generate_messages interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" NAME_WE)
add_dependencies(interface_generate_messages_cpp _interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" NAME_WE)
add_dependencies(interface_generate_messages_cpp _interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interface_gencpp)
add_dependencies(interface_gencpp interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg"
  "${MSG_I_FLAGS}"
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interface
)
_generate_msg_eus(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interface
)

### Generating Services

### Generating Module File
_generate_module_eus(interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interface_generate_messages interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" NAME_WE)
add_dependencies(interface_generate_messages_eus _interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" NAME_WE)
add_dependencies(interface_generate_messages_eus _interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interface_geneus)
add_dependencies(interface_geneus interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg"
  "${MSG_I_FLAGS}"
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)
_generate_msg_lisp(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)

### Generating Services

### Generating Module File
_generate_module_lisp(interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interface_generate_messages interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" NAME_WE)
add_dependencies(interface_generate_messages_lisp _interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" NAME_WE)
add_dependencies(interface_generate_messages_lisp _interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interface_genlisp)
add_dependencies(interface_genlisp interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg"
  "${MSG_I_FLAGS}"
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interface
)
_generate_msg_nodejs(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interface
)

### Generating Services

### Generating Module File
_generate_module_nodejs(interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interface_generate_messages interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" NAME_WE)
add_dependencies(interface_generate_messages_nodejs _interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" NAME_WE)
add_dependencies(interface_generate_messages_nodejs _interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interface_gennodejs)
add_dependencies(interface_gennodejs interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg"
  "${MSG_I_FLAGS}"
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)
_generate_msg_py(interface
  "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)

### Generating Services

### Generating Module File
_generate_module_py(interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interface_generate_messages interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound_list.msg" NAME_WE)
add_dependencies(interface_generate_messages_py _interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/modules/interface/msg/Cluster_bound.msg" NAME_WE)
add_dependencies(interface_generate_messages_py _interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interface_genpy)
add_dependencies(interface_genpy interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(interface_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET diagnostic_msgs_generate_messages_cpp)
  add_dependencies(interface_generate_messages_cpp diagnostic_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(interface_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(interface_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(interface_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(interface_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET diagnostic_msgs_generate_messages_eus)
  add_dependencies(interface_generate_messages_eus diagnostic_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(interface_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(interface_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(interface_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(interface_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET diagnostic_msgs_generate_messages_lisp)
  add_dependencies(interface_generate_messages_lisp diagnostic_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(interface_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(interface_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(interface_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(interface_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET diagnostic_msgs_generate_messages_nodejs)
  add_dependencies(interface_generate_messages_nodejs diagnostic_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(interface_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(interface_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(interface_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(interface_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET diagnostic_msgs_generate_messages_py)
  add_dependencies(interface_generate_messages_py diagnostic_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(interface_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(interface_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(interface_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interface_generate_messages_py std_msgs_generate_messages_py)
endif()
