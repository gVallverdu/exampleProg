! calc_val_fonction_3  -  11.03.2014

! ******************************************
! calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5]
! ******************************************

program calc_val_fonction_3

    implicit none

    ! déclaration
    real :: x, pas

    ! initialisation
    x = -5.0
    pas = 0.5

    ! boucle sur les valeurs de x
    do while (x <= 5)
        write(*, *) x, f(x)
        x = x + pas
    end do

    contains

    ! fonction numerique
    real function f(x)

        implicit none

        real :: x

        f = x**2

    end function f

end program calc_val_fonction_3
