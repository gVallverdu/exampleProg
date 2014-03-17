program testIntegration

  use integration

  implicit none

  integer          :: i, nbin
  double precision :: integrale, xmin, xmax

  ! valeur theorique
  double precision, parameter :: valth = -2.525369d0

  ! parametre integration
  xmin = 1.d0
  xmax = 3.d0
  nbin = 20

  write(*,*) ("-", i = 1, 70)
  write(*,"('Borne inferieure    : ', f12.7)") xmin
  write(*,"('Borne superieure    : ', f12.7)") xmax
  write(*,"('nombre d intervales : ', i4)") nbin
  write(*,"('Valeur theorique    : ', f12.7)") valth
  write(*,*) ("-", i = 1, 70)

  ! integration par la methode des rectangles
  call int_rectangle(xmin, xmax, nbin, fonction, integrale)
  write(*,"('Methode des rectangles (gauche)      : ', f20.10, f10.6, ' %')") integrale, (valth-integrale)/valth*100.d0

  call int_rectangle(xmin, xmax, nbin, fonction, integrale, side = "d")
  write(*,"('Methode des rectangles (droite)      : ', f20.10, f10.6, ' %')") integrale, (valth-integrale)/valth*100.d0

  ! integration par la methode des trapezes
  call int_trapeze(xmin, xmax, nbin, fonction, integrale)
  write(*,"('Methode des trapezes                 : ', f20.10, f10.6, ' %')") integrale, (valth-integrale)/valth*100.d0

  ! integration par la methode de simpson
  call int_simpson(xmin, xmax, nbin, fonction, integrale)
  write(*,"('Methode de Simpson                   : ', f20.10, f10.6, ' %')") integrale, (valth-integrale)/valth*100.d0

  write(*,*) ("-", i = 1, 70)

  ! methode de Gauss Legendre
  do i = 2, 6
      call int_GaussLegendre(xmin, xmax, i, fonction, integrale)
      write(*,"('Methode de Gauss Legendre, ordre ', i3, ' : ', f20.10, f10.6, ' %')") i, integrale, (valth-integrale)/valth*100.d0
  end do

  write(*,*) ("-", i = 1, 70)

  !call printGaussLegendreParameters()

  contains

    double precision function fonction(x)
        implicit none
        double precision, intent(in) :: x
        fonction = (x**2 - 3.d0 * x - 6.d0) * exp(-x)
    end function fonction

end program testIntegration
