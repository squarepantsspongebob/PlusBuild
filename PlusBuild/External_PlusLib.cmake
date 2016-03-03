SET(PLUSBUILD_SVN_REVISION_ARGS)
IF ( NOT PLUS_SVN_REVISION STREQUAL "0" )
  SET(PLUSBUILD_SVN_REVISION_ARGS 
    SVN_REVISION -r "${PLUS_SVN_REVISION}"
    )
ENDIF()

SET(PLUSBUILD_ADDITIONAL_SDK_ARGS)

IF (PLUSBUILD_USE_3DSlicer)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DSLICER_BIN_DIRECTORY:PATH=${PLUSBUILD_SLICER_BIN_DIRECTORY}
    )
ENDIF()
IF (PLUSBUILD_USE_OpenIGTLink)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DOpenIGTLink_DIR:PATH=${PLUS_OpenIGTLink_DIR}
    )
ENDIF()

IF(PLUSBUILD_USE_Tesseract)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -Dtesseract_DIR:PATH=${PLUS_tesseract_DIR}
    )
ENDIF(PLUSBUILD_USE_Tesseract)

IF (PLUS_USE_ULTRASONIX_VIDEO)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DULTRASONIX_SDK_DIR:PATH=${ULTRASONIX_SDK_DIR}
    -DPLUS_ULTRASONIX_SDK_MAJOR_VERSION:STRING=${PLUS_ULTRASONIX_SDK_MAJOR_VERSION}
    -DPLUS_ULTRASONIX_SDK_MINOR_VERSION:STRING=${PLUS_ULTRASONIX_SDK_MINOR_VERSION}
    -DPLUS_ULTRASONIX_SDK_PATCH_VERSION:STRING=${PLUS_ULTRASONIX_SDK_PATCH_VERSION}
    -DPLUS_TEST_ULTRASONIX:BOOL=${PLUS_TEST_ULTRASONIX}
    )
  IF (PLUS_TEST_ULTRASONIX)
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}      
      -DPLUS_TEST_ULTRASONIX_IP_ADDRESS:STRING=${PLUS_TEST_ULTRASONIX_IP_ADDRESS}  
      )      
  ENDIF(PLUS_TEST_ULTRASONIX)
ENDIF(PLUS_USE_ULTRASONIX_VIDEO)    
IF (PLUS_USE_BKPROFOCUS_VIDEO)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DGRABBIELIB_SOURCE_DIR:PATH=${PLUS_GRABBIELIB_SOURCE_DIR}
    -DPLUS_TEST_BKPROFOCUS:BOOL=${PLUS_TEST_BKPROFOCUS}    
    )
  IF (PLUS_USE_BKPROFOCUS_CAMERALINK)
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
      -DDALSASAPERA_LIB_DIR:PATH=${DALSASAPERA_LIB_DIR}
      )
  ENDIF()
ENDIF()
IF ( PLUS_USE_OPTIMET_CONOPROBE )
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DOPTIMETSMART32SDK_INCLUDE_DIR:PATH=${OPTIMETSMART32SDK_INCLUDE_DIR}
    -DOPTIMETSMART32SDK_64BIT_BINARY_DIR:PATH=${OPTIMETSMART32SDK_64BIT_BINARY_DIR}
    -DOPTIMETSMART32SDK_64BIT_LIBRARY:PATH=${OPTIMETSMART32SDK_64BIT_LIBRARY}
    -DOPTIMETSMART32SDK_32BIT_BINARY_DIR:PATH=${OPTIMETSMART32SDK_32BIT_BINARY_DIR}
    -DOPTIMETSMART32SDK_32BIT_LIBRARY:PATH=${OPTIMETSMART32SDK_32BIT_LIBRARY}
    )
