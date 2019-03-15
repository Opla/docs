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
  {% Action label : "lengthsup4myesno" %}
    You would like to rent a city car.
  {% endEntry %}
{% endOplaAppSample %}




Do not forget to click SAVE before testing the conversation in the Playground.

Then we'll add the right branch of diagram,


{% OplaAppSample title: "A commercial vehicle" %}
  {% Entry type : "Input" %}
    A commercial vehicle
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "getvehicletype" %}
    Must its volume exceed 10m3? {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "Yes" %} {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "No" %} {%MaterialIcon icon : "code" %}{% Chip color: "blue", label: "action=volumesup10m3yesno" %} 
  {% endEntry %}
{% endOplaAppSample %}
<br>


{% OplaAppSample title: "Yes" %}
  {% Entry type : "Input" %}
    yes
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "volumesup10m3yesno %}
    You would like to rent a small truck
  {% endEntry %}
{% endOplaAppSample %}

<br>

{% OplaAppSample title: "No" %}
  {% Entry type : "Input" %}
    no
  {% endEntry %}
  {% Entry type: "Output" %}
  {% Action label : "volumesup10m3yesno" %}
    You would like to rent a light commercial vehicle. 
  {% endEntry %}
{% endOplaAppSample %}


## Outlook of the exercise in the bot


![image]({{site.images_path | relative_url }}rent-a-car-hello.png)
![image]({{site.images_path | relative_url }}rent-a-car-A-car.png)
![image]({{site.images_path | relative_url }}rent-a-car-A-commercial-vehicle.png)
![image]({{site.images_path | relative_url }}rent-a-car-yes.png)
![image]({{site.images_path | relative_url }}rent-a-car-no.png)





Here we go, our first conversation is set up! Let's then study another example, one which enables taking in contact information, from manual input done by the user.
