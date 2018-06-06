#!/bin/bash
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --disable-cli \
            --disable-static &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
