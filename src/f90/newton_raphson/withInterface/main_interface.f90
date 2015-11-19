! Programme principal
!     * utilise le module racine
!     * utilise la fonction unefonction, pour pouvoir passer la fonction en
!     argument de la subroutine il est necessaire de preciser son interface.
!     C'est à dire comment elle fonction.

program main

    use rechercheRacine

    implicit none

    double precision :: racine, eps, cible

    ! delcaraction de la fonction en precisant son interface
    interface
        double precision function unefonction(x)
            double precision, intent(in) :: x
        end function unefonction
    end interface

    ! appel de la subroutine newtonRaphson
    ! sans la valeur cible : cible (defaut = 0)
    ! sans la precision : eps (defaut 1d-10)
    racine = 1.d0
    call newtonRaphson(racine, unefonction)

    ! --------------------------------------------------------

    ! appel de la subroutine newtonRaphson
    ! avec pour cible 10
    racine = 1.d0
    eps    = 1.d-14
    cible  = 10.d0
    call newtonRaphson(racine, unefonction, eps, cible)

end program main
