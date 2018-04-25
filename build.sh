#!/bin/bash
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --disable-cli \
            --disable-static &&
make -j $SHED_NUMJOBS &&
make DESTDIR="$SHED_FAKEROOT" install
