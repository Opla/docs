---
layout: default
lang: fr
ref : 0
permalink: /exemple_parametrages/step_0
---
<div style="text-align:center" markdown="1">

 ![image]({{site.images_path | relative_url }}opla-avatar.png)
</div>


# Comment paramétrer le robot conversationnel Opla?

Opla est un bot open source, que chacun peut intégrer et paramétrer comme il le souhaite. Voici quelques trucs et astuces pour apprendre à rédiger une conversation. L’installation sous windows 10 home s’est faite avec la dernière version de Docker.


##  le Builder de la console

<div style = "text-align:center" markdown="1">
![image]({{site.images_path | relative_url }}builder.png)
</div>

Il se divise en trois parties :

1. Le Playground, où l'on teste le bot
1. les Intents, qui sont des mots-clés que l'utilisateur ou le chatbot emploie pour établir la conversation. Les intents sont précédés d'un dièse.
1. les Inputs et les Outputs, propres à chaque Intent, qui sont les réponses .(output) que donne le robot à chaque entrée (Input). C'est véritablement dans les Outputs que va se passer 80% de du paramétrage de la conversation.


