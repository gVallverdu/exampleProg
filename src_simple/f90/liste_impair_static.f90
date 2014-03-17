! liste_impair  -  11.03.2014

! ******************************************
! Remplissage et affichage d'une liste des 20 premiers entiers impmairs
! tableau statique
! ******************************************

program liste_impair

    implicit none

    integer                 :: i
    ! nombre de valeurs
    integer, parameter      :: n = 20
    ! declaration d'un tableau statique
    integer, dimension(1:n) :: x

    ! Remplissage de la liste
    do i = 1, n
        x(i) = 2 * i - 1
    end do

    ! affichage de la liste
    write(*, *) "Liste des ", n, " premiers nombres impaires"
    do i = 1, n
        write(*, *) i, x(i)
    end do

    ! affichage 10 par ligne
    write(*, "(10i5)") (x(i), i = 1, n)

end program liste_impair
