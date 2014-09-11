octopress-asciinema
===================

[Asciinema](http://asciinema.org) plugin for [Octopress](http://octopress.org)

## Install
Just copy plugins/asciinema.rb to your plugin folder

## Usage
[Params](https://asciinema.org/docs/embedding) can be set as either data-size:big or just size:big.
```
{% asciinema http://asciinema.org/a/id param:value ... %}
{% asciinema id %}
```
