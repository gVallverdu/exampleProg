# ------------------------------------------------
# makefile de poche pour programme fortran
# ------------------------------------------------

# compilateurs et options
CC = gfortran
CFLAGS= -g -fbacktrace -fbounds-check -Wall
LFLAGS=
.PHONY: all clean
# ------------------------------------------------

constantes: mod_constantes.o main.o
	$(CC) $(LFLAGS) -o $@.x $^

# compilation
%.o: %.f90
	$(CC) -c $(CFLAGS) -o $@ $< 

# ------------------------------------------------
# dependances

main.o: mod_constantes.o

# ------------------------------------------------
# nettoyage
clean:
	rm -v *.o *.mod *.x

# ------------------------------------------------
# $@  	Le nom de la cible
# $<  	Le nom de la première dépendance
# $^  	La liste des dépendances
# ------------------------------------------------

