! reste  -  11.03.2014

! ******************************************
! Calcul du reste de la division de deux entiers
! ******************************************

program prog_reste

    implicit none

    integer :: dividende, diviseur, reste

    ! lecture du dividende
    write(*,*) "Dividende = "
    read(*,*) dividende
    write(*,*) "Dividende = ", dividende

    ! lecture du diviseur
    write(*,*) "Diviseur = "
    read(*,*) diviseur
    write(*,*) "Diviseur = ", diviseur

    ! calcul du reste
    reste = mod(dividende, diviseur)

    ! affichage du resultat
    write(*,*) "Reste = ", reste

end program prog_reste

