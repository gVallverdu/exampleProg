# ------------------------------------------------
# makefile de poche pour programme fortran
# ------------------------------------------------

# compilateurs et options
CC = gfortran
CFLAGS= -g -fbacktrace -fbounds-check -Wall
LFLAGS=
.PHONY: clean
# ------------------------------------------------

main_module: main_module.o mod_racine.o mod_fonction.o
	$(CC) $(LFLAGS) -o $@.x $^

# compilation
%.o: %.f90
	$(CC) -c $(CFLAGS) -o $@ $< 

# ------------------------------------------------
# dependances
main_module.o: mod_racine.o mod_fonction.o

# ------------------------------------------------
# nettoyage
clean:
	rm -v *.o *.mod *.x

# ------------------------------------------------
# $@  	Le nom de la cible
# $<  	Le nom de la première dépendance
# $^  	La liste des dépendances
# ------------------------------------------------

