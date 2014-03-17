! minmax  -  11.03.2014

! ******************************************
! Recherche du maximum et du minimum dans une liste pseudo-alétoire
! ******************************************

program minimax

    implicit none

    integer, parameter   :: n = 35
    integer              :: i
    real                 :: mini, maxi
    real, dimension(1:n) :: maListe

    ! Remplissage d'une liste pseudo-aléatoire de nombres entre 0 et 100
    call random_number(maListe(:))
    maListe(:) = 100.0 * maListe(:)
    write(*, "(10F8.3)") (maListe(i), i = 1, n)

    ! initialisation
    mini = maListe(1)
    maxi = maListe(1)

    ! recherche du maximum et du minimum
    do i = 1, n
        ! recherche minimum
        if (maListe(i) < mini) then
            mini = maListe(i)
        end if

        ! recherche maximum
        if (maListe(i) > maxi) then
            maxi = maListe(i)
        end if
    end do

    ! résultats
    write(*, *) "Résultats :"
    write(*, *) "maximum = ", maxi
    write(*, *) "minimum = ", mini

    ! avec les fonctions internes min(), max()
    mini = maListe(1)
    maxi = maListe(1)

    do i = 1, n
        mini = min(mini, maListe(i))
        maxi = max(maxi, maListe(i))
    end do

    write(*, *) "maximum = ", maxi
    write(*, *) "minimum = ", mini

    ! avec les fonctions internes maxval(), minval()
    mini = minval(maListe(:))
    maxi = maxval(maListe(:))

    write(*, *) "maximum = ", maxi
    write(*, *) "minimum = ", mini
    
end program minimax
