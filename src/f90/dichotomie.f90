! **********************************************************
! Résolution de l'équation f(x) = 0 par la méthode de dichotomie
! **********************************************************

program dichotomie

  implicit none

  double precision, parameter :: eps = 1.d-10
  double precision            :: x1, x2, xm, delta
  integer                     :: compteur

  ! lecture de l'intervalle
  write(*,*) "Valeur de depart 1 ?"
  read(*,*) x1
  write(*,*) "Valeur de depart 2 ?"
  read(*,*) x2
  
  if (f(x1) * f(x2) > 0) then
      stop "La fonction ne s'annule pas dans l'intervalle"
  end if

  ! initialisation
  delta = 10. * eps
  compteur = 0

  ! recherche de f(x) = 0    
  do while (delta > eps .and. compteur <= 1000)
      ! milieu de [x1, x2]
      xm = (x1 + x2) / 2.d0

      ! selection
      if (f(x1) * f(xm) > 0.) then
          x1 = xm
      else 
          x2 = xm
      end if

      ! compteur
      compteur = compteur + 1

      ! delta
      delta = abs(x2 - x1)

      write(*,"(i10, 5e16.6)") compteur, f(xm), x1, x2, delta, eps
  end do

  contains

    double precision function f(x)
        implicit none
        double precision :: x
        f = log(0.01 * x) + exp(x)
    end function

end program dichotomie
