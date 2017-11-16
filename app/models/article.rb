class Article < ApplicationRecord
	validates :title, :body, presence: true
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
#

