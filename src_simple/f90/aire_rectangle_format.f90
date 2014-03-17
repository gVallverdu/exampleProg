! aire_rectangle  -  11.03.2014

! ******************************************
! Calcul de l'aire d'un rectangle
! ******************************************

program aire_rectangle
    
    implicit none

    ! declaration
    real :: largeur, longueur

    ! Lecture des variables
    write(*, "(a)", advance = "no") "Entrer la largeur : "
    read(*, *) largeur
    write(*, "('largeur = ', F8.3)") largeur

    write(*, "(a)", advance = "no") "Entrer la longueur : "
    read(*, *) longueur
    write(*, "('longueur = ', F8.3)") longueur

    ! affiche le résultat
    write(*, "('aire du rectangle = ', F8.3)") largeur * longueur

end program aire_rectangle
