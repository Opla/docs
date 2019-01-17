---
layout: default
lang: fr
ref : 2
permalink: /exemple_parametrages/step_2
---

### Conventions d'écriture

Nous allons documenter les échanges de la manière suivante : les titres d'intents seront précédés d'un dièse #, les boutons ![image]({{site.images_path | relative_url }}category.png) seront écrits entre parenthèses droites, les lignes de codes ![image]({{site.images_path | relative_url }}chevrons.png)  seront écrites entre chevrons simples, et les variables entre parenthèses.


#### Exemple :

    #Bonjour
    Input:
    bonjour
    bjr
    output: Voulez-vous une pizza sucrée? [Oui] [Non] <action=sweetyesno>


![image]({{site.images_path | relative_url }}voulez-vous-une-pizza-sucree.png)

Donne à l'écran :

![image]({{site.images_path | relative_url }}voulez-vous-une-pizza-sucree-total.png)