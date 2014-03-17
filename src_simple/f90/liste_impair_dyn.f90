! liste_impair  -  11.03.2014

! ******************************************
! Remplissage et affichage d'une liste des 20 premiers entiers impmairs
! tableau dynamique
! ******************************************

program liste_impair

    implicit none

    integer :: i, n
    ! declaration d'un tableau dynamique
    integer, dimension(:), allocatable :: x

    ! lecture du nombre de valeurs
    write(*, *) "Nombre de nombres impairs :"
    read(*, *) n
    write(*, *) "n = ", n

    ! allocation de la mémoire pour le tableau
    allocate(x(1:n))

    ! Remplissage de la liste
    do i = 1, n
        x(i) = 2 * i - 1
    end do

    ! affichage 10 par ligne
    write(*, "(10i5)") (x(i), i = 1, n)

    ! libération de la memoire
    deallocate(x)

end program liste_impair
