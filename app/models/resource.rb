class Resource < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :url
  validates_presence_of :description
  validates_presence_of :resource_type

  validates_format_of :url, :with => URI::regexp(%w(http https)), :message => 'needs to begin with http:// or https://'

  validates_uniqueness_of :url

  attr_accessible :resource_type, :title, :url, :description, :tag_list

  acts_as_taggable

  belongs_to :user
  has_and_belongs_to_many :curriculums

  #to_param puts SEO friendly URLs
  def to_param
    "#{id}-#{title.parameterize}"
  end

  def self.resources_type
    ["Book", "Course", "Tutorial"]
  end

end
