JARDIR = /usr/share/java

all:
	if ! md5sum -c antlr3.jar.md5;then \
	  wget https://github.com/antlr/website-antlr3/raw/gh-pages/download/antlr-3.4-complete.jar -O antlr3.jar; \
	fi

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -m 644 -t $(DESTDIR)$(JARDIR) antlr3.jar
