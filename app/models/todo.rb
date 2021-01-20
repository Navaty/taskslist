class Todo < ApplicationRecord
  belongs_to :project

  accepts_nested_attributes_for :project

  validates :project, presence: true
  validates :text, presence: true
end
