# make V=1
ifdef V
V		  ?= 1
BUILDFLAGS	  += -verbose $(V)
DOCFLAGS	  += -verbose $(V)
TESTFLAGS	  += -verbose $(V)
ALLFLAGS	  += -verbose $(V)
INSTALLFLAGS	  += -verbose $(V)
UNINSTALLFLAGS += -verbose $(V)
REINSTALLFLAGS += -verbose $(V)
CLEANFLAGS	  += -verbose $(V)
DISTCLEANFLAGS += -verbose $(V)
CONFIGUREFLAGS += -verbose $(V)
endif

# OASIS_START
# DO NOT EDIT (digest: a3c674b4239234cbbe53afe090018954)

SETUP = ocaml setup.ml

build: setup.data
	$(SETUP) -build $(BUILDFLAGS)

doc: setup.data build
	$(SETUP) -doc $(DOCFLAGS)

test: setup.data build
	$(SETUP) -test $(TESTFLAGS)

all:
	$(SETUP) -all $(ALLFLAGS)

install: setup.data
	$(SETUP) -install $(INSTALLFLAGS)

uninstall: setup.data
	$(SETUP) -uninstall $(UNINSTALLFLAGS)

reinstall: setup.data
	$(SETUP) -reinstall $(REINSTALLFLAGS)

clean:
	$(SETUP) -clean $(CLEANFLAGS)

distclean:
	$(SETUP) -distclean $(DISTCLEANFLAGS)

setup.data:
	$(SETUP) -configure $(CONFIGUREFLAGS)

configure:
	$(SETUP) -configure $(CONFIGUREFLAGS)

.PHONY: build doc test all install uninstall reinstall clean distclean configure

# OASIS_STOP
