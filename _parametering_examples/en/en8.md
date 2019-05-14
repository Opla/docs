---
layout: default
lang: en
ref : 8
permalink: /parametering_examples/step_8
---

## How to stock and restitute a value later in the process


To insert any specific text, and not necessarily a button's text, one can create a variable which will stock a fixed value, and restitute this value one or many steps after.

Example:


![image]({{site.images_path | relative_url }}customer-project.png)



Gives on screen 



![image]({{site.images_path | relative_url }}customer-project-hello.png)

![image]({{site.images_path | relative_url }}customer-project-yes.png)

![image]({{site.images_path | relative_url }}customer-project-no.png)

![image]({{site.images_path | relative_url }}customer-project-next-step.png)


We can see that we use the code button {% MaterialIcon icon: "code" %} to store the value of the text we want to print on screen at the last step with the button Output code  {% MaterialIcon icon: "assignment" %}