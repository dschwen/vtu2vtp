CXX         ?= g++
VTK_VERSION ?= 7.1
VTKLIBS     := -lvtkCommonCore-$(VTK_VERSION) -lvtkFiltersGeometry-$(VTK_VERSION) \
               -lvtkIOXML-$(VTK_VERSION) -lvtkCommonDataModel-$(VTK_VERSION)      \
               -lvtkCommonExecutionModel-$(VTK_VERSION)

vtu2vtp: vtu2vtp.C
	$(CXX) -std=c++11 vtu2vtp.C -o vtu2vtp $(VTKLIBS) -I$(VTKINCLUDE_DIR) -L$(VTKLIB_DIR) -Wno-inconsistent-missing-override

clean:
	rm -f vtu2vtp
