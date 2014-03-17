! aire_rectangle  -  11.03.2014

! ******************************************
! Calcul de l'aire d'un rectangle
! ******************************************

program aire_rectangle
    
    implicit none

    ! declaration
    real :: largeur, longueur

    ! Lecture des variables
    write(*,*) "Entrer la largeur"
    read(*,*) largeur
    write(*,*) "largeur = ", largeur

    write(*,*) "Entrer la longueur"
    read(*,*) longueur
    write(*,*) "longueur = ", longueur

    ! affiche le résultat
    write(*,*) "Aire du rectangle = ", largeur * longueur

end program aire_rectangle
