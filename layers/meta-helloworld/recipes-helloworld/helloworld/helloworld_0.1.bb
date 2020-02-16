SUMMARY = "bitbake-layers recipe"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://helloworld.cpp"

S = "${WORKDIR}"

do_compile() {
    ${CXX} helloworld.cpp ${LDFLAGS} -o helloworld
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 helloworld ${D}${bindir}
}
