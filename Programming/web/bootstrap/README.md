# Notes on Bootstrap...

[Bootstrap Website](https://getbootstrap.com/)

# Using CDN

```
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
```

# Columns

```
<div class="container">
  <div class="row">
    <div class="col">
      One of Two
    </div>
    <div class="col">
      Two of Two
    </div>
  </div>
</div>
```

Note: 12 columns!

Column sizes:
* `col-`: extra small
* `col-sm-`: small
* `col-md-`: medium
* `col-lg-`: large
* `col-xl-`: extra large


## Specifying column widths

```
<div class="container">
  <div class="row">
    <div class="col-md-8">
      One of Two
    </div>
    <div class="col-md-4">
      Two of Two
    </div>
  </div>
</div>
```

# Specifying column order

```
<div class="container">
  <div class="row">
    <div class="col-md-2">
      One of Three
    </div>
    <div class="col-md-4 order-12 ">
      Three of Three
    </div>
    <div class="col-md-6 order-1">
      Two of Three
    </div>
  </div>
</div>
```

# Adding a gap column

One of Two - six column gap - Two of Two


```
<div class="container">
  <div class="row">
    <div class="col-md-2">
      One of Two
    </div>
    <div class="col-md-4 offset-md-6">
      Two of Two
    </div>
  </div>
</div>
```
