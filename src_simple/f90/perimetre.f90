! perimetre  -  11.03.2014

! ******************************************
! Calcul du périmètre d'un cercle
! ******************************************

program prog_perimetre
    
    implicit none

    ! parametres
    double precision, parameter :: pi = 3.141592653

    ! variables
    double precision :: rayon, perimetre

    ! lecture du rayon
    write(*, *) "Rayon = "
    read(*, *) rayon
    write(*, *) "Rayon = ", rayon
    
    ! calcule le perimetre
    perimetre = 2. * pi * rayon
    write(*, *) "Perimetre = ", perimetre

end program prog_perimetre

