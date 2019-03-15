---
layout: default
lang: en
ref : 2
permalink: /parametering_examples/step_2
---

### Documentation conventions

We will add in buttons that need to be clicked before any code block.

#### Example :



{% OplaAppSample title: "Hello" %}
  {% Entry type : "Input" %}
    Hello
  {% endEntry %}
  {% Entry type: "Output" %}
    This is an example. {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "Yes" %} {%MaterialIcon icon : "category" %} {% Chip color: "red", label: "No" %} {% MaterialIcon icon : "code" %}{% Chip color: "blue", label: "action=example" %} 
  {% endEntry %}
{% endOplaAppSample %}

Shows on screen:

![image]({{site.images_path | relative_url }}this-is-an-example.png)

the code written in chevrons does not appear in the playground console, it is used to direct the discussion. The robot identifies the lines of codes equal to the conditional ones and thus follows the thread of the discussion, a little like the ends of a piece of puzzle.
