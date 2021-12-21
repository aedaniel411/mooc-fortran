program binario2decimal
    implicit none
    integer :: n, i, c, r, suma

    write (*,*) "Numero binario a convertir a decimal?"
    read (*,*) n 

    c = n
    suma = 0
    i = 0

    do while (c /= 0)
        r = mod(c, 10)
        c = c / 10
        suma = suma + (r * 2**i)
        i = i + 1
    end do 

    write (*,*) n, " binario en decimal equivale a: ", suma
end program