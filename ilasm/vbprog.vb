Module Module1
    function maximum(a as integer, b as integer) as integer        
        if a <= b then
           return b
        else 
           return a
        end if
    End function

    Sub Main()
      Console.Write(maximum(12, 7))
    end sub
End Module