program octal2decimal
    implicit none 

    integer :: n, c, r, i, suma 

    write (*,*) " Numero en octal a convertir a decimal? "
    read (*,*) n 

    suma = 0
    i = 0
    c = n
    do while (c /= 0)
        r = mod(c, 10)
        c = c / 10
        suma = suma + r * 8**i 
        i = i + 1
    end do 

    write (*,*) n, " en octal equivale en decimal a: ", suma

end program