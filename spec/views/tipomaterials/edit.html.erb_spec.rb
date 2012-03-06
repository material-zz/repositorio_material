require 'spec_helper'

describe "tipomaterials/edit" do
  before(:each) do
    @tipomaterial = assign(:tipomaterial, stub_model(Tipomaterial,
      :nome => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit tipomaterial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipomaterials_path(@tipomaterial), :method => "post" do
      assert_select "input#tipomaterial_nome", :name => "tipomaterial[nome]"
      assert_select "input#tipomaterial_tipo", :name => "tipomaterial[tipo]"
    end
  end
end
