:: Set Python paths
cd ..\..\..
set python3=%CD%\win64\Lib\site-packages
cd setup

:: Setup the environment paths
call env.bat

:: Build kdl 
cd Modules\PyKDL\orocos_kdl
set inc=%CD%\Eigen3
rmdir /Q /s build
mkdir build
cd build
cmake -DKDL_USE_NEW_TREE_INTERFACE=True -DOROCOSKDL_ENABLE_RPATH=True -DBUILD_MODELS=True -DBUILD_MODELS_DEMO=True -DEIGEN3_INCLUDE_DIR=%inc% -DCMAKE_INSTALL_PREFIX=%CD%\install -G"MinGW Makefiles" ..
make
make install
set KDL=%CD%

:: Build PyKDL 
cd ..\..
cd python_orocos_kdl
set inc_kdl=%CD%
rmdir /Q /s build
mkdir build
cd build
cmake -DPYTHON_VERSION=3 -DCMAKE_BUILD_TYPE=Release -G"MinGW Makefiles" -DCMAKE_CXX_FLAGS="-I%inc_kdl%\PyKDL -I%KDL%\install\include" -Wno-dev ..
make

:: Copy PyKDL to Python3 folder and delete build folders
RENAME PyKDL.dll PyKDL.pyd
COPY PyKDL.pyd %python3% /Y
cd ..
rmdir /Q /s build
cd %KDL%
cd src
COPY liborocos-kdl.dll %python3% /Y
cd ..\..
rmdir /Q /s build
cd ..
pause