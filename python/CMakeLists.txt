find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_PATH})

set(CMAKE_SWIG_FLAGS "")
set_source_files_properties(../quagmire.i PROPERTIES CPLUSPLUS ON)
include_directories(..)

swig_add_module(quagmire python ../quagmire.i)
swig_link_libraries(quagmire quagmire ${PYTHON_LIBRARIES})

set(PYTHON_INSTALL_FILES
        ${CMAKE_CURRENT_BINARY_DIR}/quagmire.py
        ${CMAKE_CURRENT_BINARY_DIR}/_quagmire.so)

set(SETUP_PY_IN setup.py.in)
set(SETUP_PY_OUT ${CMAKE_CURRENT_BINARY_DIR}/setup.py)
configure_file(${SETUP_PY_IN} ${SETUP_PY_OUT})
