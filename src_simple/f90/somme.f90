! somme  -  11.03.2014

! ******************************************
! Calcul de la somme des n premiers entiers
! ******************************************

program prog_somme

    implicit none

    integer :: i, n, somme

    ! lecture de n
    write(*, *) "n ="
    read(*,*) n
    write(*, *) "n = ", n

    ! initialisation
    somme = 0

    ! boucle
    do i = 1, n, 1
        somme = somme + i
    end do

    ! résultat
    write(*, *) "somme = ", somme

end program prog_somme

