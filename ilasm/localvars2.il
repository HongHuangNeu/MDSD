.assembly extern mscorlib{}
.assembly LocalVars
{
    .ver 1:0:1:0
}

.method static void main()
{
    .entrypoint
    .maxstack 4
    // declare loca variables 
    .locals init (int32 first,
                  int32 second,
                  int32 result)
    // read first number and store in first local variable
    ldstr "First number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc first
    // read second number and store in second local variable
    ldstr "Second number: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc second
    // add the two numbers and store in third local variable
    ldloc first
    ldloc second
    add
    stloc result
    // load the format string
    ldstr "{0} + {1} = {2}"
    // load the three objects to print
    ldloc first
    box int32    
    ldloc second
    box int32    
    ldloc result
    box int32
    // call method to print
    call void [mscorlib]System.Console::WriteLine(string, object, 
                                                 object, object) 
    ret
}