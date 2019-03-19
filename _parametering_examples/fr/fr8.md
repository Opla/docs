---
layout: default
lang: fr
ref : 8
permalink: /exemple_parametrages/step_8
---

## Stocker et restituer une valeur plus loin dans le process

Pour insérer un texte spécifique au lieu du bouton, on peut créer une variable qui va stocker une valeur fixée, puis restituer cette valeur une ou plusieurs étapes plus loin. 

Exemple : 


![image]({{site.images_path | relative_url }}client-projet.png)


donne à l'écran : 


![image]({{site.images_path | relative_url }}client-projet-bonjour.png)

![image]({{site.images_path | relative_url }}client-projet-oui.png)

![image]({{site.images_path | relative_url }}client-projet-non.png)

![image]({{site.images_path | relative_url }}client-projet-etape-suivante.png)


On voit qu'on emploie bien  {% MaterialIcon icon: "code" %} pour stocker la valeur du texte que l'on veut afficher à la fin avec le bouton  {% MaterialIcon icon: "assignment" %}
