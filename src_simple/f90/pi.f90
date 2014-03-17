program prog_pi

  implicit none

  integer                     :: i, n, ntirage
  double precision            :: x, y
  double precision, parameter :: pi = 3.141592653589793d0

  ! lecture du nombre de tirage
  write(*, *) "Nombre de tirage : "
  read(*, *) ntirage
  write(*, *) "ntirage = ", ntirage

  ! initialisation
  n = 0

  ! calcul du nombre pi
  do i = 1, ntirage, 1
      call random_number(x)
      call random_number(y)

      if (x**2 + y**2 < 1.d0) then
          n = n + 1
      end if
  end do

  write(*, *) "pi = ", 4.0 * dble(n) / dble(ntirage)
  write(*, *) "% d'erreur = ", (pi - 4.d0 * dble(n) / dble(ntirage)) / pi * 100.d0

end program prog_pi

