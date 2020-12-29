# Notes > Programming > csharp

Notes on csharp  programming.

## dotnet Core - console

```bash
dotnet new console
dotnet build
dotnet run
```

## dotnet Core - web (ASP.net)

```bash
dotnet new web
```

## Build a .exe (publish)

```bash
dotnet publish -c Release -r win10-x64
```

## Converting from dotnet framework

Notes from converting a project of my from c# 4.6 to dotnet core

* Delete the .sln file
* Replace .csproj files with simple .csproj file... for libraries use:
  
  ```xml
  <Project Sdk="Microsoft.NET.Sdk">
  
    <PropertyGroup>
      <TargetFramework>netstandard2.0</TargetFramework>
    </PropertyGroup>
  
  </Project>
  ```

  for executables use...

  ```xml
  <Project Sdk="Microsoft.NET.Sdk">
  
    <PropertyGroup>
      <OutputType>Exe</OutputType>
      <TargetFramework>netcoreapp2.1</TargetFramework>
    </PropertyGroup>
  
  </Project>
  ```

* Remove `Properties` directories
* Remove `packages.config` files
* Add missing package references

  ```bash
  dotnet add package Newtonsoft.JSON
  ```

* Add missing project references
  
  ```bash
  dotnet add reference ../Project
  ```

For NUnit tests...

* The PropertyGroup in the .csproj file looks like...

  ```xml
   <PropertyGroup>
     <TargetFramework>netcoreapp2.1</TargetFramework>
     <IsPackable>false</IsPackable>
     <IsTestProject>true</IsTestProject>
   </PropertyGroup>
   ```

* Had to add the following package references...

  ```xml
  dotnet add package NUnit
  dotnet add package NUnit3TestAdapter
  dotnet add package Microsoft.NET.Test.Sdk
  ```

* Do: `dotnet test` to run tests

## Good stuff

* [Microsoft's dotnet naming guidelines](https://docs.microsoft.com/en-us/dotnet/standard/design-guidelines/naming-guidelines)
