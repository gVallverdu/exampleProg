! calc_val_fonction_2  -  11.03.2014

! ******************************************
! calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5]
! ******************************************

program calc_val_fonction_2

    implicit none

    ! declaration
    real :: x, pas

    ! initialisation
    x = -5.0
    pas = 0.5

    ! boucle sur les valeurs de x
    do while (x <= 5.0)
        write(*, *) x, x**2
        x = x + pas
    end do

end program calc_val_fonction_2
