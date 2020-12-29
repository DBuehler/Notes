# Dotnet Code

## Column Rulers

(From: [Stack Overflow](https://stackoverflow.com/questions/29968499/vertical-rulers-in-visual-studio-code))

File -> Preferences -> Settings

```ini
"editor.rulers": [80,120]
```

Change color of ruler lines:

```json
"workbench.colorCustomizations": {
    "editorRuler.foreground": "#ff4081"
}
```

## User "snippets"

c-sharp specific in `csharp.json`...

```json
{
  "Class File": {
    "prefix": ["classfile"],
    "body":[
      "using System;",
      "using System.Collections.Generic;",
      "using System.Linq;",
      "using System.Threading.Tasks;",
      "",
      "namespace ${0:namespace}",
      "{",
      "\tpublic class ${1:classname}",
      "\t{",
      "\t}",
      "}"
    ]
  }
}
```
