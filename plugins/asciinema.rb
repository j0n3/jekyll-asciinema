# Examples
# {% asciinema http://asciinema.org/a/11499 size:big %}
# {% asciinema 11518 speed:3 theme:solarized-light %}

module Jekyll
	class Asciinema < Liquid::Tag
		def initialize(name, text, token)
			@asciinema_params = []
			text.split(" ").each do |t| 
				caps = t.strip.match(/((\w+):(\d+|\w+))/)
				@asciinema_params.push([caps.captures[1], caps.captures[2]]) unless caps.nil?
			end

			asciinema_id_match = text.match(/(https?:\/\/asciinema.org\/a\/)?\s?(\d+)/)
			@asciinema_id = asciinema_id_match.captures[1] unless asciinema_id_match.nil?

		end

		def render(context)
			params = ""
			@asciinema_params.each do |param|
				params = "#{params} data-#{param[0]}=\"#{param[1]}\""
			end
			if @asciinema_id
				"<script type=\"text/javascript\" src=\"https://asciinema.org/a/#{@asciinema_id}.js\" id=\"asciicast-#{@asciinema_id}\" async #{params}></script>"
			else
				"__Error: asciinema_id not valid__"
			end
		end
	end
end

Liquid::Template.register_tag('asciinema', Jekyll::Asciinema)
