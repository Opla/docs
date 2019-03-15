---
layout: default
lang: en
ref : 1
permalink: /parametering_examples/step_1
---

## Output buttons

In the outputs lies a menu with clickable items to set the interface up, we are going to explain some of them :

![image]({{site.images_path | relative_url }}output-options.png)

<div style="float:left;width:5%" markdown="1">
  {% MaterialIcon icon: "assignment" %}
</div>

    1. insert output code :

This button corresponds to a mode of treatment of a variable ; a variable's value will be printed on screen in the playground. 


<div style="float:left;width:5%" markdown="1">

 {% MaterialIcon icon: "code" %}
</div>
    2. Insert code :

There are two uses for this insert code button

It can be used to store the value of a variable without showing it on screen, as opposed to output code, 

or it can guide the bot through a conversation. The syntax of the action code to be entered will be &#60;action = name_of_action&#62;. This is the line of code that will allow the bot to follow the thread of a conversation. 




<div style="float:left;width:5%" markdown="1">

 {% MaterialIcon icon: "category" %}
</div>
    3. Button :

Creates a button that will be clickable by the user and which will allow to standardize the inputs. One can create a Yes, No, or any desired input button.



<div style="float:left;width:5%" markdown="1">
  {% MaterialIcon icon: "delete" %}
</div>

    4. Delete :

This button is to remove any of the three buttons above in Outputs, which must be done by first removing the internal text and then clicking the button, then the trash.



### Adding a conditional


![image]({{site.images_path | relative_url }}conditional-in-output-options.png)

<div style="float:left;width:5%" markdown="1">

 {% MaterialIcon icon: "device_hub" %}
</div>
    5. Conditional

When creating a new intent, suppress the "I don't understand" line in Outputs. Then appears a three pointed stars called a conditional. This star is seen as long as outputs do not contain non conditional outputs. Its' code content should be the same as the action code  {% MaterialIcon icon: "code" %} in logical order of conversation. <br><br>

**Please note that the interface is not input case sensitive**

When an intent is modified, one must first click the "+" sign on end of line, and then a blue capital SAVE button appears to the right of the Intent's name in Intent screen, on which one must click to save changes.
