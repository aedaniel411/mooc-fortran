program decimal2binario
    implicit none
    integer :: n, c, r, suma, i

    write (*,*) " numero a convertir? "
    read (*,*) n

    c = n
    suma = 0
    i = 0 
    do while (c /= 0)
        r = mod(c,2)
        suma = suma + (r * 10**i)
        c = c / 2
        i = i + 1
    end do   

    write (*,*) n, " en binario equivale a: ", suma

end program