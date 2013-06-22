inherit erlang

ERLVSN ?= ''
DEPENDS += "tetrapak-native erlang${ERLVSN}"

erllibs = "${STAGING_DIR_ERLANG_LIBS}:${TETRAPAK_ERL_LIBS}"

do_compile() {
    mkdir -p ebin
    ERL_LIBS=${erllibs} tetrapak build
}

do_install() {
    ERL_LIBS=${erllibs} tetrapak install -prefix ${D}
}