# contrib/pg_tde/Makefile

PGFILEDESC = "pg_tde access method"

EXTENSION = pg_tde
DATA = pg_tde--1.0.sql
REGRESS = pg_tde
TAP_TESTS = 0

SUBDIRS = src

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/postgres-tde-ext
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif

$(recurse)