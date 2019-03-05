#!/usr/bin/env bash

export CC="clang-7"
export CFLAGS="-nostdinc -m64 -fPIC -mllvm -x86-speculative-load-hardening"
export CPPFLAGS="-I/usr/local/include/openenclave/3rdparty/libc -I/usr/local/include/openenclave/3rdparty -I/usr/local/include"
export LDFLAGS="-L/usr/local/lib/openenclave/enclave -nostdlib -nodefaultlibs -nostartfiles -Wl,--no-undefined -Wl,-Bstatic -Wl,-Bsymbolic -Wl,--export-dynamic -Wl,-pie -Wl,--build-id"
export LIBS="-loeenclave -lmbedx509 -lmbedcrypto -loelibc -loecore"

./configure --disable-ares --disable-rt --disable-ftp --disable-file --disable-ldap --disable-ldaps --disable-rtsp --disable-proxy --disable-dict --disable-telnet --disable-tftp --disable-pop3 --disable-imap --disable-smb --disable-smtp --disable-gopher --enable-ipv6 --disable-threaded-resolver --disable-pthreads --disable-sspi --disable-ntlm-wb --disable-alt-svc --without-zlib --without-brotli --with-mbedtls=/usr/local/lib/openenclave/enclave --without-libmetalink --without-librtmp --without-winidn --without-libidn2 --without-nghttp2 --without-ssl --disable-shared --enable-static --host=aarch64
