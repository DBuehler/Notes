# Notes from reading Pragmatic Test-Driven Development in C# and .NET (packt)

```bash
# create solution file - name is based on parent directory name
dotnet new sln  

# Create a class library (to be tested) in folder Uqs.Arithmetic
dotnet new classlib -o Uqs.Arithmetic

# Add the class library to the solution
dotnet sln add Uqs.Arithmetic

# Create a unit testing project for the class library
dotnet new xunit -o Uqs.Arithmetic.Tests.Unit

# Add unit testing to the solution
dotnet sln add Uqs.Arithmetic.Tests.Unit

# Add a reference to the class library to the unit testing project
dotnet add Uqs.Arithmetic.Tests.Unit reference Uqs.Arithmetic
```