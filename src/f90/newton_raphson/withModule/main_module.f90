! Programme principal
!     * utilise le module racine
!     * utilise la fonction unefonction
program main

    ! contient la fonction
    use fonction

    ! contient la subroutine newtonRaphson
    use rechercheRacine

    implicit none

    double precision :: racine, eps, cible

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

    ! --------------------------------------------------------

    ! parametre de la gaussienne
    f_sigma = 2.d0
    f_mu = 5.d0
    ! appel de la subroutine newtonRaphson
    ! passage des arguments sous la forme clef = valeur
    cible = 0.1d0
    racine = 2.d0
    call newtonRaphson(cible = cible, f = gaussienne, racine = racine)

end program main
