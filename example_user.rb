class User
	attr_accessor :name, :email

	def initialize(attrributes = {})
		@name = attrributes[:name]
		@email = attrributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end