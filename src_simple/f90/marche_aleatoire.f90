! marche_aleatoire  -  11.03.2014

! ******************************************
! Marche aléatoire dans une plan 2D
! ******************************************

program marche_aleatoire

    implicit none

    integer, parameter                :: d = 2      ! dimension
    integer                           :: i, k, npas
    real                              :: amplitude
    real, dimension(d)                :: w
    real, dimension(:,:), allocatable :: x

    ! paramètres de la marche
    write(*, *) "Nombre de pas : "
    read(*, *) npas
    write(*, *) "npas = ", npas

    write(*, *) "Amplitude des déplacement : "
    read(*, *) amplitude
    write(*, *) "amplitude = ", amplitude

    ! allocation memoire
    allocate(x(npas, d))

    ! initialisation
    do k = 1, d
        x(1, k) = 0.0
    end do

    ! marche aleatoire
    do i = 2, npas
        do k = 1, d
            call random_number(w(k))
            w(k) = 2.0 * w(k) - 1.0
            x(i, k) = x(i - 1, k) + amplitude * w(k)
        end do
    end do

    ! enregistrement de la trajectoire dans un fichier
    open(unit = 10, file = "traj.dat", action = "write")
    do i = 1, npas
        write(10, *) (x(i, k), k = 1, d)
    end do
    close(unit = 10)

end program marche_aleatoire
