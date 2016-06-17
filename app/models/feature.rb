class Feature < ActiveRecord::Base
  validates :name, presence: true
  validates :name, :owner, :git_url, length: { maximum: STRING_MAX_LENGTH }
end
