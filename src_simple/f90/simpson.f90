! simpson  -  11.03.2014

! ***************************************************************
! Intégration par la méthode de Simpson. L'intégration analytique 
! de la fonction (x^2 - 3x - 6) e^-x entre 1 et 3 donne comme 
! application numérique -2.525369
! ***************************************************************

program simpson

    implicit none

    integer         :: npas
    real            :: a, b, pas, integrale, x

    ! valeur exacte
    real, parameter :: analytique = -2.525369

    ! Lecture de l'intervalle
    write(*, *) "a = "
    read(*, *) a
    write(*, *) "a = ", a

    write(*, *) "b = "
    read(*, *) b
    write(*, *) "b = ", b

    ! Nombre de segments
    write(*, *) "npas = "
    read(*, *) npas
    write(*, *) "npas = ", npas

    ! initialisation
    integrale = 0.0
    pas = (b - a) / real(npas)
    x = a

    ! calcul de l'integrale
    do while (x < b)
        integrale = integrale + pas / 3.0 * (f(x) + 4.0 * f(x + pas) + f(x + 2.0 * pas))
        x = x + 2.0 * pas
    end do

    ! résultats
    write(*, *) "Résultat  = ", integrale
    write(*, *) "Résidu    = ", analytique - integrale
    write(*, *) "Précision = ", (analytique - integrale) / analytique * 100.0

    contains
        
        ! fonction numérique utilisée
        real function f(x)
            implicit none
            real :: x
            f = (x**2 - 3 * x - 6) * exp(-x)
       end function f

end program simpson
