VTKLIBS := -lvtkCommonCore-7.1 -lvtkFiltersGeometry-7.1 -lvtkIOXML-7.1 -lvtkCommonDataModel-7.1 -lvtkCommonExecutionModel-7.1 

vtu2vtp: vtu2vtp.C
	$(CXX) -std=c++11 vtu2vtp.C -o vtu2vtp $(VTKLIBS) -I$(VTKINCLUDE_DIR) -L$(VTKLIB_DIR) -Wno-inconsistent-missing-override
