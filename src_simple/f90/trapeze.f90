! trapeze  -  11.03.2014

! *******************************************************************
! Intégration par la méthode des trapèzes. L'intégration analytique 
! de la fonction (x^2 - 3x - 6) e^-x entre 1 et 3 donne comme 
! application numérique -2.525369
!********************************************************************

program trapeze

    implicit none

    integer         :: i, npas
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

    ! calcul de l'integrale
    do i = 1, npas
        x = a + (i - 1) * pas
        integrale = integrale + pas * (f(x) + f(x + pas)) / 2.0
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

end program trapeze
