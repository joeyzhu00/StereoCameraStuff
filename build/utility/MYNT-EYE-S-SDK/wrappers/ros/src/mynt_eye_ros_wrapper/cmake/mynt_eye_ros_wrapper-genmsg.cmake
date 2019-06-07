# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mynt_eye_ros_wrapper: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mynt_eye_ros_wrapper_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" NAME_WE)
add_custom_target(_mynt_eye_ros_wrapper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mynt_eye_ros_wrapper" "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mynt_eye_ros_wrapper
  "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynt_eye_ros_wrapper
)

### Generating Module File
_generate_module_cpp(mynt_eye_ros_wrapper
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynt_eye_ros_wrapper
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mynt_eye_ros_wrapper_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mynt_eye_ros_wrapper_generate_messages mynt_eye_ros_wrapper_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" NAME_WE)
add_dependencies(mynt_eye_ros_wrapper_generate_messages_cpp _mynt_eye_ros_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynt_eye_ros_wrapper_gencpp)
add_dependencies(mynt_eye_ros_wrapper_gencpp mynt_eye_ros_wrapper_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynt_eye_ros_wrapper_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mynt_eye_ros_wrapper
  "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mynt_eye_ros_wrapper
)

### Generating Module File
_generate_module_eus(mynt_eye_ros_wrapper
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mynt_eye_ros_wrapper
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mynt_eye_ros_wrapper_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mynt_eye_ros_wrapper_generate_messages mynt_eye_ros_wrapper_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" NAME_WE)
add_dependencies(mynt_eye_ros_wrapper_generate_messages_eus _mynt_eye_ros_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynt_eye_ros_wrapper_geneus)
add_dependencies(mynt_eye_ros_wrapper_geneus mynt_eye_ros_wrapper_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynt_eye_ros_wrapper_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mynt_eye_ros_wrapper
  "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynt_eye_ros_wrapper
)

### Generating Module File
_generate_module_lisp(mynt_eye_ros_wrapper
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynt_eye_ros_wrapper
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mynt_eye_ros_wrapper_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mynt_eye_ros_wrapper_generate_messages mynt_eye_ros_wrapper_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" NAME_WE)
add_dependencies(mynt_eye_ros_wrapper_generate_messages_lisp _mynt_eye_ros_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynt_eye_ros_wrapper_genlisp)
add_dependencies(mynt_eye_ros_wrapper_genlisp mynt_eye_ros_wrapper_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynt_eye_ros_wrapper_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mynt_eye_ros_wrapper
  "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mynt_eye_ros_wrapper
)

### Generating Module File
_generate_module_nodejs(mynt_eye_ros_wrapper
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mynt_eye_ros_wrapper
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mynt_eye_ros_wrapper_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mynt_eye_ros_wrapper_generate_messages mynt_eye_ros_wrapper_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" NAME_WE)
add_dependencies(mynt_eye_ros_wrapper_generate_messages_nodejs _mynt_eye_ros_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynt_eye_ros_wrapper_gennodejs)
add_dependencies(mynt_eye_ros_wrapper_gennodejs mynt_eye_ros_wrapper_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynt_eye_ros_wrapper_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mynt_eye_ros_wrapper
  "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynt_eye_ros_wrapper
)

### Generating Module File
_generate_module_py(mynt_eye_ros_wrapper
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynt_eye_ros_wrapper
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mynt_eye_ros_wrapper_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mynt_eye_ros_wrapper_generate_messages mynt_eye_ros_wrapper_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv" NAME_WE)
add_dependencies(mynt_eye_ros_wrapper_generate_messages_py _mynt_eye_ros_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynt_eye_ros_wrapper_genpy)
add_dependencies(mynt_eye_ros_wrapper_genpy mynt_eye_ros_wrapper_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynt_eye_ros_wrapper_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynt_eye_ros_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynt_eye_ros_wrapper
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mynt_eye_ros_wrapper_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mynt_eye_ros_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mynt_eye_ros_wrapper
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mynt_eye_ros_wrapper_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynt_eye_ros_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynt_eye_ros_wrapper
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mynt_eye_ros_wrapper_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mynt_eye_ros_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mynt_eye_ros_wrapper
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mynt_eye_ros_wrapper_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynt_eye_ros_wrapper)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynt_eye_ros_wrapper\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynt_eye_ros_wrapper
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mynt_eye_ros_wrapper_generate_messages_py std_msgs_generate_messages_py)
endif()
