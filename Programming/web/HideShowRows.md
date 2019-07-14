# Notes > Programing > Web > HideShowRows

# Source

Taken from jsfiddle: https://jsfiddle.net/t38hzbnd

# HTML

```html
<div id="selectType">
    <label><input type="checkbox" id="smallcars" name="smallcars" class="rowA" checked/>Smallcars</label>
    <label><input type="checkbox" id="mediumcars" name="mediumcars" class="rowB" checked/>Mediumcars</label>
    <label><input type="checkbox" id="bigcars" name="bigcars" class="rowC" checked/>Bigcars</label>
</div>

<table class="types">
    <tr class="rowA">
        <td>Small Car info</td>
        <td>extra info</td>
    </tr>
    <tr class="rowB">
        <td>Medium Car info</td>
        <td>extra info</td>
    </tr>
    <tr class="rowC">
        <td>Big Car info</td>
        <td>extra info</td>
    </tr>
</table>
```

# javascript

```javascript
    $(document).ready(function() {
        
         $('#selectType :checkbox').click( function()  {
                 var getType = '.'+$(this).attr('class');
                 var checkStatus = $(this).is(':checked');
                if(checkStatus === false)
                    {
                        $(getType,'.types').hide();
                    } else {
                        $(getType,'.types').show();
                    }
         });

      });
```
