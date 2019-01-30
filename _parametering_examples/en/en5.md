---
layout: default
lang: en
ref : 5
permalink: /parametering_examples/step_5
---
Same thing with creating new intent #No, one should rename the intent to No, delete default parameters, click on SAVE, and insert the following :


{% OplaAppSample title: "No" %}
  {% Entry type : "Input" %}
    no
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "applesyesno" %}
    All chocolate pizza!
  {% endEntry %}
{% endOplaAppSample %}





 ![image]({{site.images_path | relative_url }}all-chocolate-pizza.png)

Do not forget to click SAVE before testing the conversation in the Playground.

Then we'll add the right branch of diagram,


{% OplaAppSample title: "No" %}
  {% Entry type : "Input" %}
    no
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "sweetyesno" %}
    Would you like musrhooms on the pizza? {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "Yes" %} {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "No" %} {%MaterialIcon icon : "code" %}{% Chip color: "blue", label: "action=mushroomsyesno" %} 
  {% endEntry %}
{% endOplaAppSample %}
<br>


{% OplaAppSample title: "Yes" %}
  {% Entry type : "Input" %}
    yes
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "mushroomsyesno" %}
    There goes a Queen Pizza!
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "No" %}
  {% Entry type : "Input" %}
    no
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "mushroomsyesno" %}
    There goes a three-cheese pizza! 
  {% endEntry %}
{% endOplaAppSample %}

Here we go, our first conversation is set up! Let's then study another example, one which enables taking in contact information, from manual input done by the user.
