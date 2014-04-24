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
    
    
    ldstr "Second number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)

    ldstr "The maximum is "
    call void [mscorlib]System.Console::Write(string)
    
    call int32 max(int32, int32)
    call void [mscorlib]System.Console::Write(int32)
       

    ret
}

.method static int32 max(int32 a, int32  b)
{
    .maxstack 2
    
    
     ldarg.0
     ldarg.1
     bge   firstBigger
     ldarg.1
     ret
firstBigger:
     ldarg.0
     ret
}


