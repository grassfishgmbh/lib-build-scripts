git clone --recursive https://github.com/grassfishgmbh/qtpdfium
mkdir build-qtpdfium
cd build-qtpdfium
qmake ../qtpdfium/qtpdfium.pro
make -j8
find -L -iname "*.so" -type f -exec chrpath -r '$ORIGIN' {} \;
make install

cd ..

git clone https://github.com/grassfishgmbh/qtmultimedia -b 5.5
mkdir build-qtmultimedia
cd build-qtmultimedia
qmake ../qtmultimedia/qtmultimedia.pro GST_VERSION=1.0
make -j8
find -L -iname "*.so" -type f -exec chrpath -r '$ORIGIN' {} \;
make install

cd ..
