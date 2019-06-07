# Install script for directory: /home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/joey/Documents/StereoCameraStuff/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper/srv" TYPE FILE FILES "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/srv/GetInfo.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper/cmake" TYPE FILE FILES "/home/joey/Documents/StereoCameraStuff/build/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/catkin_generated/installspace/mynt_eye_ros_wrapper-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/devel/include/mynt_eye_ros_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/devel/share/roseus/ros/mynt_eye_ros_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/devel/share/common-lisp/ros/mynt_eye_ros_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/devel/share/gennodejs/ros/mynt_eye_ros_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/joey/Documents/StereoCameraStuff/devel/lib/python2.7/dist-packages/mynt_eye_ros_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/devel/lib/python2.7/dist-packages/mynt_eye_ros_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/joey/Documents/StereoCameraStuff/build/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/catkin_generated/installspace/mynt_eye_ros_wrapper.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper/cmake" TYPE FILE FILES "/home/joey/Documents/StereoCameraStuff/build/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/catkin_generated/installspace/mynt_eye_ros_wrapper-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper/cmake" TYPE FILE FILES
    "/home/joey/Documents/StereoCameraStuff/build/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/catkin_generated/installspace/mynt_eye_ros_wrapperConfig.cmake"
    "/home/joey/Documents/StereoCameraStuff/build/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/catkin_generated/installspace/mynt_eye_ros_wrapperConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper" TYPE FILE FILES "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/joey/Documents/StereoCameraStuff/devel/lib/libmynteye_wrapper.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/local/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmynteye_wrapper.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper" TYPE EXECUTABLE FILES "/home/joey/Documents/StereoCameraStuff/devel/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node"
         OLD_RPATH "/home/joey/Documents/StereoCameraStuff/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mynt_eye_ros_wrapper/mynteye_wrapper_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper/launch" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper/rviz" TYPE DIRECTORY FILES "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/rviz/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mynt_eye_ros_wrapper" TYPE FILE FILES "/home/joey/Documents/StereoCameraStuff/src/utility/MYNT-EYE-S-SDK/wrappers/ros/src/mynt_eye_ros_wrapper/nodelet_plugins.xml")
endif()

