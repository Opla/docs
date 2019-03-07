---
layout: default
lang: fr
ref : 7
permalink: /exemple_parametrages/step_7
---

On peut tout à fait, et c'est le cas ici, créer deux schémas de conversation dans le même bot. On va créer la conversation "Contact" parallèlement à la conversation "Pizza".

*À noter : Un intent compte souvent un ou deux inputs pour plusieurs outputs différents.*




{% OplaAppSample title: "Contact" %}
  {% Entry type : "Input" %}
    Contact
  {% endEntry %}
  {% Entry type: "Output" %}  
    Voulez-vous donner votre numéro de téléphone? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "non" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=getphoneyesno" %}
  {% endEntry %}
{% endOplaAppSample %}






Cliquer sur le signe plus et sur SAVE;

 {% MaterialIcon icon: "assignment" %}
On va insérer une variable. Il faut écrire la valeur de la variable à l'intérieur du carré qui résulte de la pression sur le bouton insert output code.<br>



{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "getphoneyesno" %} 
    Quel est votre numéro de téléphone ? {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phonenbr=*" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmphonenbr" %}
  {% endEntry %}
{% endOplaAppSample %}


![images]({{site.images_path | relative_url }}oui-contact.png)

Cliquer sur le signe plus et sur SAVE.

## 1. Les intents #Any

On va créer un intent #Any:

on clique sur créer un nouvel intent, on renomme l'intent en #Any, et on supprime les inputs et outputs déjà présents en cliquant sur le signe moins en bout de ligne pour input (marqué "intent") et output ("I don't understand")

![image]({{site.images_path | relative_url }}any-empty.png)

Puis on clique sur insert block any dans les inputs de #Any :

![images]({{site.images_path | relative_url }}any-block-input.png)

![images]({{site.images_path | relative_url }}at-any-in-input.png)

L'intent #Any sert à stocker une valeur quelconque donnée par l'utilisateur dans une variable accessible avec le bouton {% MaterialIcon icon :"assignment" %} ,insert output code. On va presser ce bouton et écrire *phonenbr=* * à l'intérieur du cadre.

Ensuite on paramètre l'output :


{% OplaAppSample title: "Any" %}
  {% Entry type : "Input" %}
    {% Chip color: "orange", label: "@any" %}
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "confirmphonenbr" %} 
    {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "phonenbr=*" %} est bien votre numéro de téléphone? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=phonenbrconfirmed" %}
  {% endEntry %}
{% endOplaAppSample %}




![image]({{site.images_path | relative_url }}any-confirmphonenbr.png)

On clique sur SAVE après avoir modifié l'intent,

{% OplaAppSample title: "Oui" %}
  {% Entry type: "Output" %}
    {% Action label: "phonenbrconfirmed" %}
    Quel est votre mail ? {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "mail=*" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=confirmmail" %} 
  {% endEntry %}
{% endOplaAppSample %}

![image]({{site.images_path | relative_url }}oui-phonenbrconfirmed.png)


{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmmail" %}
    {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "mail=*" %} est bien votre mail? {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "oui" %} {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "non" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=mailconfirmed" %} 
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Oui" %}
  {% Entry type: "Output" %}
    {% Action label: "mailconfirmed" %}
    Ok, votre contact est enregistré.
  {% endEntry %}
{% endOplaAppSample %}


On a parcouru la branche des "Oui" du schéma.

On va s'intéresser à la première branche "Non", qui permet de sauter l'étape du téléphone pour donner l'e-mail.


{% OplaAppSample title: "Non" %}
  {% Entry type: "Output" %}
    {% Action label: "getphoneyesno" %}
    Quel est votre mail? {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "mail=*" %}  {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=confirmmail2" %} 
  {% endEntry %}
{% endOplaAppSample %}




On est obligé de réécrire l'étape pour reprendre le mail. On ajoute un indice, 2, pour faire la différence avec la première branche.


{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmmail2" %}
    {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "mail=*" %} est bien votre mail? {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "oui" %} {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "non" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=mailconfirmed2" %} 
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Oui" %}
  {% Entry type: "Output" %}
    {% Action label: "mailconfirmed2" %}
Ok, votre contact est enregistré.
  {% endEntry %}
{% endOplaAppSample %}



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

{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}
    {% Action label: "mailconfirmed" %}
    Quel est votre mail ? {% Chip color: "green", label: "mail=*" %} est bien votre mail ? {% Chip color: "blue", label: "action=confirmmail" %} 
  {% endEntry %}
{% endOplaAppSample %}

Nous avons dorénavant fini de paramétrer le schéma 2!