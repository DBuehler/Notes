# Notes > Programming > csharp

Notes on csharp  programming.

## dotnet Core - console

```
dotnet new console
dotnet build
dotnet run
```

## dotnet Core - web (ASP.net)

```
dotnet new web
```

## Converting from dotnet framework

* Delete the .sln file
* Replace .csproj files with simple .csproj file
  ```
  <Project Sdk="Microsoft.NET.Sdk">
  
    <PropertyGroup>
      <TargetFramework>netstandard2.0</TargetFramework>
    </PropertyGroup>
  
  </Project>
  ```
* Remove `Properties` directories
* Add missing package references
  ```
  dotnet add package Newtonsoft.JSON
  ```
