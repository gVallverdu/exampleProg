! produit  -  11.03.2014

! ******************************************
! Calcul du produit des n premiers entiers impairs
! ******************************************

program prog_produit

    implicit none

    integer :: i, n, produit

    ! lecture de n
    write(*, *) "Entrer n : "
    read(*,*) n
    write(*, *) "Calcul du produit des premiers entiers impairs entre 1 et ", n

    ! initialisation
    produit = 1

    ! boucle 
    do i = 3, n, 1
        if (mod(i, 2) == 1) then
            produit = produit * i
        end if
    end do
    write(*, *) "produit = ", produit

    ! autre boucle 
    produit = 1
    do i = 3, n, 2
        produit = produit * i
    end do
    write(*, *) "produit = ", produit

end program prog_produit

