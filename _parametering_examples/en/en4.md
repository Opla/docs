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

    #Hello
    Input: Hello
    output: Would you like a sweet pizza? [yes] [no] <action=sweetyesno>



![image]({{site.images_path | relative_url }}would-you-like-a-sweet-pizza.png)


which on screen shows :


![image]({{site.images_path | relative_url }}would-you-like-a-sweet-pizza-total.png)


One must click on the plus end of line and on SAVE top of page to save the changes.

![image]({{site.images_path | relative_url }}would-you-like-a-sweet-pizza-saved.png)



![image]({{site.images_path | relative_url }}hello-save.png)







To add the Yes intent (#Yes), click on the grey/blue plus sign on the right in intents column


![image]({{site.images_path | relative_url }}add--an-intent-hello.png)

To modify the name of the intent, one must click the pencil on the right of the upcoming line,

![image]({{site.images_path | relative_url }}modify-intents-name.png)

Then type in the new name

![image]({{site.images_path | relative_url }}rename-intent-yes.png)

Then enter Yes in the line of inputs and delete the default outputs present clicking on the minus of the line and SAVE on top of page.

Ensuite il faut entrer Oui dans la ligne d'inputs et supprimer les autres inputs et outputs éventuellement déjà présents en cliquant sur le moins sur leur ligne.

![image]({{site.images_path | relative_url }}suppress-inputs-and-outputs.png)


Then we will enter the text of the Yes intent's output :<br>

    #Yes
    Input : Yes
    Output :
    action=sweetyesno
    Would you like apples on it?
    [Yes][No]<action = applesyesno>


![image]({{site.images_path | relative_url }}yes-applesyesno.png)


action=sweetyesno must be entered clicking on the three pointed star called conditionnal or insert condition

![image]({{site.images_path | relative_url }}insert-condition.png)

![image]({{site.images_path | relative_url }}action-eg-sweetyesno.png)
![image]({{site.images_path | relative_url }}save-applesyesno.png)

Never forget to click on the plus sign end of line and on SAVE on top each time an intent is modified.

![image]({{site.images_path | relative_url }}yes-save.png)


Add the second output, ending the all-yes side of the diagram.


    action=applesyesno
    There goes an apple-chocolate pizza!

![image]({{site.images_path | relative_url }}yes-applechocolatepizza.png)


After having clicked SAVE, we can test out the conversation in the playground to see if the dialogue unfolds correctly.

The conversation should look something like this :

![image]({{site.images_path | relative_url }}playground-sweet-pizza.png)

![image]({{site.images_path | relative_url }}playground-apple-chocolate-pizza.png)


Congratulations, you have written your first branch of conversation! Now we will add the intent No to complete the diagram.
