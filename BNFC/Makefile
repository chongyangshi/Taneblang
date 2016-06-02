all:
	happy -gca ParTaneb.y
	alex -g LexTaneb.x
	latex DocTaneb.tex; dvips DocTaneb.dvi -o DocTaneb.ps
	ghc --make TestTaneb.hs -o TestTaneb
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi
	-rm -f DocTaneb.ps
distclean: clean
	-rm -f DocTaneb.* LexTaneb.* ParTaneb.* LayoutTaneb.* SkelTaneb.* PrintTaneb.* TestTaneb.* AbsTaneb.* TestTaneb ErrM.* SharedString.* Taneb.dtd XMLTaneb.* Makefile*

