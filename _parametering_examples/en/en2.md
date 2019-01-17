---
layout: default
lang: en
ref : 2
permalink: /parametering_examples/step_2
---

### Documentation conventions

Intents names will be preceded by a sharp key #, buttons ![image]({{site.images_path | relative_url }}category.png) will be written in square brackets, code lines ![image]({{site.images_path | relative_url }}chevrons.png)  will be written between chevrons. Variables will be copy-pasted.


#### Example :

    #Hello
    Input:
    Hello
    Output:Would you like a sweet pizza? [Yes] [No] <action=sweetyesno>


![image]({{site.images_path | relative_url }}would-you-like-a-sweet-pizza.png)

Shows on screen:

![image]({{site.images_path | relative_url }}would-you-like-a-sweet-pizza-total.png)

the code written in chevrons does not appear in the playground console, it is used to direct the discussion. The robot identifies the lines of codes equal to the conditional ones and thus follows the thread of the discussion, a little like the ends of a piece of puzzle.
