require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'address_attributes' do
    params = {
        :user => {
            email: "e@mail.com",
            addresses_attributes: [
                {:street_1 => "Strasse 1", :address_type => "home"},
                 {:street_1 => "Strasse 2", :address_type => "business"}
            ]
        }
    }
    user =User.new(params[:user])
    user.save
    assert_equal user.addresses.size,2
    assert_equal user.addresses.first.street_1, "Strasse 1"
    assert_equal user.addresses.first.address_type, "home"


    assert_equal user.addresses.last.street_1, "Strasse 2"
    assert_equal user.addresses.last.address_type, "business"

  end


  # test "the truth" do
  #   assert true
  # end
end
