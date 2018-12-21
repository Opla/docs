---
layout : default
---

L'écran de départ ressemble à ceci :

![image](/assets/images/Ecran-zero.png)


Il faut ajouter un intent en cliquant sur le plus 

![image](/assets/images/Add-first-intent.png)


Il faut supprimer l'input "Intent" et  l'output "I don't understand" en cliquant sur le moins sur la ligne puis sur Delete.

![image](/assets/images/delete-i-dont-understand.png)

Il faut renommer l'output en "Bonjour"

![image](/assets/images/rename-intent-bonjour.png)


On inscrit dans l'intent les lignes suivantes :

    #Bonjour 
    Input: bonjour
    bjr
    output: Voulez-vous une pizza sucrée? [Oui] [Non] <action=sweetyesno>



![image](/assets/images/voulez-vous-une-pizza-sucree.png) 


ce qui donne à l'écran :


![image](/assets/images/voulez-vous-une-pizza-sucree-total.png)


Il faut cliquer sur le signe plus de la ligne et cliquer sur SAVE pour sauvegarder la progression du paramétrage.

![image](/assets/images/Bonjour-output-sweetyesno-save1.png)

Il faut ensuite cliquer sur "SAVE" en haut dans le cadre des intents

![image](/assets/images/Bonjour-save.png)


Le texte action = sweetyesno doit être recopié dans la conditionnelle suivante pour lier l'intent #Bonjour à l'intent #Oui suivant. On va suivre la branche des Oui pour enter les deux Outputs contenus dans l'intent #Oui sur la branche de gauche du schéma.


Pour ajouter l'intent Oui, cliquer sur le signe plus gris/bleu à droite dans la colonne intents.

![image](/assets/images/add-an-intent.png)

Pour modifier le nom de l'intent, il faut cliquer sur le crayon à droite dans la ligne qui vient d'apparaître,

![image](/assets/images/modify-intents-name.png)

Puis saisir le nouveau nom,

![image](/assets/images/rename-intent.png)

Ensuite il faut entrer Oui dans la ligne d'inputs et supprimer les outputs éventuellement déjà présents en cliquant sur le moins sur leur ligne.

![image](assets/images/supprimer-outputs.png)


Ensuite on va entrer le texte des outputs de l'intent Oui :<br>

    #Oui
    Input : Oui
    Output : 
    action=sweetyesno
    Est-ce que vous voulez des pommes?
    [Oui][Non]<action = pommesyesno>


![image](/assets/images/pommesyesno.png)



On entre le code action=sweetyesno en cliquant sur la conditionnelle

![image](/assets/images/insert-condition.png)

![image](/assets/images/action-eg-sweetyesno.png)
![image](/assets/images/pommesyesno-boite.png)


Ne pas oublier de cliquer sur le signe plus et sur SAVE à la fin de chaque modification d'intent

![image](assets/images/save-pommesyesno.png)


Et pour le deuxième output, qui constitue la fin de la chaîne des "Oui"

    action=pommesyesno
    C'est parti pour une pizza pommes chocolat 

![image](/assets/images/pommes-chocolat.png)


Après avoir cliqué sur SAVE, vous pouvez faire des tests dans le playground ainsi qu'indiqué sur les captures d'écrans, pour voir si vos enchaînements se passent bien.


Félicitations, vous avez écrit votre première branche de schéma conversationnel! Maintenant nous allons rajouter le Non qui conduit à Pizza tout chocolat.




<div style = "text-align:center" markdown="1">
<a href="En-francais4.html" class="previous">&laquo; Previous</a>
<a href="En-francais6.html" class="next">Next &raquo;</a>
</div>

