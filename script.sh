#!/bin/bash

cd ./src
outfile=res.dat
rm $outfile


echo "Essai\tType\tMethode\tTailleStructure\tTime\tMemory" >> $outfile


for typeStruct in "ArrayList" "LinkedList" "Vector" ;do
    for methode in "Add" "Remove" "Get" ;do
        for tailleStructure in  '1000' '5000' '10000' '50000' '100000' '250000' '500000' ;do
		        for i in 1 2 3 4 5 6 7 8 9 10; do
              res=$(/usr/bin/time -f"%U\t%M\t" java Main $typeStruct $methode $tailleStructure 1000 2>&1)
              echo "$i\t$typeStruct\t$methode\t$tailleStructure\t$res" >> $outfile
            done
        done
    done
done