ENDIF() 
IF ( PLUS_USE_OPTITRACK )
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DTRACKINGTOOLS_INCLUDE_DIR:PATH=${TRACKINGTOOLS_INCLUDE_DIR}
    -DTRACKINGTOOLS_BINARY_DIR:PATH=${TRACKINGTOOLS_BINARY_DIR}
    -DTRACKINGTOOLS_32_BIT_LIBRARY:PATH=${TRACKINGTOOLS_32_BIT_LIBRARY}
    -DTRACKINGTOOLS_64_BIT_LIBRARY:PATH=${TRACKINGTOOLS_64_BIT_LIBRARY}
    )
ENDIF() 
IF (PLUS_USE_ICCAPTURING_VIDEO)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DICCAPTURING_INCLUDE_DIR:PATH=${ICCAPTURING_INCLUDE_DIR}
    -DICCAPTURING_TIS_UDSHL09_STATIC_LIB:PATH=${ICCAPTURING_TIS_UDSHL09_STATIC_LIB}
    -DICCAPTURING_TIS_UDSHL09_SHARED_LIB:PATH=${ICCAPTURING_TIS_UDSHL09_SHARED_LIB}
    -DICCAPTURING_TIS_UDSHL09D_STATIC_LIB:PATH=${ICCAPTURING_TIS_UDSHL09D_STATIC_LIB}
    -DICCAPTURING_TIS_UDSHL09D_SHARED_LIB:PATH=${ICCAPTURING_TIS_UDSHL09D_SHARED_LIB}
    -DICCAPTURING_TIS_DSHOWLIB09_SHARED_LIB:PATH=${ICCAPTURING_TIS_DSHOWLIB09_SHARED_LIB}
    -DICCAPTURING_TIS_DSHOWLIB09D_SHARED_LIB:PATH=${ICCAPTURING_TIS_DSHOWLIB09D_SHARED_LIB}
    )
ENDIF()
IF (PLUS_USE_CAPISTRANO_VIDEO)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DCAPISTRANO_INCLUDE_DIR:PATH=${CAPISTRANO_INCLUDE_DIR}
    -DCAPISTRANO_LIBRARY_DIR:PATH=${CAPISTRANO_LIBRARY_DIR}
    -DCAPISTRANO_BINARY_DIR:PATH=${CAPISTRANO_BINARY_DIR}
    -DCAPISTRANO_WIN32_BINARY_DIR:PATH=${CAPISTRANO_WIN32_BINARY_DIR}
    -DCAPISTRANO_WIN64_BINARY_DIR:PATH=${CAPISTRANO_WIN64_BINARY_DIR}
    )
ENDIF()
IF (PLUS_USE_INTERSON_VIDEO)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DINTERSON_INCLUDE_DIR:PATH=${INTERSON_INCLUDE_DIR}
    -DINTERSON_LIBRARY_DIR:PATH=${INTERSON_LIBRARY_DIR}
    -DINTERSON_BINARY_DIR:PATH=${INTERSON_BINARY_DIR}
    -DINTERSON_WIN32_BINARY_DIR:PATH=${INTERSON_WIN32_BINARY_DIR}
    -DINTERSON_WIN64_BINARY_DIR:PATH=${INTERSON_WIN64_BINARY_DIR}
    )
ENDIF()
IF (PLUS_USE_INTERSONSDKCXX_VIDEO)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DIntersonSDKCxx_DIR:PATH=${IntersonSDKCxx_DIR}
    )
ENDIF()

IF (PLUS_USE_STEALTHLINK)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DSTEALTHLINK_INCLUDE_DIRS:PATH=${STEALTHLINK_INCLUDE_DIRS}
    -DSTEALTHLINK_STEALTHLINK_STATIC_LIBRARY:PATH=${STEALTHLINK_STEALTHLINK_STATIC_LIBRARY}
    )
  IF (WIN32)
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
      -DSTEALTHLINK_STEALTHLINK_SHARED_LIBRARY:PATH=${STEALTHLINK_STEALTHLINK_SHARED_LIBRARY}
      -DSTEALTHLINK_STEALTHLINKD_STATIC_LIBRARY:PATH=${STEALTHLINK_STEALTHLINKD_STATIC_LIBRARY}
      -DSTEALTHLINK_STEALTHLINKD_SHARED_LIBRARY:PATH=${STEALTHLINK_STEALTHLINKD_SHARED_LIBRARY}
      )
  ENDIF()
