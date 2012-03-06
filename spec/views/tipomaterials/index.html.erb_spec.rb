require 'spec_helper'

describe "tipomaterials/index" do
  before(:each) do
    assign(:tipomaterials, [
      stub_model(Tipomaterial,
        :nome => "Nome",
        :tipo => "Tipo"
      ),
      stub_model(Tipomaterial,
        :nome => "Nome",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of tipomaterials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
