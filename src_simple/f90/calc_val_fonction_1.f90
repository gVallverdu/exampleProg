! calc_val_fonction_1  -  11.03.2014

! ******************************************
! calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5]
! ******************************************

program calc_val_fonction_1
    
    implicit none

    ! declaration
    integer :: x

    ! boucle sur les valeurs de x
    do x = -5, 5, 1
        write(*, *) x, x**2
    end do

end program calc_val_fonction_1
