! fonction : unefonction
! renvoie
!    $\frac{e^x - 10}{x + 2}$
double precision function unefonction(x)

    implicit none

    ! arguments 
    double precision, intent(in) :: x

    unefonction = (exp(x) - 10.) / (x + 2.)

end function unefonction

