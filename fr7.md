---
layout: default
lang: fr
ref : 7
---

On peut tout à fait, et c'est le cas ici, créer deux schémas de conversation dans le même bot. On va créer la conversation "Contact" parallèlement à la conversation "Pizza".

À noter : Un intent compte souvent un ou deux inputs pour plusieurs outputs différents.

    #Contact
    Input : contact
    Output : 
    Voulez-vous donner votre numéro de téléphone ?
    <action = getphoneyesno>[Oui][Non]

![image]({{site.images_path}}Contact-getphoneyesno.png)


Cliquer sur le signe plus et sur SAVE;


<div style="float:left" markdown="1">

 ![image]({{site.images_path}}assignment.png) 
</div> On va insérer une variable. Il faut écrire la valeur de la variable à l'intérieur du carré qui résulte de la pression sur le bouton insert variable assignment.<br>


<br>#Oui<br>
Input : Oui<br>
Output :<br>
action = getphoneyesno <br>
Quel est votre numéro de téléphone? ![image]({{site.images_path}}phonenbr.png)<br>
<action=confirmphonenbr>

![images]({{site.images_path}}Oui-contact.png)

Cliquer sur le signe plus et sur SAVE.


## 1. Les intents #Any

On va créer un intent #Any:

on clique sur créer un nouvel intent, on renomme l'intent en #Any, et on supprime les inputs et outputs déjà présents en cliquant sur le signe moins en bout de ligne pour input (marqué "intent") et output ("I don't understand")

![image]({{site.images_path}}any-empty.png)


Puis on clique sur insert block any dans les inputs de #Any :

![images]({{site.images_path}}any-block-input.png)


![images]({{site.images_path}}at-any-in-input.png)



l'intent #Any sert à stocker une valeur quelconque donnée par l'utilisateur dans une variable accessible avec le bouton ![image]({{site.images_path}}assignment.png) ,insert variable assignment.

Ensuite on paramètre l'output :


#Any<br>
input : ![image]({{site.images_path}}at-any.png)<br>
Output:<br>
action = confirmphonenbr<br>
![image]({{site.images_path}}phonenbr.png) est bien votre numéro de téléphone?<br>
<action=phonenbrconfirmed>[oui][non]<br>

![image]({{site.images_path}}Any-confirmphonenbr.png)

On clique sur SAVE après avoir modifié l'intent,


#Oui<br>
action=phonenbrconfirmed<br>
Quel est votre mail? ![image]({{site.images_path}}mail.png)<action=confirmmail><br>

![image]({{site.images_path}}Oui-phonenbrconfirmed.png)

#Any<br>
action=confirmmail<br>
![image]({{site.images_path}}mail.png) est bien votre mail?<br>
<action=mailconfirmed>[Oui][Non]<br>]



#Oui<br>
action=mailconfirmed<br>
Ok, votre contact est enregistré <br>


On a parcouru la branche des "Oui" du schéma. On va s'intéresser à la première branche "Non", qui permet de sauter l'étape du téléphone pour donner l'e-mail.

#Non<br>
Input : Non<br>
Output:
action = getphoneyesno<br>
Quel est votre mail? ![image]({{site.images_path}}mail.png)<action=confirmmail2><br>

On est obligé de réécrire l'étape pour reprendre le mail. On ajoute un indice, 2, pour faire la différence avec la première branche.

#Any<br>
Output:<br>
action=confirmmail?<br>
![image]({{site.images_path}}mail.png) est bien votre mail?<br>
<action=mailconfirmed2>[Oui][Non]<br>

#Oui<br>
action=mailconfirmed2<br>
Ok, votre contact est enregistré.<br>


## 2. Les boucles sur Non

On va enfin ajouter les deux boucles "Non" : on remarque que la flèche les fait remonter d'une étape : on va donc prendre comme conditionnelle la ligne de code précédente, ce qui va faire reboucler le chatbot sur la question.

(<br>
    #Oui<br>
    input=oui<br>
    output= ... <action=confirmphonenbr><br><br>

#Any<br>
<span style="background-color: #FFFF00"> action=confirmphonenbr </span>
![image]({{site.images_path}}phonenbr.png) est bien votre numéro de téléphone?<br>
<span style="background-color:lightblue">&lt;action = phonenbrconfirmed&gt; </span>[Oui][Non]<br><br>
 ) - réécrit pour rappel

 On va écrire le "Non" en reprenant et inversant les actions phonenbrconfirmed et confirmphonenbr, on va mettre phonenbrconfirmed dans la conditionnelle et confirmphonenbr dans le code.


#Non<br>
<span style="background-color:lightblue">action = phonenbrconfirmed </span><br>
Quel est votre numéro de téléphone? ![image]({{site.images_path}}phonenbr.png)
<span style="background-color: #FFFF00"> <action=confirmphonenbr> </span>

De même, sur mail on va écrire un "Non" entre mailconfirmed et confirmmail

(<br>
    #Any<br>
<span style="background-color: lightseagreen">action = confirmmail</span><br>
![image]({{site.images_path}}mail.png) est bien votre mail?
<span style="background-color: lightcoral">&lt;action=mailconfirmed&gt;[Oui][Non]</span><br>

)<br>


#Non<br>
<span style="background-color: lightcoral">action= mailconfirmed</span><br>
Quel est votre mail?<br>
![image]({{site.images_path}}mail.png)  <span style="background-color: lightseagreen"><!--(mail=*)--> <img width="60" class="text-aligned" src="images/mail.png">&lt;action=confirmmail&gt;</span>


Nous avons dorénavant fini de paramétrer le schéma 2!


