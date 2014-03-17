! racine_x  -  11.03.2014

! ******************************************
! Calcul de la racine carré de x si x est positif.
! ******************************************

program racine_x

    implicit none

    real :: x

    ! lecture de x
    write(*, *) "x = "
    read(*, *) x
    write(*, *) "x = ", x
  
    ! test de la valeur de x et calcul de sqrt(x)
    if (x >= 0) then
        write(*, *) "racine(x) = ", sqrt(x)
    else
        write(*, *) "x est négatif"
    end if

end program racine_x

