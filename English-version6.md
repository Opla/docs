---
layout : default
---
Same thing with creating new intent #No, one should rename the intent to No, delete default parameters, click on SAVE, and insert the following :
    
    #No
    Input : no
    Output: 
    action=applesyesno 
    All chocolate pizza!<br>


 ![image](assets/images/all-chocolate-pizza.png)

Do not forget to click SAVE before testing the conversation in the Playground.

Then we'll add the right branch of diagram,

    #No
    Input : no
    Output :
    action=sweetyesno
    Would you like mushrooms on the pizza ?
    [Yes][No]<action=mushroomsyesno>

    #Yes
    Input : Yes
    Output :
    action = mushroomsyesno
    There goes a Queen pizza

    #No
    Input : no
    Output :
    action=mushroomsyesno
    There goes a three-cheese pizza !

Here we go, our first conversation is set up! Let's then study another example, one which enables taking in contact information, from manual input done by the user.










<div style = "text-align:center" markdown="1">
<a href="English-version5.html" class="previous">&laquo; Previous</a>
<a href="English-version7.html" class="next">Next &raquo;</a>
</div>

