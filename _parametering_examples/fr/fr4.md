---
layout: default
lang: fr
ref : 4
permalink: /exemple_parametrages/step_4
---

L'écran de départ ressemble à ceci :

![image]({{site.images_path | relative_url }}ecran-zero.png)


Il faut ajouter un intent en cliquant sur le plus

![image]({{site.images_path | relative_url }}add-first-intent.png)


Il faut supprimer l'input "Intent" et  l'output "I don't understand" en cliquant sur le moins sur la ligne puis sur Delete.

![image]({{site.images_path | relative_url }}delete-i-dont-understand.png)

Il faut renommer l'output en "Bonjour"

![image]({{site.images_path | relative_url }}rename-intent-bonjour.png)


On inscrit dans l'intent les lignes suivantes :


{% OplaAppSample title: "Bonjour" %}
  {% Entry type : "Input" %}
    Bonjour <br> bjr <br>
  {% endEntry %}
  {% Entry type: "Output" %}  
    Voulez-vous louer une voiture ou un utilitaire? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Une voiture" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Un utiltiaire" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=saisirtypevehicule" %}
  {% endEntry %}
{% endOplaAppSample %}



ce qui donne à l'écran :


![image]({{site.images_path | relative_url }}louer-voiture-ou-utilitaire.png)


Il faut cliquer sur le signe plus de la ligne et cliquer sur SAVE pour sauvegarder la progression du paramétrage.


Il faut ensuite cliquer sur "SAVE" en haut dans le cadre des intents

![image]({{site.images_path | relative_url }}bonjour-save.png)


Le texte action = saisirtypevehicule doit être recopié dans la conditionnelle suivante pour lier l'intent #Bonjour à l'intent suivant.

En l'occurence, deux intents vont être définis ;
  * #Une voiture
  * #Un utilitaire


Pour ajouter l'intent suivant, cliquer sur le signe plus gris/bleu à droite dans la colonne intents.

![image]({{site.images_path | relative_url }}add-an-intent.png)

Pour modifier le nom de l'intent, il faut cliquer sur le crayon à droite dans la ligne qui vient d'apparaître,

![image]({{site.images_path | relative_url }}modify-intents-name.png)

Puis saisir le nouveau nom,

![image]({{site.images_path | relative_url }}rename-intent.png)

Ensuite il faut entrer "Une voiture" dans la ligne d'inputs et supprimer les outputs éventuellement déjà présents en cliquant sur le moins sur leur ligne.



Ensuite on va entrer le texte des outputs de l'intent Une voiture :<br>


{% OplaAppSample title: "Une voiture" %}
  {% Entry type : "Input" %}
    Une voiture
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "saisirtypevehicule" %} 
    Sa longueur doit-elle être supérieure à 4m? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=longueursup4mouinon" %}
  {% endEntry %}
{% endOplaAppSample %}




On entre le code action=saisirtypevehicule en cliquant sur la conditionnelle

![image]({{site.images_path | relative_url }}insert-condition.png)

![image]({{site.images_path | relative_url }}action_saisirtypevehicule.png)



Ne pas oublier de cliquer sur le signe plus et sur SAVE à la fin de chaque modification d'intent




Et pour le deuxième output, qui constitue la fin de la chaîne ;


On va créer un intent #Oui, avec pour input oui et qui aura pour outputs à la fin de cet exercice plusieurs possibilités, mais qui maintenant va contenir :


{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "longueursup4mouinon" %} 
    Vous souhaitez louer un break
  {% endEntry %}
{% endOplaAppSample %}





Après avoir cliqué sur SAVE, vous pouvez faire des tests dans le playground ainsi qu'indiqué sur les captures d'écrans, pour voir si vos enchaînements se passent bien.







Félicitations, vous avez écrit votre première branche de schéma conversationnel! Maintenant nous allons rajouter le Non qui conduit à "vous souhaitez louer une citadine."
