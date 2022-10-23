superbuild_add_project(vtk
  LICENSE_FILES
    Copyright.txt
  DEPENDS cxx11 tbb
  DEPENDS_OPTIONAL ospray
  CMAKE_ARGS
    -DVTK_ENABLE_LOGGING=OFF
    -DVTK_ENABLE_WRAPPING=OFF
    -DVTK_BUILD_TESTING=OFF
    -DVTK_LEGACY_REMOVE=ON
    -DVTK_VERSIONED_INSTALL=OFF
    -DVTK_GROUP_ENABLE_Rendering=DEFAULT
    -DVTK_GROUP_ENABLE_StandAlone=DEFAULT
    -DVTK_MODULE_ENABLE_VTK_CommonSystem=YES
    -DVTK_MODULE_ENABLE_VTK_FiltersGeneral=YES
    -DVTK_MODULE_ENABLE_VTK_FiltersGeometry=YES
    -DVTK_MODULE_ENABLE_VTK_ImagingCore=YES
    -DVTK_MODULE_ENABLE_VTK_ImagingHybrid=YES
    -DVTK_MODULE_ENABLE_VTK_InteractionStyle=YES
    -DVTK_MODULE_ENABLE_VTK_InteractionWidgets=YES
    -DVTK_MODULE_ENABLE_VTK_IOCityGML=YES
    -DVTK_MODULE_ENABLE_VTK_IOExodus=YES
    -DVTK_MODULE_ENABLE_VTK_IOGeometry=YES
    -DVTK_MODULE_ENABLE_VTK_IOImage=YES
    -DVTK_MODULE_ENABLE_VTK_IOImport=YES
    -DVTK_MODULE_ENABLE_VTK_IOParallel=YES
    -DVTK_MODULE_ENABLE_VTK_IOPLY=YES
    -DVTK_MODULE_ENABLE_VTK_IOXML=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingAnnotation=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingCore=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingExternal=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingLabel=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingOpenGL2=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingVolumeOpenGL2=YES
    -DVTK_MODULE_ENABLE_VTK_TestingCore=YES
    -DVTK_MODULE_ENABLE_VTK_RenderingRayTracing:BOOL=${ospray_enabled}
)
