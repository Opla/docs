---
layout: default
lang: fr
ref : 7
permalink: /exemple_parametrages/step_7
---

Nous allons paramétrer un bot qui stocke les informations de deux questions : quel est votre numéro de téléphone? quel est votre e-mail? Tout en permettant d'effectuer des correctifs sur les deux valeurs.


{% OplaAppSample title: "Contact" %}
  {% Entry type : "Input" %}
    Contact
  {% endEntry %}
  {% Entry type: "Output" %}  
    Voulez-vous donner votre numéro de téléphone? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "non" %} {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=saisirtelephoneouinon" %}
  {% endEntry %}
{% endOplaAppSample %}






Cliquer sur le signe plus et sur SAVE;

 


{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "saisirtelephoneouinon" %} 
    Quel est votre numéro de téléphone ? {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=saisirtelephone" %}
  {% endEntry %}
{% endOplaAppSample %}



Cliquer sur le signe plus et sur SAVE.

## 1. Les intents #Any

On va créer un intent #Any:

on clique sur créer un nouvel intent, on renomme l'intent en #Any, et on supprime les inputs et outputs déjà présents en cliquant sur le signe moins en bout de ligne pour input (marqué "intent") et output ("I don't understand")

![image]({{site.images_path | relative_url }}any-empty.png)

Puis on clique sur insert block any dans les inputs de #Any :

![images]({{site.images_path | relative_url }}any-block-input.png)

![images]({{site.images_path | relative_url }}at-any-in-input.png)

On clique sur le + bleu et sur SAVE ; 

Nous allons nous intéresser au sujet des variables.

Une variable peut être gérée de deux façons différentes : 
  * soit elle est discrète c'est-à-dire qu'elle ne s'affiche pas dans la fenêtre du playground ou du publish, c'est le cas si on l'écrit dans un bouton code {% MaterialIcon icon: "code" %} , 
  * soit elle est explicite et s'affiche dans la fenêtre du playground ou du publish, c'est le cas si on l'écrit dans le bouton output code {% MaterialIcon icon: "assignment" %}. 

La mention @any dans l'intent #Any sert à recueillir des informations non contenues dans les autres intents, en l'occurrence une valeur saisie librement par l'utilisateur. Pour capter cette valeur, et l'enregistrer dans une variable de nom "valeur" par exemple, il faut faire la manipulation suivante : cliquer sur code, {% MaterialIcon icon: "code" %} et remplir le cadre résultant avec la déclaration du nom de la variable, le nom "valeur", et les symboles suivants,  =* , qui veulent dire assigner une valeur à la variable valeur, exemple :

{% OplaAppSample title: "" %}
  {% Entry type: "Output" %} 
   {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "valeur=*" %}
  {% endEntry %}
{% endOplaAppSample %}


Ensuite on paramètre l'output :


{% OplaAppSample title: "Any" %}
  {% Entry type : "Input" %}
    {% Chip color: "orange", label: "@any" %}
  {% endEntry %}
  {% Entry type: "Output" %} 
    {% Action label: "saisirtelephone" %} 
    {% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "telephone=*" %} Votre numéro est bien le {% MaterialIcon icon: "assignment" %}{% Chip color: "green", label: "telephone" %} ?{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=confirmertelephone" %}
  {% endEntry %}
{% endOplaAppSample %}




On clique sur SAVE après avoir modifié l'intent,

{% OplaAppSample title: "Oui" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmertelephone" %}
    Quel est votre mail ?     {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=saisirmail" %} 
  {% endEntry %}
{% endOplaAppSample %}




{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %}
    {% Action label: "saisirmail" %}
    {% MaterialIcon icon : "code" %}{% Chip color: "blue", label: "mail=*" %} votre mail est bien {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "mail" %}? {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "oui" %} {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "non" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=confirmermail" %} 
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Oui" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmermail" %}
    Ok, votre contact est enregistré.
  {% endEntry %}
{% endOplaAppSample %}


On a parcouru la branche des "Oui" du schéma.

On va s'intéresser à la première branche "Non", qui permet de sauter l'étape du téléphone pour donner l'e-mail.


{% OplaAppSample title: "Non" %}
  {% Entry type: "Output" %}
    {% Action label: "saisirtelephoneouinon" %}
    Quel est votre mail? {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=saisirmail" %} 
  {% endEntry %}
{% endOplaAppSample %}



{% OplaAppSample title: "Any" %}
  {% Entry type: "Output" %}
    {% Action label: "saisirmail" %}
    {% MaterialIcon icon : "code" %}{% Chip color: "blue", label: "mail=*" %} Votre mail est bien {% MaterialIcon icon : "assignment" %}{% Chip color: "green", label: "mail" %} ? {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "oui" %} {%MaterialIcon icon : "category"%}{% Chip color: "red", label: "non" %} {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=confirmermail" %} 
  {% endEntry %}
{% endOplaAppSample %}

<br>





## 2. Les boucles sur Non

On va enfin ajouter les deux boucles "Non" : on remarque que la flèche les fait remonter d'une étape : on va donc prendre comme conditionnelle la ligne de code précédente, ce qui va faire reboucler le chatbot sur la question.



 On va écrire le "Non" en reprenant et inversant les actions saisirtelephone et confirmertelephone, on va mettre confirmertelephone dans la conditionnelle et saisirtelephone dans le code.

{% OplaAppSample title: "Non" %}
  {% Entry type: "Output" %}
    {% Action label: "confirmertelephone" %}
    Quel est votre numéro de téléphone?  {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=saisirtelephone" %} 
  {% endEntry %}
{% endOplaAppSample %}



De même, sur mail on va écrire un "Non" entre confirmermail et saisirmail


{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}
    {% Action label: "confirmermail" %}
    Quel est votre mail ? {%MaterialIcon icon : "code"%}{% Chip color: "blue", label: "action=saisirmail" %} 
  {% endEntry %}
{% endOplaAppSample %}

Nous avons dorénavant fini de paramétrer le schéma 2!


## 3. Vue générale de l'exercice dans le bot :

Voici une capture d'écran des quatre intents :


![image]({{site.images_path | relative_url }}contact-contact.png)
![image]({{site.images_path | relative_url }}contact-oui.png)
![image]({{site.images_path | relative_url }}contact-any.png)
![image]({{site.images_path | relative_url }}contact-non-fr.png)