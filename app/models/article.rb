class Article < ApplicationRecord
	validates :title, :body, presence: true

	scope :active, ->{where(is_deleted:false)}
end

# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  title        :string
#  body         :text
#  visits_count :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  is_deleted   :boolean          default("false")
#  description  :text
#
