---
layout: default
lang: fr
ref : 1
permalink: /exemple_parametrages/step_1
---

## Les boutons des outputs 


Dans les Outputs (les sorties des intents) se trouve un menu avec des items cliquables qui permettent de paramétrer l'interface : nous allons en expliquer quelques-uns :

![image]({{site.images_path | relative_url }}output-options.png)


<div style="float:left;width:5%" markdown="1">

 {% MaterialIcon icon: "assignment" %}
</div>

    1. insert output code :

Ce bouton correspond à un mode de traitement d'une variable, qui va afficher la variable à l'écran.




<div style="float:left;width:5%" markdown="1">

{% MaterialIcon icon: "code" %}
</div>
    2. Insert code :
    On se sert de insert code à deux fins : 

* premièrement pour écrire un code d'action ; La syntaxe du code d'action à saisir sera, en écrivant à l'intérieur du cadre qui apparaît lorsqu'on presse le bouton    :
 {% Chip color: "blue", label: "action=name_of_action" %} 
  Il s'agit de la ligne de code d'action qui va permettre au bot de suivre le fil d'une conversation. On va mettre l'action dans un premier output d'intent, et la même syntaxe dans la conditionnelle de l'output d'intent suivant, ce qui va permettre de créer un chemin conversationnel.
* deuxièmement pour capter une valeur tapée par l'utilisateur, avec la syntaxe 
{% Chip color: "blue", label: "valeur=*" %} 
qui permet de stocker une donnée quelconque dans la variable valeur.




<div style="float:left;width:5%" markdown="1">

{% MaterialIcon icon: "category" %}
</div>
    3. Button :

Permet de créer un bouton qui va être cliquable par l'utilisateur et qui donc va permettre de standardiser les inputs. On peut créer un bouton Oui, Non, ou n'importe quel input souhaité.



<div style="float:left;width:5%" markdown="1">

{% MaterialIcon icon: "delete" %}
</div>
    4. delete :

Ce bouton sert à supprimer un des trois items cliquables énoncés ci-dessus. Il faut d'abord supprimer le texte, puis cliquer sur le bouton pour le sélectionner, puis cliquer sur la corbeille.



### Ajout d'une conditionnelle


![image]({{site.images_path | relative_url }}conditional-in-output-options.png)

<div style="float:left;width:5%" markdown="1">

 {% MaterialIcon icon: "device_hub" %}
</div>
    5. Conditionnelle

Quand on ouvre un nouvel intent, dans les outputs, supprimer la ligne "I don't understand." Apparaît alors une étoile à trois branches qu'on appelle une conditionnelle. Cette étoile est proposée tant que les outputs ne contiennent pas d'outputs non conditionnels. Elle doit contenir le même code que le code d'action qui précède  {% MaterialIcon icon: "code" %}, dans la logique de la conversation.<br><br>

**Noter que l'interface n'est pas sensible à la casse des inputs.**

Quand on modifie un intent, un bouton SAVE apparaît sur lequel in convient de cliquer pour sauvegarder les changements. Cliquer sur "+" en bout de ligne de l'output, puis sur Save.
