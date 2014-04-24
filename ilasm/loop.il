.assembly extern mscorlib{}

.assembly HelloWorld
{
    .ver 1:0:1:0
}


.method static void main()
{
    .entrypoint
    .maxstack 2
    
    .locals init (int32 k, int32 n)
                  
    ldc.i4.1       //k = 1
    stloc.0
    ldc.i4 10     //n = 10
    stloc.1    
topOfLoop:
    ldloc.0       //k
    ldloc.1       //n
    bgt  done      //if k > n we are done
    //print k*k
    ldloc.0
    ldloc.0
    mul
    call void [mscorlib]System.Console::WriteLine(int32)
    //k = k + 1
    ldloc.0
    ldc.i4.1
    add
    stloc.0
    br  topOfLoop
done:
    ret
}





