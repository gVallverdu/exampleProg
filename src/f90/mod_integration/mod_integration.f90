module integration
  
  ! Module integration
  ! ------------------
  !
  ! Ce module contient un ensemble de 4 subroutines pour calculer une integrale
  ! en dimension 1 :
  !
  !     * int_rectangle : Methode des rectangles. La valeur de la fonction est
  !                       celle de la borne inferrieur du rectangle.
  !     * int_trapeze : Methode des trapezes
  !     * int_simpson : Methode de simpson
  !     * int_GaussLegendre : Methode de Gauss et Legendre
  !
  ! La subroutine printGaussLegendreParameters affiche les abscisses et les
  ! points implementes dans la methode de Gauss Legendre.
  !
  ! Les arguments xmin et xmax correspondent respectivement a la borne
  ! inferieure et superieure de l'intervalle d'integration. 
  !
  ! nbin est le nombre d'intervalles utilises dans les methodes des
  ! rectangles des trapezes ou de simpson.
  !
  ! Pour la methode de Gauss Legendre, ordre est l'ordre utilise pour
  ! l'integration.
  !
  ! La valeur de l'integrale est renvoyee dans la variable integrale.
  !
  ! L'argument f est une fonction dont l'interface serait :
  !
  ! interface
  !     double precision function f(x)
  !         double precision, intent(in) :: x
  !     end function f
  ! end interface
  !

  implicit none

  ! abscisses de Gauss-Legendre
  double precision, dimension(6,5), parameter :: zeta = reshape( &
      (/ -0.57735026919d0,  &       ! ordre 2
          0.57735026919d0,  &       ! ordre 2
          0.d0, 0.d0, 0.d0, 0.d0, &
          0.774596669241d0, &       ! ordre 3
         -0.774596669241d0, &       ! ordre 3
          0.d0,             &       ! ordre 3
          0.d0, 0.d0, 0.d0, & 
          0.861136311594d0, &       ! ordre 4
         -0.861136311594d0, &       ! ordre 4
          0.339981043585d0, &       ! ordre 4
         -0.339981043585d0, &       ! ordre 4
          0.d0, 0.d0, &
          0.906179845939d0, &       ! ordre 5
         -0.906179845939d0, &       ! ordre 5
          0.538469310106d0, &       ! ordre 5
         -0.538469310106d0, &       ! ordre 5
          0.d0,             &       ! ordre 5
          0.d0,             &
          0.932469514203d0, &       ! ordre 6
         -0.932469514203d0, &       ! ordre 6
          0.661209386466d0, &       ! ordre 6
         -0.661209386466d0, &       ! ordre 6
          0.238619186083d0, &       ! ordre 6
         -0.238619186083d0/), &     ! ordre 6
          (/6, 5/))

  ! coefficient de Gauss Legendre
  double precision, dimension(6,5), parameter :: weight = reshape( &
      (/  1.d0, 1.d0,          &         ! ordre 2
          0.d0, 0.d0, 0.d0, 0.d0, &
          0.555555555555556d0, &         ! ordre 3
          0.555555555555556d0, &         ! ordre 3
          0.888888888888889d0, &         ! ordre 3
          0.d0, 0.d0, 0.d0,    &
          0.347854845137454d0, &         ! ordre 4
          0.347854845137454d0, &         ! ordre 4
          0.652145154862546d0, &         ! ordre 4
          0.652145154862546d0, &         ! ordre 4
          0.d0, 0.d0,          &
          0.236926885056189d0, &         ! ordre 5
          0.236926885056189d0, &         ! ordre 5
          0.478628670499366d0, &         ! ordre 5
          0.478628670499366d0, &         ! ordre 5
          0.568888888888889d0, &         ! ordre 5
          0.d0,                &
          0.171324492379170d0, &         ! ordre 6
          0.171324492379170d0, &         ! ordre 6
          0.360761573048139d0, &         ! ordre 6
          0.360761573048139d0, &         ! ordre 6
          0.467913934572691d0, &         ! ordre 6
          0.467913934572691d0/), &       ! ordre 6
          (/6, 5/))

  contains

    subroutine int_rectangle(xmin, xmax, nbin, f, integrale, side)
        ! integrale par la methode des rectangles
        ! la variable side indique si on prend la valeur de gauche ou de droite
        ! de l'intervale.
        ! side = "d" : borne superieure
        ! side = "g" : borne inferieure (defaut)

        implicit none

        ! arguments
        double precision, intent(in)  :: xmin, xmax
        integer, intent(in)           :: nbin
        double precision, intent(out) :: integrale
        character(len=1), optional    :: side

        ! fonction a integrer
        double precision :: f

        ! variables locales
        integer          :: i
        double precision :: pas, x

        pas = (xmax - xmin) / dble(nbin)

        ! check side
        if (present(side) .and. (side /= "d" .and. side /= "g")) then
            write(*,"('ERROR : side doit etre egal a d ou g')")
            write(*,"('side = ',a)") side
            stop "erreur" 
        end if

        ! calcul de l'integrale
        integrale = 0.d0
        do i = 1, nbin
            if (present(side) .and. side == "d") then
                x = xmin + dble(i) * pas
            else
                x = xmin + dble(i - 1) * pas
            end if
            integrale = integrale + f(x)
        end do

        integrale = integrale * pas

    end subroutine int_rectangle

    subroutine int_trapeze(xmin, xmax, nbin, f, integrale)
        ! integrale par la methode des trapezes

        implicit none

        ! arguments
        double precision, intent(in)  :: xmin, xmax
        integer, intent(in)           :: nbin
        double precision, intent(out) :: integrale

        ! fonction a integrer
        double precision :: f

        ! variables locales
        integer          :: i
        double precision :: pas

        pas = (xmax - xmin) / dble(nbin)

        integrale = 0.d0

        do i = 1, nbin - 1
            integrale = integrale + f(xmin + dble(i) * pas)
        end do

        integrale = integrale * pas + pas / 2.d0 * (f(xmin) + f(xmax))

    end subroutine int_trapeze

    subroutine int_simpson(xmin, xmax, nbin, f, integrale)
        ! integrale par la methode de simpson

        implicit none

        ! arguments
        double precision, intent(in)  :: xmin, xmax
        integer, intent(in)           :: nbin
        double precision, intent(out) :: integrale

        ! fonction a integrer
        double precision :: f

        ! variables locales
        integer          :: i, nbin_e, npts
        double precision :: pas, f1, f2, f3

        ! check nbin
        if (mod(nbin, 2) /= 0) then
            write(*, "('WARNING : nbin is odd : ',i7)") nbin
            nbin_e = nbin + 1
            write(*, "('calculation with nbin = ',i7)") nbin_e
        else
            nbin_e = nbin
        end if

        pas = (xmax - xmin) / dble(nbin_e)
        npts = nbin_e + 1

        integrale = 0.d0

        f1 = f(xmin)
        do i = 1, npts - 2, 2
            f2 = f(xmin + dble(i) * pas)
            f3 = f(xmin + dble(i + 1) * pas)
            integrale = integrale + f1 + 4.d0 * f2 + f3
            f1 = f3
        end do

        integrale = integrale * pas / 3.d0

    end subroutine int_simpson

    subroutine int_GaussLegendre(xmin, xmax, ordre, f, integrale)
        ! integrale par la methode de simpson

        implicit none

        ! arguments
        double precision, intent(in)  :: xmin, xmax
        integer, intent(in)           :: ordre
        double precision, intent(out) :: integrale

        ! fonction a integrer
        double precision :: f

        ! variables locales
        integer          :: i
        double precision :: xgl

        ! calcul de l'integrale
        integrale = 0.d0

        do i = 1, ordre
            xgl = (xmax - xmin) / 2.d0 * zeta(i, ordre - 1) + (xmax + xmin) / 2.d0
            integrale = integrale + weight(i, ordre - 1) * f(xgl)
        end do

    end subroutine int_GaussLegendre

    subroutine printGaussLegendreParameters()
        
        implicit none

        integer :: i, j

        write(*,*)
        write(*,*) ("-", i = 1, 60)
        write(*, "(' abscisses de Gauss Legendre')")
        write(*, "(5('    ordre  ',i1))") (i, i = 2, 6)
        write(*,*) ("-", i = 1, 60)
        do i = 1, 6
            write(*,"(6F12.7)") (zeta(i,j), j = 1, 5)
        end do
        write(*,*) ("-", i = 1, 60)

        write(*,*)

        write(*,*) ("-", i = 1, 60)
        write(*, "(' poids de Gauss Legendre')")
        write(*, "(5('    ordre  ',i1))") (i, i = 2, 6)
        write(*,*) ("-", i = 1, 60)
        do i = 1, 6
            write(*,"(6F12.7)") (weight(i,j), j = 1, 5)
        end do
        write(*,*) ("-", i = 1, 60)
    end subroutine printGaussLegendreParameters

end module integration
