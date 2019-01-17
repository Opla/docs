---
layout: default
lang: en
ref : 7
permalink: /parametering_examples/step_7
---

One can quite, and this is the case here, create two conversation patterns in the same bot. "Contact" will be created alongside with "Pizza".

Note: An intent often has one or two inputs for several different outputs.

    #Contact
    Input : contact
    Output :
    Would you like to give out your phone number ?
    <action = getphoneyesno>[Yes][No]

![image]({{site.images_path | relative_url }}Contact-getphoneyesno-en.png)


Click on plus sign and SAVE;


<div style="float:left" markdown="1">

 ![image]({{site.images_path | relative_url }}assignment.png)
</div> We will insert a variable. The value of the variable must be written inside the square resulting from pressing the insert variable assignment button.<br>


<br>#Yes<br>
Input : yes<br>
Output :<br>
action = getphoneyesno <br>
What is your phone number? ![image]({{site.images_path | relative_url }}phonenbr.png)<br>
<action=confirmphonenbr>

![images]({{site.images_path | relative_url }}yes-confirmphonenbr.png)

click on plus sign and SAVE.


## 1. #Any intents

create an intent #Any:

Click on new intent, rename in #Any, and delete default outputs and inputs clicking on the end of line minus sign. ("intent" for input and "I don't understand" for output)

![image]({{site.images_path | relative_url }}any-empty.png)

Then click on insert block any in #Any inputs :

![images]({{site.images_path | relative_url }}any-block-input.png)


![images]({{site.images_path | relative_url }}at-any-in-input.png)


the #Any intent is meant to stock any user inputted value in a variable ![image]({{site.images_path | relative_url }}assignment.png) ,insert variable assignment.

then the output :


#Any<br>
input : ![image]({{site.images_path | relative_url }}at-any.png)<br>
Output:<br>
action = confirmphonenbr<br>
![image]({{site.images_path | relative_url }}phonenbr.png) is your phone number, right?<br>
<action=phonenbrconfirmed>[Yes][No]<br>

![image]({{site.images_path | relative_url }}Any-phonenbrconfirmed-en.png)

Click SAVE after modifying the intent,


#Yes<br>
action=phonenbrconfirmed<br>
What is your mail? ![image]({{site.images_path | relative_url }}mail.png)<action=confirmmail><br>

![image]({{site.images_path | relative_url }}Yes-confirmmail.png)

#Any<br>
action=confirmmail<br>
![image]({{site.images_path | relative_url }}mail.png) is your mail, right?<br>
<action=mailconfirmed>[Yes][No]<br>



#Yes<br>
action=mailconfirmed<br>
Ok, your contact is saved.<br>


Now we'll deal with the no going directly to e-mail


#No<br>
Input : No<br>
Output:
action = getphoneyesno<br>
What is your e-mail? ![image]({{site.images_path | relative_url }}mail.png)<action=confirmmail2><br>

We need to rewrite that step in order to ask for the e-mail. We add index 2 to make a difference with the first branch.

#Any<br>
Output:<br>
action=confirmmail?<br>
![image]({{site.images_path | relative_url }}mail.png) is your mail, right?<br>
<action=mailconfirmed2>[Yes][No]<br>

#Yes<br>
action=mailconfirmed2<br>
Ok, your mail is saved.<br>


## 2. Loops on "No"

We will add the two "No" loops : the arrow takes them up one step ; we will take as a conditional the previous line of code, which will loop the chatbot on the question.


(<br>
    #Yes<br>
    input=yes<br>
    output= ... <action=confirmphonenbr><br><br>

#Any<br>
<span style="background-color: #FFFF00"> action=confirmphonenbr </span>
![image]({{site.images_path | relative_url }}phonenbr.png) is your phone number, right?<br>
<span style="background-color:lightblue">&lt;action = phonenbrconfirmed&gt; </span>[Yes][No]<br><br>
 ) - rewritten as a reminder

 We will write the "No" inverting the actions called phonenbrconfirmed and confirmphonenbr, we will write phonenbrconfirmed in the conditional and confirmphonenbr in the code.


#Non<br>
<span style="background-color:lightblue">action = phonenbrconfirmed </span><br>
What is your phone number? ![image]({{site.images_path | relative_url }}phonenbr.png)
<span style="background-color: #FFFF00"> <action=confirmphonenbr> </span>

likewise, on mail we will write a "No" between mailconfirmed et confirmmail

(<br>
    #Any<br>
<span style="background-color: lightseagreen">action = confirmmail</span><br>
![image]/{{site.images_path | relative_url }}mail.png) is your e-mail adress, right?
<span style="background-color: lightcoral">&lt;action=mailconfirmed&gt;[Oui][Non]</span><br>

) rewritten as a reminder<br><br>


#No<br>
<span style="background-color: lightcoral">action= mailconfirmed</span><br>
What is your e-mail adress?
![image]({{site.images_path | relative_url }}mail.png)  <span style="background-color: lightseagreen"><!--(mail=*)-->&lt;action=confirmmail&gt;</span>


We are now done setting up diagram number 2!
