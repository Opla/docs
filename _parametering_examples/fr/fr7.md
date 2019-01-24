---
layout: default
lang: fr
ref : 7
permalink: /exemple_parametrages/step_7
---

On peut tout à fait, et c'est le cas ici, créer deux schémas de conversation dans le même bot. On va créer la conversation "Contact" parallèlement à la conversation "Pizza".

*À noter : Un intent compte souvent un ou deux inputs pour plusieurs outputs différents.*

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Contact</span>
<b>Input</b> : Contact
<hr />
<b>Output</b> : Voulez-vous donner votre numéro de téléphone ? <span class="chip chip_red">Oui</span><span class="chip chip_red">Non</span><span class="chip chip_brandSecondary">action = getphoneyesno</span>
</div>

![image]({{site.images_path | relative_url }}contact-getphoneyesno.png)


Cliquer sur le signe plus et sur SAVE;

 ![image]({{site.images_path | relative_url }}assignment.png)
On va insérer une variable. Il faut écrire la valeur de la variable à l'intérieur du carré qui résulte de la pression sur le bouton insert variable assignment.<br>

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Oui</span>
<b>Input</b> : Oui
<hr />
<b>Output</b> : action <b class="u-textColor_red">=</b> getphoneyesno<br />
Quel est votre numéro de téléphone? <span class="chip chip_green">phonenbr=*</span><span class="chip chip_blue">action=confirmphonenbr></span>
</div>

![images]({{site.images_path | relative_url }}oui-contact.png)

Cliquer sur le signe plus et sur SAVE.

## 1. Les intents #Any

On va créer un intent #Any:

on clique sur créer un nouvel intent, on renomme l'intent en #Any, et on supprime les inputs et outputs déjà présents en cliquant sur le signe moins en bout de ligne pour input (marqué "intent") et output ("I don't understand")

![image]({{site.images_path | relative_url }}any-empty.png)

Puis on clique sur insert block any dans les inputs de #Any :

![images]({{site.images_path | relative_url }}any-block-input.png)

![images]({{site.images_path | relative_url }}at-any-in-input.png)

L'intent #Any sert à stocker une valeur quelconque donnée par l'utilisateur dans une variable accessible avec le bouton ![image]({{site.images_path | relative_url }}assignment.png) ,insert variable assignment.

Ensuite on paramètre l'output :

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Any</span>
<b>Input</b> : <span class="chip chip_orange">@any</span>
<hr />
<b>Output</b> : action <b class="u-textColor_red">=</b> confirmphonenbr<br>
<span class="chip chip_green">phonenbr=*</span> est bien votre numéro de téléphone? <span class="chip chip_blue">action=phonenbrconfirmed</span><span class="chip chip_red">oui</span><span class="chip chip_red">non</span>
</div>

![image]({{site.images_path | relative_url }}any-confirmphonenbr.png)

On clique sur SAVE après avoir modifié l'intent,

  {% include oplaAppSample-test.html title="Oui" action="phonenbrconfirmed" question="Quel est votre mail?" chip1color="green" chip1="mail=*" chip2color="blue" chip2="action=confirmmail" %}

![image]({{site.images_path | relative_url }}oui-phonenbrconfirmed.png)

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Any</span>
<b>Output</b>: action <b class="u-textColor_red">=</b> confirmmail<br>
<span class="chip chip_green">mail=*</span> est bien votre mail?
<span class="chip chip_blue">action=mailconfirmed</span><span class="chip chip_red">oui</span><span class="chip chip_red">non</span>
</div>
<p></p>
<div class="OplaAppSample">
<span class="OplaAppSample-title">#Oui</span>
<b>Output</b> : action <b class="u-textColor_red">=</b> mailconfirmed<br>
Ok, votre contact est enregistré
</div>

On a parcouru la branche des "Oui" du schéma.

On va s'intéresser à la première branche "Non", qui permet de sauter l'étape du téléphone pour donner l'e-mail.

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Non</span>
<b>Output</b> : action <b class="u-textColor_red">=</b> getphoneyesno<br>
Quel est votre mail? <span class="chip chip_green">mail=*</span><span class="chip chip_blue">action=confirmmail2</span>
</div>

On est obligé de réécrire l'étape pour reprendre le mail. On ajoute un indice, 2, pour faire la différence avec la première branche.

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Any</span>
<b>Output</b>: action <b class="u-textColor_red">=</b> confirmmail<br>
<span class="chip chip_green">mail=*</span> est bien votre mail?
<span class="chip chip_blue">action=mailconfirmed2</span><span class="chip chip_red">oui</span><span class="chip chip_red">non</span>
</div>
<p></p>
<div class="OplaAppSample">
<span class="OplaAppSample-title">#Oui</span>
<b>Output</b> : action <b class="u-textColor_red">=</b> mailconfirmed2<br>
</div>

Ok, votre contact est enregistré

## 2. Les boucles sur Non

On va enfin ajouter les deux boucles "Non" : on remarque que la flèche les fait remonter d'une étape : on va donc prendre comme conditionnelle la ligne de code précédente, ce qui va faire reboucler le chatbot sur la question.

(
<div class="OplaAppSample_loopWraper">

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Oui</span>
<b>Input</b> : Oui
<hr/>
<b>Output</b> : ... action <b class="u-textColor_red">=</b> confirmphonenbr<br>
</div>

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Any</span>
<b>Output</b> : ... action <b class="u-textColor_red">=</b> confirmphonenbr<br><span class="chip chip_green">phonenbr=*</span> est bien votre numéro de téléphone?
<span class="chip chip_blue">action=phonenbrconfirmed</span><span class="chip chip_red">oui</span><span class="chip chip_red">non</span>
</div>

</div>
 ) - *réécrit pour rappel*

 On va écrire le "Non" en reprenant et inversant les actions phonenbrconfirmed et confirmphonenbr, on va mettre phonenbrconfirmed dans la conditionnelle et confirmphonenbr dans le code.

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Non</span>
<b>Output</b> : action <b class="u-textColor_red">=</b> phonenbrconfirmed<br>
Quel est votre numéro de téléphone? <span class="chip chip_green">phonenbr=*</span><span class="chip chip_blue">action=confirmphonenbr</span>
</div>

De même, sur mail on va écrire un "Non" entre mailconfirmed et confirmmail

(
<div class="OplaAppSample_loopWraper">

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Any</span>
<b>Output</b> : action <b class="u-textColor_red">=</b> confirmmail<br><span class="chip chip_green">mail=*</span> est bien votre mail?
<span class="chip chip_blue">action=mailconfirmed</span><span class="chip chip_red">oui</span><span class="chip chip_red">non</span>
</div>

</div>
 )

<div class="OplaAppSample">
<span class="OplaAppSample-title">#Non</span>
<b>Output</b> : action <b class="u-textColor_red">=</b> mailconfirmed<br>
Quel est votre mail? <span class="chip chip_green">mail=*</span><span class="chip chip_blue">action=confirmmail</span>
</div>

{% include cardintent.html title="Oui" action="phonenbrconfirmed" question="Quel est votre mail?" chips="mail=*$green, action=confirmmail$blue" %}

Nous avons dorénavant fini de paramétrer le schéma 2!
