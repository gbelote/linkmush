class Link < ActiveRecord::Base
    has_one :embed
    has_many :similar_references
    has_many :similar_links, :through => :similar_references, :foreign_key => "similar_link_id"
end
