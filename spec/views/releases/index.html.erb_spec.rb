require 'rails_helper'

RSpec.describe "releases/index", type: :view do
  before(:each) do
    assign(:releases, [
      Release.create!(
        :name => "Name"
      ),
      Release.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of releases" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
