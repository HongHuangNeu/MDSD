.assembly extern mscorlib{}

.assembly HelloWorld
{
    .ver 1:0:1:0
}

.method static void main()
{
    .entrypoint
    .maxstack 4
    
    .locals init (int32 first,
                  int32 second)
                  

    ldstr "First number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc.0
    
    
    ldstr "Second number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc.1


    ldstr "comb({0},{1}) is "
    ldloc.0
    box int32
    ldloc.1
    box int32
    call void [mscorlib]System.Console::Write(string, object, object)
    
    
    ldloc.0
    ldloc.1
    call int32 comb(int32, int32)
    call void [mscorlib]System.Console::Write(int32)
       

    ret
}

.method static int32 comb(int32 n, int32  k)
{
     .maxstack 4
    
     ldc.i4.1      //default return value of 1
    
     // if k = 0  return 1 
     ldarg.1
     ldc.i4.0
     beq  comb_is_done
     
     // if n == k  return 1
     ldarg.0
     ldarg.1
     beq  comb_is_done

     pop            //remove default value of 1 from the stack

     //compute comb(n-1, k)
     ldarg.0
     ldc.i4.1
     sub
     ldarg.1
     
     call int32 comb(int32, int32)

     //compute comb(int32, int32)
     ldarg.0
     ldc.i4.1
     sub
     ldarg.1
     ldc.i4.1
     sub
     call int32 comb(int32, int32)

     // return comb(n-1, k) + comb(n-1, k-1)
     add
comb_is_done:
     ret
}


