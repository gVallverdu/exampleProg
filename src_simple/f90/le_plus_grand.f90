! le_plus_grand  -  11.03.2014

! ******************************************
! Lire x et y et dire lequel est le plus grand
! ******************************************

program le_plus_grand

    implicit none

    real :: x, y
  
    ! lecture de x et y
    write(*, *) "Entrer x : "
    read(*, *) x
    write(*, *) "x = ", x

    write(*, *) "Entrer y : "
    read(*, *) y
    write(*, *) "y = ", y

    ! test entre x et y
    if (x > y) then
        write(*, *) "x est plus grand"
    else if (x < y) then
        write(*, *) "y est plus grand"
    else
        write(*, *) "x et y sont égaux"
    end if
end program le_plus_grand
