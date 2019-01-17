---
layout: default
lang: fr
ref : hw
permalink: /bonjourmonde
---
Nous allons d'abord créer un bot qui retourne un "Hello World"

Cliquer sur Create

![image]({{site.images_path | relative_url }}first-intent-create.png)

et écrire "Hello", puis appuyer sur entrée, dans le playground pour vérifier que le bot retourne bien la phrase par défaut "the response".

![image]({{site.images_path | relative_url }}hello-the-response.png)

 Cliquer sur le stylo pour renommer "First Intent" dans la colonne de gauche en "Hello"

![image]({{site.images_path | relative_url }}rename-first-intent.png)
![image]({{site.images_path | relative_url }}rename-intent-hello.png)

Effacer "The response" en cliquant sur le signe moins en fin de ligne de l'output, et écrire "Hello world" en texte de remplacement. Cliquer sur SAVE sur le panneau Intents.

![image]({{site.images_path | relative_url }}delete-the-response.png)
![image]({{site.images_path | relative_url }}hello-world-plus.png)
![image]({{site.images_path | relative_url }}first-intent-save.png)

Ecrire "Hello" dans le playground et appuyer sur Entrée.

![image]({{site.images_path | relative_url }}playground-hello-world.png)

Et voilà, nous avons créé notre premier bot, qui retourne un simple "Hello World"! C'est un bot simpliste, qui va nous permettre de mieux comprendre comment paramétrer deux autres schémas de conversation, qui sont les schémas "Pizza", qui va montrer comment se gèrent des entrées oui/non et "Contact", qui va nous permettre de gérer des entrées plus complexes telles que la saisie d'une adresse e-mail ou d'un numéro de téléphone.
