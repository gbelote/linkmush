class SimilarReference < ActiveRecord::Base
    belongs_to :link
    belongs_to :similar_link, :foreign_key => "similar_link_id", :class_name => "Link"
end
