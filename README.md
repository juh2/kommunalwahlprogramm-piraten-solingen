# Wahlprogramm der Solinger Piraten zur Kommunalwahl 2014

Dieses Repository enthält das von der Mitgliederversammlung der Solinger Piraten am 27.3.2014 verabschiedete Wahlprogramm. Sinn und Zweck dieses Repositories ist die transparente und nachvollziehbare Redaktion des Wahlprogramms.

Mit dem Makefile kann man ein E-Book im EPUB-Format sowie ein PDF des Wahlprogramms erzeugen. Die Ausgabeformate werden mit Pandoc erzeugt. Unter Linux-Distributionen, die auf Debian basieren, kann pandoc folgendermaßen installiert werden.

    apt-get install pandoc

Für andere Betriebssysteme gibt es Installer, die auf der [Website des Pandoc-Projekts](http://johnmacfarlane.net/pandoc/installing.html) heruntergeladen werden können.

Pandoc erzeugt das PDF mit Hilfe des Satzprogramms LaTeX. Informationen darüber, wie man LaTeX installiert, findet man zum Beispiel [hier](http://latex-project.org/ftp.html)

Unter Debian und ähnlichen Distributionen kann man LaTeX folgendermaßen installieren: 

    apt-get install texlive
    apt-get install texlive-xetex

Nach der Installation von Pandoc und LaTeX können E-Book und PDF mit folgendem Befehl unter Linux und Mac OS X gebaut werden.

    make

