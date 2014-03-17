! liste_random  -  11.03.2014

! ******************************************
! Remplissage et affichage d'une liste aléatoire de nombre entre -1 et 1
! tableau dynamique
! ******************************************

program liste_random

    implicit none

    integer                         :: i, n
    real, dimension(:), allocatable :: maListe

    ! nombre de valeurs
    write(*, *) "Nombres de valeurs : "
    read(*, *) n
    write(*, *) "n = ", n

    ! réservation mémoire
    allocate(maListe(1:n))

    ! Remplissage de la liste
    call random_number(maListe(:))
    maListe(:) = 2.0 * maListe(:) - 1.0

    ! affichage des nombres
    do i = 1, n
        write(*, *) i, maListe(i)
    end do

end program liste_random
