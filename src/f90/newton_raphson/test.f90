program test

  use fonction

  implicit none

  integer :: i
  double precision :: x, pas

  f_mu = 5.d0
  f_sigma = 1.d0


  pas = 10.d0 / dble(200)
  do i = 1, 200
      x = dble(i-1) * pas
      write(*,*) x, gaussienne(x)
  end do

end program test
