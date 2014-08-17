octopress-asciinema
===================

[Asciinema](http://asciinema.org) plugin for [Octopress](http://octopress.org)

Just copy plugin/asciinema.rb to your plugin folder

## Usage

{% asciinema http://asciinema.org/a/id param:value ... %}

or the more simplistic

{% asciinema id %}

The 'param' name is the simplified name of Asciinema's embed script data-param so 'data-size:big' becomes 'size:big'. Any 'data-param:value' currently supported by Asciinema should be set this way. 
