module probabilite

  implicit none

  contains

  integer function combinaison(n, k)
      ! calcule le nombre de combinaison C_n^k
      ! n! / (k! * (n - k)!)

      ! arguments
      integer, intent(in) :: n, k

      combinaison = factorielle(n) / (factorielle(k) * factorielle(n - k))

      return
  end function combinaison


  integer function arrangement(n, k)
      ! calcule le nombre d'arrangement A_n^k
      ! n! / (n - k)!

      ! arguments
      integer, intent(in) :: n, k

      arrangement = factorielle(n) / (factorielle(k) * factorielle(n - k))

      return
  end function arrangement


  integer function factorielle(n)
      ! calcule factorielle n

      ! arguments
      integer, intent(in) :: n

      ! variables locales
      integer :: i

      factorielle = 1
      do i = 2, n
          factorielle = factorielle * i
      end do

      return
  end function factorielle

end module probabilite
