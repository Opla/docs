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
    Voulez-vous une pizza sucrée? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=sweetyesno" %}
  {% endEntry %}
{% endOplaAppSample %}



ce qui donne à l'écran :


![image]({{site.images_path | relative_url }}voulez-vous-une-pizza-sucree-total.png)


Il faut cliquer sur le signe plus de la ligne et cliquer sur SAVE pour sauvegarder la progression du paramétrage.

![image]({{site.images_path | relative_url }}bonjour-output-sweetyesno-save1.png)

Il faut ensuite cliquer sur "SAVE" en haut dans le cadre des intents

![image]({{site.images_path | relative_url }}bonjour-save.png)


Le texte action = sweetyesno doit être recopié dans la conditionnelle suivante pour lier l'intent #Bonjour à l'intent #Oui suivant. On va suivre la branche des Oui pour enter les deux Outputs contenus dans l'intent #Oui sur la branche de gauche du schéma.


Pour ajouter l'intent Oui, cliquer sur le signe plus gris/bleu à droite dans la colonne intents.

![image]({{site.images_path | relative_url }}add-an-intent.png)

Pour modifier le nom de l'intent, il faut cliquer sur le crayon à droite dans la ligne qui vient d'apparaître,

![image]({{site.images_path | relative_url }}modify-intents-name.png)

Puis saisir le nouveau nom,

![image]({{site.images_path | relative_url }}rename-intent.png)

Ensuite il faut entrer Oui dans la ligne d'inputs et supprimer les outputs éventuellement déjà présents en cliquant sur le moins sur leur ligne.

![image]({{site.images_path | relative_url }}supprimer-outputs.png)


Ensuite on va entrer le texte des outputs de l'intent Oui :<br>


{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "sweetyesno" %} 
    Est-ce que vous voulez des pommes? {% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Oui" %}{% MaterialIcon icon: "category" %}{% Chip color: "red", label: "Non" %}{% MaterialIcon icon: "code" %}{% Chip color: "blue", label: "action=pommesyesno" %}
  {% endEntry %}
{% endOplaAppSample %}



![image]({{site.images_path | relative_url }}pommesyesno.png)



On entre le code action=sweetyesno en cliquant sur la conditionnelle

![image]({{site.images_path | relative_url }}insert-condition.png)

![image]({{site.images_path | relative_url }}action-eg-sweetyesno.png)
![image]({{site.images_path | relative_url }}pommesyesno-boite.png)


Ne pas oublier de cliquer sur le signe plus et sur SAVE à la fin de chaque modification d'intent

![image]({{site.images_path | relative_url }}save-pommesyesno.png)


Et pour le deuxième output, qui constitue la fin de la chaîne des "Oui"



{% OplaAppSample title: "Oui" %}
  {% Entry type : "Input" %}
    oui
  {% endEntry %}
  {% Entry type: "Output" %}  
  {% Action label: "pommesyesno" %} 
    C'est parti pour une pizza pommes chocolat!
  {% endEntry %}
{% endOplaAppSample %}



    

![image]({{site.images_path | relative_url }}pommes-chocolat.png)


Après avoir cliqué sur SAVE, vous pouvez faire des tests dans le playground ainsi qu'indiqué sur les captures d'écrans, pour voir si vos enchaînements se passent bien.


Félicitations, vous avez écrit votre première branche de schéma conversationnel! Maintenant nous allons rajouter le Non qui conduit à Pizza tout chocolat.
