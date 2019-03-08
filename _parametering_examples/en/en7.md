---
layout: default
lang: en
ref : 7
permalink: /parametering_examples/step_7
---

We will set up a bot that stores the information of two questions: what is your phone number? What is your email? While allowing to make corrections on both values.



{% OplaAppSample title: "Contact" %}
  {% Entry type : "Input" %}
    Contact
  {% endEntry %}
  {% Entry type: "Output" %}  
    Would you like to give your phone number? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "no" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=getphoneyesno" %}
  {% endEntry %}
{% endOplaAppSample %}





Click on the plus sign and on SAVE;

 


{% OplaAppSample title: "Yes" %}
  {% Entry type : "Input" %}
  Yes
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "getphoneyesno" %} 
    What is your phone number ? {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=getphone" %}
  {% endEntry %}
{% endOplaAppSample %}



Click on the plus sign and on SAVE;


## 1. #Any intents

We will create an #Any intent : 

we click on create a new intent, we rename the intent in #Any, and we delete the inputs and outputs already present by clicking on the minus sign at the end of the line for input (marked "intent") and output ("I don 't understand ")

![image]({{site.images_path | relative_url }}any-empty.png)

Then we click on insert block any in the inputs of intent #Any :

![images]({{site.images_path | relative_url }}any-block-input.png)

![images]({{site.images_path | relative_url }}at-any-in-input.png)

We click on the blue plus sign and on SAVE ; 

We will focus on the variables.

A variable can be managed in two different ways:
* either it is discrete, that is to say that it does not appear in the window of the playground or publish, it is the case if it is written in a code button {% MaterialIcon icon: "code "%},
* or it is explicit and is displayed in the playground or publish window, this is the case if it is written in the output code button {% MaterialIcon icon: "assignment"%}.


The mention @any in intent #Any is used to collect information not contained in other intents, in this case a value entered freely by the user. To capture this value, and to save it in a variable of name "value" for example, it is necessary to make the following manipulation: to click on code, {% MaterialIcon icon: "code"%} and fill the resulting frame with the declaration of the name of the variable, the name "value", and the following symbols, = *, which means assigning a value to the variable value, example:


{% OplaAppSample title: "" %}
  {% Entry type: "Output" %} 
   {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "valeur=*" %}
  {% endEntry %}
{% endOplaAppSample %}


We then parameter the output :


{% OplaAppSample title: "Any" %}
  {% Entry type : "Input" %}
    {% Chip color: "orange", label: "@any" %}
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "getphone" %} 
    {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "phone=*" %} Is your number {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phone" %} ?{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "No" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmphonenbr" %}
  {% endEntry %}
{% endOplaAppSample %}


We click SAVE after modifying the intent

{% OplaAppSample title: "Yes" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmphonenbr" %}
    What is your e-mail adress?     {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=getmail" %} 
  {% endEntry %}
{% endOplaAppSample %}




{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %}
    {% Action label: "getmail" %}
    {% MaterialIcon icon : "code" %}{% Chip color: "blue", label: "email=*" %} Is your e-mail {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "email" %}? {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "Yes" %} {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "No" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=confirmmail" %} 
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Yes" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmmail" %}
    Ok, your contact is saved.
  {% endEntry %}
{% endOplaAppSample %}



We went through the branch of the "Yes" in the schematic.

We will focus on the first branch "No", which allows you to skip the step of asking the phone number to give the e-mail.

{% OplaAppSample title: "No" %}
  {% Entry type: "Output" %}
    {% Action label: "getphoneyesno" %}
    What is your e-mail {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=getmail" %} 
  {% endEntry %}
{% endOplaAppSample %}



{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %}
    {% Action label: "getmail" %}
    {% MaterialIcon icon : "code" %}{% Chip color: "blue", label: "email=*" %} is your e-mail {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "email" %} ? {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "Yes" %} {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "No" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=confirmmail" %} 
  {% endEntry %}
{% endOplaAppSample %}

<br>





## 2. Loops on "No"

We will finally add the two loops "No": we notice that the arrow makes them go back a step: we will take as conditional the previous line of code, which will loop the chatbot on the question.

  We will write the "No" by resuming and reversing the actions getphone and confirmphonenbr, we will put the confirmphonenbr in the conditional and enter the getphone in the code.

{% OplaAppSample title: "No" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmphonenbr" %}
    What is your phone number?  {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=getphone" %} 
  {% endEntry %}
{% endOplaAppSample %}

Similarly, on mail we will write a "No" between confirmmail and getmail


{% OplaAppSample title: "No" %}
  {% Entry type : "Input" %}
    No
  {% endEntry %}
  {% Entry type: "Output" %}
    {% Action label: "confirmmail" %}
    What is your e-mail adress ? {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=getmail" %} 
  {% endEntry %}
{% endOplaAppSample %}

We are now done parametering scheme two!

## 3. Outlook of the exercice in the bot :

There goes a screen capture of the four intents :


![image]({{site.images_path | relative_url }}contact-contact-en.png)
![image]({{site.images_path | relative_url }}contact-yes.png)
![image]({{site.images_path | relative_url }}contact-any-en.png)
![image]({{site.images_path | relative_url }}contact-no.png)