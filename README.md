# ldapfs
todo: write readme

DANGER: current state is such that base_dn, bind_dn and password are HARDCODED in include/fuse_ldap.h . This is obviously a Bad Thing(tm). Use at your own risk, and for dog's sake please don't accidentally commit your password to github.

Dependencies:
 Ubuntu:
  libldap2-dev

In Makefile, -D_FILE_OFFSET_BITS=64 was added because fuse_common.h demanded it. On 32-bit systems, this is presumably not necessary.
