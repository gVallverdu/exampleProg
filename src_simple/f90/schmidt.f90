! schmidt  -  13.03.2014

! ******************************************
! Procédé d'orthogonalisation de Gram-Schimdt.
! Soit u et v deux vecteurs. On cherche le vecteur vp 
! le plus proche de v orthogonal à u.
! ******************************************

program schmidt

    implicit none

    integer            :: i
    real               :: scalaire, normu
    real, dimension(3) :: u, v, vp

    ! vecteur u
    u(1) = 1.0
    u(2) = 0.0
    u(3) = 0.0
    normu = sqrt(sum((u(:))**2))

    ! vecteur v
    v(1) = 1.0
    v(2) = 2.0
    v(3) = 3.0

    ! calcul du produit scalaire
    scalaire = dot_product(u, v)
    write(*, *) "u.v = ", scalaire

    ! orthogonalisation de schimdt
    if (scalaire /= 0) then
        vp(:) = v(:) - scalaire / normu * u(:)
        ! verification
        write(*, *) "u.vp = ", dot_product(u, vp)
        write(*, *) "vp = ", (vp(i), i = 1, 3)
    end if

end program schmidt
