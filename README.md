# Foveated x264 Encoding

## Dependencies

For encoding to mp4, install the latest gpac:

https://github.com/gpac/gpac/wiki/GPAC-Build-Guide-for-Linux

## Build

```
$ mkdir build
$ cd build
$ ../configure --enable-static --enable-pic --enable-lto
$ make -j`nproc`
$ sudo make install-lib-static
```
