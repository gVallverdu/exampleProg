!* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
! definitions de quelques constantes
!* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
module constantes

  implicit none

  ! pi
  double precision, parameter :: U_PI       = 3.14159265358979d0

  ! constante de planck
  double precision, parameter :: U_hplanck  = 6.6260693d-34             ! J.s

  ! charge elementaire
  double precision, parameter :: U_qelec    = 1.60217653d-19            ! C

  ! nombre d'avogadro
  double precision, parameter :: U_Na       = 6.02214199d23             ! mol^-1

  ! constante de boltzman
  double precision, parameter :: U_boltzman = 1.3806505d-23             ! J.K-1

end module constantes
