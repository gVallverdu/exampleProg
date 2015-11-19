module rechercheRacine

    implicit none

    contains

        subroutine newtonRaphson(racine, f, eps, cible)

            ! recherche l'antecedant de cible

            implicit none

            ! arguments
            double precision, intent(inout)        :: racine
            double precision, intent(in), optional :: cible, eps

            ! fonction dont on cherche la racine
            double precision :: f
 
            ! variables locales
            integer          :: compteur
            double precision :: xold, xnew, delta, valcible
            double precision :: threshold, fprim, fdex

            ! precision
            if (present(eps)) then
                threshold = eps
            else
                threshold = 1.d-10
            end if

            ! valeur cible
            if (present(cible)) then
                valcible = cible
            else
                valcible = 0.d0
            end if

            write(*,*) "--------------------------------------------------------"
            write(*,*) "                      NEWTON RAPHSON"
            write(*,*) "--------------------------------------------------------"
            write(*,"('x0    = ',e16.6)") racine
            write(*,"('seuil = ',e16.6)") threshold
            write(*,"('cible = ',e16.6)") valcible
            write(*,*) "--------------------------------------------------------"
            write(*,*) "                        ITERATIONS"
            write(*,*) "--------------------------------------------------------"

            ! initialisation
            compteur = 0
            delta    = 1.d0
            xold     = racine
            write(*, '(i4,4e16.6)') compteur, f(xold), xold, 0., threshold

            ! iterations
            do while (delta > threshold .and. compteur <= 100)

                ! calcul de la fonction en xold
                fdex = f(xold) - valcible

                ! calcul de la derivee numerique
                fprim  = (f(xold + threshold) - f(xold - threshold)) / (2.d0 * threshold) 

                ! application de l'iteration de Newton Raphson
                xnew = xold - fdex / fprim
                delta = abs(xnew - xold)
                compteur = compteur + 1

                ! affichage de la convergence
                write(*, '(i4,4e16.6)') compteur, fdex, xnew, delta, threshold

                ! mise a jour de xstart
                xold = xnew
            end do

            if (delta < threshold) then
                racine = xnew
                write(*, *) '--------------------------------------------------------'
                write(*, *) '                        CONVERGE'
                write(*, *) '--------------------------------------------------------'
                write(*, *) 'A la convergence demandee, une solution est:'
                write(*, "('x = ',e20.10,'    f(x) = ', e20.10)") racine, f(racine)
                write(*, *)
            else
                write(*, *) '--------------------------------------------------------'
                write(*, *) '                      NON CONVERGE'
                write(*, *) '--------------------------------------------------------'
            end if

        end subroutine newtonRaphson

end module rechercheRacine

