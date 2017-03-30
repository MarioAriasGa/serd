TEMPLATE = lib
TARGET = serd
CONFIG += warn_off

DESTDIR = $$PWD/../bin

INCLUDEPATH += ../ ../serd/ ../build/

#F:\serd-0.26.0\serd\

win32 {
    CONFIG += staticlib
} else {
    DEFINES += Z_HAVE_UNISTD_H
    CONFIG += staticlib
}

HEADERS = \
    ../serd/serd.h\
	../src/serd_internal.h \
    ../build/serd_config.h
	
SOURCES = \
    ../src/env.c \
    ../src/node.c \
    ../src/reader.c \
    ../src/serdi.c \
    ../src/string.c \
    ../src/uri.c \
    ../src/writer.c
