SUMMARY = "helloworld app with cmake"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://github.com/mhmtipek/helloworld-with-cmake.git;protocol=https"
SRC_URI[md5sum] = "70a9ec19a0928284aad61909990c1d20"
SRCREV = "67d9e97daa89944ad02b689713986780949f595c"

PV = "git${SRCPV}"

S = "${WORKDIR}/git"

inherit cmake

