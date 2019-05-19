require 'test_helper'

class OptionTest < ActiveSupport::TestCase
    fixtures :options

    def setup
        @option = options(:one) 
    end

    test "Show a point and a description" do 
        assert_equal "(3) Good", @option.show
    end 
end