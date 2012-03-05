require 'spec_helper'

describe "materiais/index" do
  before(:each) do
    assign(:materiais, [
      stub_model(Materiai,
        :nome => "Nome",
        :bolsista => nil
      ),
      stub_model(Materiai,
        :nome => "Nome",
        :bolsista => nil
      )
    ])
  end

  it "renders a list of materiais" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
