JARDIR = /usr/share/java
ANTLR = antlr-complete-3.5.2.jar

$(ANTLR):
	mvn

all: $(ANTLR)

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -m 644 -t $(DESTDIR)$(JARDIR) antlr-complete/target/$(ANTLR)
	ln -sr $(DESTDIR)$(JARDIR)/$(ANTLR) $(DESTDIR)$(JARDIR)/antlr3.jar

clean:
	mvn clean

distclean: clean
