---
layout: default
lang: fr
ref : 2
permalink: /exemple_parametrages/step_2
---

#Conventions de documentation

Dans cette documentation seront indiqués les boutons sur lesquels il faut appuyer juste avant la boîte dans laquelle il faudra écrire le code.


#### Exemple :


{% OplaAppSample title: "Bonjour" %}
  {% Entry type : "Input" %}
    Bonjour 
  {% endEntry %}
  {% Entry type: "Output" %}  
    Ceci est un exemple {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=exemple" %}
  {% endEntry %}
{% endOplaAppSample %}


Donne à l'écran :

![image]({{site.images_path | relative_url }}ceci-est-un-exemple.png)
