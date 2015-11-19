program newton_raphson
    implicit none

    real(kind=8) :: eps, xstart, xnew, delta
    real(kind=8) :: fdex, fdexplus, fdexmoins, fprimedex
    integer :: compteur

    eps=1.e-10
    write(6,*) 'Valeur de depart ?'
    read(5,*) xstart

    compteur=0
    delta = 1.

    write(6,*) '--------------------------------------------------------'
    write(6,*) '                        ITERATIONS'
    write(6,*) '--------------------------------------------------------'
    do while (delta > eps .and. compteur <= 1000)
        ! fonction (exp(x) - 10.) / (x + 2.)
        fdex = (exp(xstart) - 10.) / (xstart + 2.)

        ! calcul de la derivee numerique
        fdexplus  = (exp(xstart + eps) - 10.) / (xstart + eps + 2.)
        fdexmoins = (exp(xstart - eps) - 10.) / (xstart - eps + 2.)
        fprimedex = (fdexplus - fdexmoins) / (2. * eps)

        ! application de l'iteration de NR
        xnew = xstart - fdex / fprimedex
        delta = abs(xnew - xstart)

        ! mise en place d'un compteur pour savoir en
        ! combien d'iterations NR converge pour un eps donne
        compteur = compteur + 1

        ! affichage de la convergence
        write(6,'(i10,4e16.6)') compteur, fdex, xnew, delta, eps

        ! mise a jour de xstart
        xstart = xnew
    end do
    write(6,*) '--------------------------------------------------------'
    write(6,*) '                        CONVERGE'
    write(6,*) '--------------------------------------------------------'
    !write(6,'(i10,2e30.20)') compteur,xnew,eps

    !write(6,*)
    !write(6,*) '============================================'
    write(6,*)
    write(6,*) 'A la convergence demandee, une solution est:'
    write(6,'(i10,2e30.20)') compteur, xnew, eps
    write(6,*)

end program newton_raphson

