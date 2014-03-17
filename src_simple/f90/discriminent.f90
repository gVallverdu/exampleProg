! discriminent  -  11.03.2014

! ******************************************
! Calcul des racines réelles d'un polynome de degré 2
! ******************************************

program discriminent

    implicit none

    ! déclaration
    real :: a, b, c, delta

    write(*, *) "On va résoudre l'équation a*x^2 + b*x + c = 0"

    ! Lecture des variables
    write(*, *) "Entrer a"
    read(*, *) a
    write(*, *) "a = ", a

    write(*, *) "Entrer b"
    read(*, *) b
    write(*, *) "b = ", b

    write(*, *) "Entrer c"
    read(*, *) c
    write(*, *) "c = ", c

    ! Calcul du discriminent
    delta = b**2 - 4 * a * c
    write(*, *) "Delta = ", delta

    ! Test du discriminent
    if (delta > 0.) then
        write(*, *) "L'équation a deux solutions réelles :"
        write(*, *) (-b + sqrt(delta)) / (2.0 * a)
        write(*, *) (-b - sqrt(delta)) / (2.0 * a)
    else if (delta < 0.) then
        write(*, *) "L'équation a deux solutions complexes"
    else
        write(*, *) "L'équatuion a une seule solution :"
        write(*, *) -b / (2.0 * a)
    end if

end program discriminent
