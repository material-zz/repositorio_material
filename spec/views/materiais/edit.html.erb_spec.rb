require 'spec_helper'

describe "materiais/edit" do
  before(:each) do
    @materiai = assign(:materiai, stub_model(Materiai,
      :nome => "MyString",
      :bolsista => nil
    ))
  end

  it "renders the edit materiai form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materiais_path(@materiai), :method => "post" do
      assert_select "input#materiai_nome", :name => "materiai[nome]"
      assert_select "input#materiai_bolsista", :name => "materiai[bolsista]"
    end
  end
end
