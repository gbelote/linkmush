module LinksHelper
    def highlight_url( url, options={} )
        anchor_text = url.gsub /^http:\/\/([^\/]+)/, 'http://<span class="domain">\1</span>'
        link_to( anchor_text, url, { :class => "url", :rel => "nofollow" }.merge(options) )
    end

    def format_transcript( text, options={} )
        return text.gsub /(\r?\n){2}/, '<p>'
    end
end

