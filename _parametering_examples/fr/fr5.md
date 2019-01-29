---
layout: default
lang: fr
ref : 5
permalink: /exemple_parametrages/step_5
---


{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "pommesyesno" %} 
    C'est parti pour une pizza tout chocolat!
  {% endEntry %}
{% endOplaAppSample %}



 ![image]({{site.images_path | relative_url }}tout-chocolat.png)

Ne pas oublier de cliquer sur SAVE avant d'essayer le schéma dans le playground.

Puis nous allons rajouter la branche de droite,


{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "sweetyesno" %} 
    Voulez-vous des champignons ?  {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=mushroomsyesno" %}
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "mushroomsyesno" %} 
    C'est parti pour une Reine !
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "mushroomsyesno" %} 
    C'est parti pour une trois fromages! 
  {% endEntry %}
{% endOplaAppSample %}


Et voilà,  votre premier schéma de conversation est paramétré ! Passons maintenant à un exemple suivant, l'exemple de la prise de contact, qui gère des saisies manuelles effectuées par l'utilisateur.
