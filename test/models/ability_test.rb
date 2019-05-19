require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
    fixtures :users

    def setup
        @user = users(:one)
        @review = reviews(:one)
        @ability = Ability.new(@user)
    end
    
    test "user with student role can manage a review" do
        assert @user.valid?
        assert @ability.can?(:manage, @review)
    end
end
