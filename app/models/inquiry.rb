class Inquiry < ActiveRecord::Base

	extend ActiveModel::Name
	include ActiveModel::Conversion
	include ActiveModel::validations
	include ActionView::Helpers::TextHelper

	attr_accessor :name :email :message

	validates :name, 
            :presence => true
  validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :message,
            :length => { :minimum => 10, :maximum => 1000 }
  validates :nickname, 
            :format => { :with => /^$/ }

	 def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    return false unless valid?
	    Pony.mail({
	      :from => %("#{name}" <#{email}>),
	      :reply_to => email,
	      :subject => "Website inquiry",
	      :body => message,
	      :html_body => simple_format(message)
	    })
  end
      
  def persisted?
    false
  end
end

end
