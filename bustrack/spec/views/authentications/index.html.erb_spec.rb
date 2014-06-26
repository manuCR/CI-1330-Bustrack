require 'rails_helper'

RSpec.describe "authentications/index", :type => :view do
  before(:each) do
    assign(:authentications, [
      Authentication.create!(
        :user_id => 1,
        :provider => "Provider",
        :uid => "Uid"
      ),
      Authentication.create!(
        :user_id => 1,
        :provider => "Provider",
        :uid => "Uid"
      )
    ])
  end

  it "renders a list of authentications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
  end
end