ENDIF()

IF (PLUS_USE_CERTUS)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DNDIOAPI_LIBRARY:PATH=${NDIOAPI_LIBRARY}
    -DNDIOAPI_BINARY_DIR:PATH=${NDIOAPI_BINARY_DIR}
    -DNDIOAPI_INCLUDE_DIR:PATH=${NDIOAPI_INCLUDE_DIR}
    )
ENDIF()   

IF ( PLUS_USE_MICRONTRACKER )
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS} 
    -DMICRONTRACKER_INCLUDE_DIR:PATH=${MICRONTRACKER_INCLUDE_DIR}
    -DMICRONTRACKER_LIBRARY:PATH=${MICRONTRACKER_LIBRARY}
    -DMICRONTRACKER_BINARY_DIR:PATH=${MICRONTRACKER_BINARY_DIR}
    )
ENDIF()   

IF ( PLUS_USE_IntuitiveDaVinci )
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DIntuitiveDaVinci_INCLUDE_DIR:PATH=${IntuitiveDaVinci_INCLUDE_DIR}
    -DIntuitiveDaVinci_LIBRARY:PATH=${IntuitiveDaVinci_LIBRARY}
    )
ENDIF()

IF ( PLUS_USE_MMF_VIDEO )
    FIND_PACKAGE(WindowsSDK REQUIRED)
    # Tests if the available latest Windows SDK is recent enough for Plus
    INCLUDE(TestWindowsSDK)
    IF (NOT PLUS_WINDOWS_SDK_IS_COMPATIBLE)
      MESSAGE(FATAL_ERROR "Windows SDK is not compatible with Plus requirements. Either disable the PLUS_USE_MMF_VIDEO option or install Windows SDK 7.1 or later.")
    ENDIF(NOT PLUS_WINDOWS_SDK_IS_COMPATIBLE)
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS} 
    -DWINDOWSSDK_LATEST_DIR:PATH=${WINDOWSSDK_LATEST_DIR}
    )
    IF (PLUS_TEST_MMF_VIDEO)
      SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}      
        -DPLUS_TEST_MMF_VIDEO:BOOL=${PLUS_TEST_MMF_VIDEO}  
        )
    ENDIF(PLUS_TEST_MMF_VIDEO)
ENDIF()

IF ( PLUS_USE_TELEMED_VIDEO )
    FIND_PACKAGE (WindowsSDK)
    IF ( NOT WINDOWSSDK_FOUND )
      MESSAGE( FATAL_ERROR "This project requires Windows SDK for supporting the Telemed ultrasound probes. One of the components is missing. Please verify configuration or turn off PLUS_USE_TELEMED_VIDEO.")
    ENDIF()
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
      -DTELEMED_INCLUDE_DIR:PATH=${TELEMED_INCLUDE_DIR}
      -DWINDOWSSDK_LATEST_DIR:PATH=${WINDOWSSDK_LATEST_DIR}
      )
ENDIF()

IF ( PLUS_USE_THORLABS_VIDEO )
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
      -DTHORLABS_INCLUDE_DIR:PATH=${THORLABS_INCLUDE_DIR}
      -DTHORLABS_LIBRARY_DIR:PATH=${THORLABS_LIBRARY_DIR}
      )
ENDIF()


