---
layout: default
lang: en
ref : 4
permalink: /parametering_examples/step_4
---

The start screen looks like this :

![image]({{site.images_path | relative_url }}ecran-zero.png)


One must add an intent clicking on the plus sign :

![image]({{site.images_path | relative_url }}add-first-intent.png)


one must delete the Input "Intent" and the Output "I don't understand" clicking on the minus on the line and on delete.

![image]({{site.images_path | relative_url }}delete-i-dont-understand-en.png)

Click on the pencil to the right of the intents column to rename the intent


![image]({{site.images_path | relative_url }}rename-intent-click.png)

![image]({{site.images_path | relative_url }}rename-intent-hello.png)


In the intent one must write the following


{% OplaAppSample title: "Hello" %}
  {% Entry type : "Input" %}
    Hello
  {% endEntry %}
  {% Entry type: "Output" %}
    What kind of vehicle would you like to rent ? {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "a car" %} {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "a commercial vehicle" %} {% MaterialIcon icon :"code" %}{% Chip color: "blue", label: "action=getvehicletype" %} 
  {% endEntry %}
{% endOplaAppSample %}

which on screen shows 

![image]({{site.images_path | relative_url }}rent-a-car-hello.png)

Click the blue plus end of line of the output to save the parametering

Do not forget to save the intent clicking on SAVE to the right of the intent's name



![image]({{site.images_path | relative_url }}hello-save.png)

the action=getvehicletype text must be copied in the conditionnal following in the intent coming after Hello

as it happens, two intents are concerned : 

  * intent #A Car

  * intent #A commercial vehicle



To add the "a car" intent (#A car), click on the grey/blue plus sign on the right in intents column


![image]({{site.images_path | relative_url }}add--an-intent-hello.png)

To modify the name of the intent, one must click the pencil on the right of the upcoming line,

![image]({{site.images_path | relative_url }}modify-intents-name.png)

Then type in the new name

![image]({{site.images_path | relative_url }}rename-intent-a-car.png)

Then enter A car in the line of inputs and delete the default outputs present clicking on the minus of the line and SAVE on top of page.


Then we will enter the text of the A car intent's output :<br>


{% OplaAppSample title: "A car" %}
  {% Entry type : "Input" %}
    A car
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "getvehicletype" %}
   Must it be longer than 4m? {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "Yes" %} {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "No" %} {%MaterialIcon icon : "code" %}{% Chip color: "blue", label: "action=lengthsup4myesno" %} 
  {% endEntry %}
{% endOplaAppSample %}





action=getvehicletype must be entered clicking on the three pointed star called conditional or insert condition

![image]({{site.images_path | relative_url }}insert-condition.png)

Never forget to click on the plus sign end of line and on SAVE on top each time an intent is modified.

And for the second intent, which is at the end of the chain 

We will create a #yes intent, with as input yes and outputs multiple possibilities, but which for now will contain : 


{% OplaAppSample title: "Yes" %}
  {% Entry type : "Input" %}
    yes
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "lengthsup4myesno" %}
    You would like to rent an estate car
  {% endEntry %}
{% endOplaAppSample %}







Congratulations, you have written your first branch of conversation! Now we will add the intent No which leads to "You would like to rent a city car"