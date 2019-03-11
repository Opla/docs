---
layout: default
lang: fr
ref : 5
permalink: /exemple_parametrages/step_5
---

On va ensuite rajouter le premier Non qui conduit "Vous souhaitez louer une citadine" :

{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "longueursup4mouinon" %} 
    Vous souhaitez louer une citadine.
  {% endEntry %}
{% endOplaAppSample %}




Ne pas oublier de cliquer sur SAVE avant d'essayer le schéma dans le playground.

Puis nous allons rajouter la branche de droite,


{% OplaAppSample title: "Un utilitaire" %}
  {% Entry type : "Input" %}
    Un utilitaire
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "saisirtypevehicule" %} 
    Son volume doit-il être supérieur à 10m3 ?  {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=volumesup10m3ouinon" %}
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "volumesup10m3ouinon" %} 
    Vous souhaitez louer un fourgon.
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "Non" %}
  {% Entry type : "Input" %}
    non
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "volumesup10m3ouinon" %} 
    Vous souhaitez louer une fourgonnette. 
  {% endEntry %}
{% endOplaAppSample %}




## Vue générale de l'exercice dans le bot

![image]({{site.images_path | relative_url }}location-voiture-Bonjour.png)
![image]({{site.images_path | relative_url }}location-voiture-Une-voiture.png)
![image]({{site.images_path | relative_url }}location-voiture-Un-utilitaire.png)
![image]({{site.images_path | relative_url }}location-voiture-oui.png)
![image]({{site.images_path | relative_url }}location-voiture-non.png)



Et voilà,  votre premier schéma de conversation est paramétré ! Passons maintenant à un exemple suivant, l'exemple de la prise de contact, qui gère des saisies manuelles effectuées par l'utilisateur.
