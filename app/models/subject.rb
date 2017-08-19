class Subject < ApplicationRecord

	has_many :pages

	  scope :sorted, lambda {order("subjects.id ASC")}

end
