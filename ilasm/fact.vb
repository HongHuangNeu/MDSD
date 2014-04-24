Module Module1
    function comb(n as integer, k as integer) as integer        
        if k = 0 then
           return 1
        end if
        if n = k then
           return 1
        end if
        return comb(n-1, k) + comb(n-1, k-1)

    End function

    Sub Main()
      Console.Write(comb(10, 2))
    end sub
End Module