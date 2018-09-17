export FLAGS='-g3 -O0'
export CXXFLAGS='-g3 -O0'
export CC='ccache gcc'
export CXX='ccache g++'
#export LDFLAGS='-fuse-ld=gold'

make distclean || echo "not distclean for some reason"
find . -type f -name 'config.cache' -delete || echo "no rm ?XD"


./configure --disable-gold --disable-ld --disable-gprof --disable-gas --disable-nls  CFLAGS='-g3 -O0' CXXFLAGS='-g3 -O0' CC='ccache gcc' CXX='ccache g++' LDFLAGS='-fuse-ld=gold '
make -j12
