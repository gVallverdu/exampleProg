program regression

    implicit none

    character(len=40) :: namei
    real(kind=8), dimension(100) :: x, y
    integer :: i, nbpoints, io
    real(kind=8) :: a, b, cross, moyx, moyy, moyx2

    write(6,*) 'Nom du fichier de points ?'
    read(5,*) namei
    open(unit=10, file=namei)

    i = 0
    io = 0
    do while (io == 0)
      i = i + 1
      read(10, *, iostat=io) x(i), y(i)
      if (io > 0) stop "erreur lecture"
    end do
    close(unit=10)
    nbpoints = i - 1
    write(*, *) nbpoints

    moyx = 0.0d00
    moyy = 0.0d00
    cross = 0.0d00
    moyx2 = 0.0d00
    do i = 1, nbpoints
       cross = cross + x(i)*y(i)
       moyx = moyx + x(i)
       moyy = moyy + y(i)
       moyx2 = moyx2 + x(i)*x(i)
    enddo

    a = (cross - moyx * moyy / dble(nbpoints)) / (moyx2 - moyx**2 / dble(nbpoints))
    b = (moyy / dble(nbpoints) * moyx2 - moyx / dble(nbpoints) * cross) / (moyx2 - moyx**2 / dble(nbpoints))

    write(*, *) a,b

end program regression
