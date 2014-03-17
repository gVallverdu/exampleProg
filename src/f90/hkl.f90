! **********************************************************
! On cherche les triplets (h,k,l) tel que :
!    h >= k >= l >= 0
!    h, k, l entier
! **********************************************************

program hkl

    implicit none

    integer, parameter :: n = 20

    integer :: h, k, l, i
    integer :: parite_h, parite_k

    ! initialisation
    h = 0
    i = 0

    ! recherche des raies
    do while (i <= n)
        do k = 0, h, 1
            do l = 0, k, 1
                ! test de la parite
                if (mod(h, 2) == mod(k, 2) .and. mod(k, 2) == mod(l, 2)) then
                    i = i + 1
                    write(*, "('raie ', i3, ' : (', i3, ',', i3, ',', i3,')')")i, h, k, l
                end if
            end do
        end do
        ! increment pour h
        h = h + 1
    end do

    ! recherche des raies
    ! plus efficace : 1 seul calcul de reste
    ! plus élegant : bon nombre de raies avec un nom de boucle
    i = 0
    bcl_h: do h = 0, n, 1
               parite_h = mod(h, 2)
               do k = 0, h, 1
                   parite_k = mod(k, 2)
                   if (parite_k /= parite_h) cycle
                   do l = 0, k, 1
                       if (parite_k == mod(l, 2)) then
                           i = i + 1
                           write(*, "('raie ', i3, ' : (', i3, ',', i3, ',', i3,')')")i, h, k, l
                       end if
                       if (i == n) exit bcl_h
                   end do
               end do
           end do bcl_h

end program hkl

