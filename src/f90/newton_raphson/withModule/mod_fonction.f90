module fonction

  implicit none

  ! parametre pour la gaussienne
  double precision :: f_sigma = 1.d0, f_mu = 0.d0

  ! pi accessible uniquement en interne
  double precision, parameter, private :: pi = 3.14159265359d0

  contains

    double precision function unefonction(x)
        ! fonction : unefonction
        ! renvoie
        !    $\frac{e^x - 10}{x + 2}$

        implicit none

        ! arguments 
        double precision, intent(in) :: x

        unefonction = (exp(x) - 10.) / (x + 2.)

    end function unefonction

! * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

    double precision function gaussienne(x, mu, sig)
        ! fonction gaussienne
        ! utilise les parametres definis dans le module si
        ! mu et sig ne sont pas passes en argument

        implicit none

        ! arguments
        double precision, intent(in)           :: x
        double precision, optional, intent(in) :: mu, sig

        ! variables locales
        double precision :: norme, moy, sigma

        ! sigma
        if (present(sig)) then
            write(*,*)"sig present"
            sigma = sig
        else
            sigma = f_sigma
        end if

        ! mu
        if (present(mu)) then
            write(*,*)"mu present"
            moy = mu
        else
            moy = f_mu
        end if

        ! calcul de la gaussienne
        norme = 1.d0 / (sigma * sqrt(2.d0 * pi))
        gaussienne = norme * exp(-(x - moy)**2 / (2.d0 * sigma**2))

    end function gaussienne

end module fonction

