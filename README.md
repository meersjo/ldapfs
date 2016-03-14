# ldapfs
todo: write readme

Dependencies:
 Ubuntu:
  libldap2-dev

In Makefile, -D_FILE_OFFSET_BITS=64 was added because fuse_common.h demanded it. On 32-bit systems, this is presumably not necessary.
