! population  -  11.03.2014

! ******************************************
! Une population est réduite de 40% tous les 3 ans. 
! Au bout de combien d'années la population est négligeable 
! (inférireure à 0.1% de la population initiale) ?
! ******************************************

program prog_population

    implicit none

    integer :: an
    real    :: population, seuil, perte

    ! initialisation
    population = 100.0
    an = 0
    write(*, *) an, population

    ! paramètres
    perte = 0.4
    seuil = 0.1 / 100. * population

    ! boucle sur les années
    do while (population > seuil)
        an = an + 3
        population = population * (1.0 - perte)
        write(*, *) an, population
    end do

    ! résultats
    write(*, *) "Au bout de ", an, " ans, la population est inférieure à 0.1% de la population initiale"

end program prog_population
