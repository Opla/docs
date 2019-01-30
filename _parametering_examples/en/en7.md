---
layout: default
lang: en
ref : 7
permalink: /parametering_examples/step_7
---

One can quite, and this is the case here, create two conversation patterns in the same bot. "Contact" will be created alongside with "Pizza".

Note: An intent often has one or two inputs for several different outputs.


{% OplaAppSample title: "Contact" %}
  {% Entry type : "Input" %}
    Contact
  {% endEntry %}
  {% Entry type: "Output" %}  
    Would you like to give out your phone number? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "No" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=getphoneyesno" %}
  {% endEntry %}
{% endOplaAppSample %}


Click on plus sign and SAVE;




 {% MaterialIcon icon: "assignment" %} We will insert a variable. The value of the variable must be written inside the square resulting from pressing the insert variable assignment button.<br>

{% OplaAppSample title: "Yes" %}
  {% Entry type : "Input" %}
    yes
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "getphoneyesno" %} 
    What is your phone number ? {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phonenbr=*" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmphonenbr" %}
  {% endEntry %}
{% endOplaAppSample %}


![images]({{site.images_path | relative_url }}yes-confirmphonenbr.png)

click on plus sign and SAVE.


## 1. #Any intents

create an intent #Any:

Click on new intent, rename to #Any, and delete default outputs and inputs clicking on the end of line minus sign. ("intent" for input and "I don't understand" for output)

![image]({{site.images_path | relative_url }}any-empty.png)

Then click on insert block any in #Any inputs :

![images]({{site.images_path | relative_url }}any-block-input.png)


![images]({{site.images_path | relative_url }}at-any-in-input.png)


the #Any intent is meant to stock any user inputted value in a variable {% MaterialIcon icon: "assignment" %} ,insert variable assignment.

Then the output :


{% OplaAppSample title: "Any" %}
  {% Entry type : "Input" %}
    {% Chip color: "orange", label: "@any" %}
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "confirmphonenbr" %} 
    {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phonenbr=*" %} is your phone number, right? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "no" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=phonenbrconfirmed" %}
  {% endEntry %}
{% endOplaAppSample %}





Click SAVE after modifying the intent,



{% OplaAppSample title: "Yes" %}
  {% Entry type: "Output" %} 
    {% Action label: "phonenbrconfirmed" %} 
    What is your mail ? {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "mail=*" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmmail" %}
  {% endEntry %}
{% endOplaAppSample %}

<br>


{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %} 
    {% Action label: "confirmmail" %} 
    {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "mail=*" %} is your mail, right? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "no" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=mailconfirmed" %}
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Yes" %}
  {% Entry type: "Output" %} 
    {% Action label: "mailconfirmed" %} 
    Ok, your contact is saved.
  {% endEntry %}
{% endOplaAppSample %}




Now we'll deal with the no going directly to e-mail



{% OplaAppSample title: "No" %}
  {% Entry type: "Input" %}
  No
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "getphoneyesno" %} 
    What is your e-mail? {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "mail=*" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmmail2" %}
  {% endEntry %}
{% endOplaAppSample %}


We need to rewrite that step in order to ask for the e-mail. We add index 2 to make a difference with the first branch.



{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %} 
    {% Action label: "confirmmail" %} 
    {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "mail=*" %} is your mail, right? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "no" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=mailconfirmed2" %}
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Yes" %}
  {% Entry type: "Output" %} 
    {% Action label: "mailconfirmed2" %} 
    Ok, your mail is saved.
  {% endEntry %}
{% endOplaAppSample %}



## 2. Loops on "No"

We will add the two "No" loops : the arrow takes them up one step ; we will take as a conditional the previous line of code, which will loop the chatbot on the question.


(<br>


{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %} 
    {% Action label: "confirmphonenbr" %} 
    {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phonenbr=*" %} is your phone number, right? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "no" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=phonenbrconfirmed" %}
  {% endEntry %}
{% endOplaAppSample %}



 ) - rewritten as a reminder

 We will write the "No" inverting the actions called phonenbrconfirmed and confirmphonenbr, we will write phonenbrconfirmed in the conditional and confirmphonenbr in the code.


<!--#No<br>
<span style="background-color:lightblue">action = phonenbrconfirmed </span><br>
What is your phone number? ![image]({{site.images_path | relative_url }}phonenbr.png)
<span style="background-color: #FFFF00"> <action=confirmphonenbr> </span>-->


{% OplaAppSample title: "No" %}
  {% Entry type: "Output" %} 
    {% Action label: "phonenbrconfirmed" %} 
    What is your phone number? {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phonenbr=*" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmphonenbr" %}
  {% endEntry %}
{% endOplaAppSample %}

likewise, on mail we will write a "No" between mailconfirmed et confirmmail

(
    
<!--
    #Any<br>
<span style="background-color: lightseagreen">action = confirmmail</span><br>
![image]({{site.images_path | relative_url }}mail.png) is your e-mail adress, right?
<span style="background-color: lightcoral">&lt;action=mailconfirmed&gt;[Oui][Non]</span><br>-->



{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %} 
    {% Action label: "confirmmail" %} 
    {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "mail=*" %} is your mail, right? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "yes" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "no" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=mailconfirmed" %}
  {% endEntry %}
{% endOplaAppSample %}


) rewritten as a reminder<br><br>

<!--
#No<br>
<span style="background-color: lightcoral">action= mailconfirmed</span><br>
What is your e-mail adress?
![image]({{site.images_path | relative_url }}mail.png)  <span style="background-color: lightseagreen">&lt;action=confirmmail&gt;</span> -->


{% OplaAppSample title: "No" %}
  {% Entry type: "Output" %} 
    {% Action label: "mailconfirmed" %} 
    What is your e-mail adress? {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "mail=*" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmmail" %}
  {% endEntry %}
{% endOplaAppSample %}


We are now done setting up diagram number 2!
