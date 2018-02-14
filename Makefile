ALL: vectorsToDXF run

run: vectorsToDXF
	./vectorsToDXF vectors.dat

vectorsToDXF: vectorsToDXF.hs
	ghc vectorsToDXF.hs
