program decimal2octal
    implicit none

    integer :: n, c, r, i, suma 

    write (*,*) " Numero decimal a convertir a octal?"
    read (*,*) n 

    suma = 0
    i = 0
    c = n 
    do while (c /= 0)
        r = mod (c, 8)
        c = c / 8
        suma = suma + r * 10**i 
        i = i + 1
    end do 

    write (*,*) n, " en decimal equivale en octal a: ", suma
end program