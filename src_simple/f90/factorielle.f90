! factorielle  -  11.03.2014

! ******************************************
! Calcul de factorielle n
! ******************************************

program factorielle

    implicit none

    integer :: i, n, facto

    ! lecture de n
    write(*, *) "Entrer n :"
    read(*, *) n
    write(*, *) "n = ", n

    ! initialiation
    facto = 1

    ! calcul de la factorielle
    do i = 2, n
        facto = facto * i
    end do

    ! affichage résultat
    write(*, *) "Résultat = ", facto

end program factorielle
