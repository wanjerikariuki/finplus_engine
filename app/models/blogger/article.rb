module Blogger
  class Article < ApplicationRecord
    validates :title,  presence: true
    validates :text,  presence: true

    has_many :comments
    #attr_accessor :name
    belongs_to :author, class_name: "User"

    before_validation :set_author

    private
    def set_author
      self.author = User.find_or_create_by(name)
    end
  end
end