IF (PLUS_USE_PHILIPS_3D_ULTRASOUND)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DPhilips_BINARY_DIRS:PATH=${Philips_BINARY_DIRS}
    -DPhilips_INCLUDE_DIRS:PATH=${Philips_INCLUDE_DIRS}
    -DPhilips_LIBRARY_DIR:PATH=${Philips_LIBRARY_DIR}
    -DPLUS_Philips_MAJOR_VERSION:STRING=${PLUS_Philips_MAJOR_VERSION}
    -DPLUS_Philips_MINOR_VERSION:STRING=${PLUS_Philips_MINOR_VERSION}
    -DPLUS_Philips_PATCH_VERSION:STRING=${PLUS_Philips_PATCH_VERSION}
    -DPLUS_TEST_PHILIPS_3D_ULTRASOUND:BOOL=${PLUS_TEST_PHILIPS_3D_ULTRASOUND}
    )
  IF (PLUS_TEST_PHILIPS_3D_ULTRASOUND)
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}      
      -DPLUS_TEST_PHILIPS_3D_ULTRASOUND_IP_ADDRESS:STRING=${PLUS_TEST_PHILIPS_3D_ULTRASOUND_IP_ADDRESS}  
      )      
  ENDIF(PLUS_TEST_PHILIPS_3D_ULTRASOUND) 
ENDIF()

IF ( PLUSBUILD_DOCUMENTATION )
    SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS} 
      -DPLUS_DOCUMENTATION_SEARCH_SERVER_INDEXED=${PLUSBUILD_DOCUMENTATION_SEARCH_SERVER_INDEXED}
      -DDOXYGEN_DOT_EXECUTABLE:FILEPATH=${DOXYGEN_DOT_EXECUTABLE}
      -DDOXYGEN_EXECUTABLE:FILEPATH=${DOXYGEN_EXECUTABLE}
      )
ENDIF()

IF( PLUSBUILD_DOWNLOAD_PlusDATA AND NOT PLUSBUILD_OFFLINE_BUILD)
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS} 
    -DPLUSLIB_DATA_DIR:PATH=${PLUSLIB_DATA_DIR}
    )
ENDIF()

IF( BUILDNAME )
  SET(PLUSBUILD_ADDITIONAL_SDK_ARGS ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
    -DBUILDNAME:STRING=${BUILDNAME}
  )
ENDIF( BUILDNAME )

