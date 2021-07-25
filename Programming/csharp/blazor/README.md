# Blazor

## MarkupString type

Allowing markup in a string (e.g. make <b>...</b> show up in bold, not as
markup.

  <p>Title: @((MarkupString)movie.Title)</p>