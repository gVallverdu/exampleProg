! liste_random  -  11.03.2014

! ******************************************
! Remplissage et affichage d'une liste aléatoire de nombre entre -1 et 1
! tableau statique
! ******************************************

program liste_random

    implicit none

    integer              :: i
    real                 :: x
    integer, parameter   :: n = 15
    real, dimension(1:n) :: maListe

    ! Remplissage et affichage de la liste
    do i = 1, n
        call random_number(x)
        maListe(i) = 2.0 * x - 1.0
        write(*, *) i, maListe(i)
    end do

    ! plus direct
    call random_number(maListe(:))
    maListe(:) = 2.0 * maListe(:) - 1.0

end program liste_random
