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
                  int32 second,
                  int32 result)

    ldstr "First number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc first
    
    ldstr "Second number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc second

    ldloc first
    ldloc second
    add
    stloc result

    ldstr "{0} + {1} = {2}"
    
    ldloc first
    box int32
    
    ldloc second
    box int32
    
    ldloc result
    box int32
    
    call void [mscorlib]System.Console::WriteLine(string, object, object, object)    

    ret
}