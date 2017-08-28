class User < ApplicationRecord
  belongs_to :team, optional: true
  has_many :addresses


  def addresses_attributes=(addresses_attributes)
rais addresses_attributes.inspect
    addresses_attributes.each do |address_attribues|
      self.addresses.build(address_attribues)
    end

# addresses_attribues = [
  # assert_equal user.addresses.first.street_1, "Strasse 1"
  # assert_equal user.addresses.first.address_type, "home"
   # ]

  end


end