# --------------------------------------------------------------------------
# PlusLib
SET (PLUS_PLUSLIB_DIR ${CMAKE_BINARY_DIR}/PlusLib CACHE INTERNAL "Path to store PlusLib contents.")
ExternalProject_Add(PlusLib
  "${PLUSBUILD_EXTERNAL_PROJECT_CUSTOM_COMMANDS}"
  SOURCE_DIR "${PLUS_PLUSLIB_DIR}" 
  BINARY_DIR "PlusLib-bin"
  #--Download step--------------
  SVN_USERNAME ${PLUSBUILD_ASSEMBLA_USERNAME}
  SVN_PASSWORD ${PLUSBUILD_ASSEMBLA_PASSWORD}
  SVN_REPOSITORY https://subversion.assembla.com/svn/plus/branches/rankin-sandbox/PlusLib
  ${PLUSBUILD_SVN_REVISION_ARGS}
  #--Configure step-------------
  CMAKE_ARGS 
    ${ep_common_args}
    -DVTK_DIR:PATH=${PLUS_VTK_DIR}
    -DITK_DIR:PATH=${PLUS_ITK_DIR}
    -DBUILD_TESTING:BOOL=${BUILD_TESTING}
    -DPLUS_OFFLINE_BUILD:BOOL=${PLUSBUILD_OFFLINE_BUILD}
    -DSubversion_SVN_EXECUTABLE:FILEPATH=${Subversion_SVN_EXECUTABLE}
    -DQT_QMAKE_EXECUTABLE:FILEPATH=${QT_QMAKE_EXECUTABLE}
    -DCMAKE_CXX_FLAGS:STRING=${ep_common_cxx_flags}
    -DCMAKE_C_FLAGS:STRING=${ep_common_c_flags}    
    -DPLUS_EXECUTABLE_OUTPUT_PATH:STRING=${PLUS_EXECUTABLE_OUTPUT_PATH}
    -DPLUS_USE_SLICER:BOOL=${PLUSBUILD_USE_3DSlicer}
    -DPLUS_USE_OpenIGTLink:BOOL=${PLUSBUILD_USE_OpenIGTLink}
    -DPLUS_USE_tesseract:BOOL=${PLUSBUILD_USE_Tesseract}
    -DPLUS_USE_ULTRASONIX_VIDEO:BOOL=${PLUS_USE_ULTRASONIX_VIDEO}
    -DPLUS_USE_BKPROFOCUS_VIDEO:BOOL=${PLUS_USE_BKPROFOCUS_VIDEO}
    -DPLUS_USE_BKPROFOCUS_CAMERALINK:BOOL=${PLUS_USE_BKPROFOCUS_CAMERALINK}    
    -DPLUS_USE_ICCAPTURING_VIDEO:BOOL=${PLUS_USE_ICCAPTURING_VIDEO}    
    -DPLUS_USE_CAPISTRANO_VIDEO:BOOL=${PLUS_USE_CAPISTRANO_VIDEO}    
    -DPLUS_USE_INTERSON_VIDEO:BOOL=${PLUS_USE_INTERSON_VIDEO}    
    -DPLUS_USE_INTERSONSDKCXX_VIDEO:BOOL=${PLUS_USE_INTERSONSDKCXX_VIDEO}    
    -DPLUS_USE_TELEMED_VIDEO:BOOL=${PLUS_USE_TELEMED_VIDEO}
    -DPLUS_USE_THORLABS_VIDEO:BOOL=${PLUS_USE_THORLABS_VIDEO}
    -DPLUS_USE_VFW_VIDEO:BOOL=${PLUS_USE_VFW_VIDEO}
    -DPLUS_USE_EPIPHAN:BOOL=${PLUS_USE_EPIPHAN}    
    -DPLUS_USE_POLARIS:BOOL=${PLUS_USE_POLARIS}
    -DPLUS_USE_CERTUS:BOOL=${PLUS_USE_CERTUS}
    -DPLUS_USE_MICRONTRACKER:BOOL=${PLUS_USE_MICRONTRACKER}
    -DPLUS_USE_OPTIMET_CONOPROBE:BOOL=${PLUS_USE_OPTIMET_CONOPROBE}
    -DPLUS_USE_OPTITRACK:BOOL=${PLUS_USE_OPTITRACK}
    -DPLUS_USE_IntuitiveDaVinci:BOOL=${PLUS_USE_IntuitiveDaVinci}
    -DPLUS_USE_BRACHY_TRACKER:BOOL=${PLUS_USE_BRACHY_TRACKER}
    -DPLUS_USE_USDIGITALENCODERS_TRACKER:BOOL=${PLUS_USE_USDIGITALENCODERS_TRACKER}
    -DPLUS_USE_Ascension3DG:BOOL=${PLUS_USE_Ascension3DG}    
    -DPLUS_USE_Ascension3DGm:BOOL=${PLUS_USE_Ascension3DGm}    
    -DPLUS_USE_PHIDGET_SPATIAL_TRACKER:BOOL=${PLUS_USE_PHIDGET_SPATIAL_TRACKER}
    -DPLUS_USE_3dConnexion_TRACKER:BOOL=${PLUS_USE_3dConnexion_TRACKER}
    -DPLUS_USE_MMF_VIDEO:BOOL=${PLUS_USE_MMF_VIDEO}
    -DPLUS_USE_STEALTHLINK:BOOL=${PLUS_USE_STEALTHLINK}
    -DPLUS_USE_PHILIPS_3D_ULTRASOUND:BOOL=${PLUS_USE_PHILIPS_3D_ULTRASOUND}
    -DBUILD_DOCUMENTATION:BOOL=${PLUSBUILD_DOCUMENTATION}
    ${PLUSBUILD_ADDITIONAL_SDK_ARGS}

  #--Build step-----------------
  BUILD_ALWAYS 1
  #--Install step-----------------
  INSTALL_COMMAND ""
  DEPENDS ${PlusLib_DEPENDENCIES}
  )
SET(PLUSLIB_DIR ${CMAKE_BINARY_DIR}/PlusLib-bin CACHE PATH "The directory containing PlusLib binaries" FORCE)                
