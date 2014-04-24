.assembly extern mscorlib{}

.assembly HelloWorld
{
    .ver 1:0:1:0
}
.class A{
.method static void main()
{
    .entrypoint
    .maxstack 1

    ldstr "Hello world!"
    call void [mscorlib]System.Console::WriteLine(string)

    ret
}
}