require 'spec_helper'

describe "tipomaterials/new" do
  before(:each) do
    assign(:tipomaterial, stub_model(Tipomaterial,
      :nome => "MyString",
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new tipomaterial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipomaterials_path, :method => "post" do
      assert_select "input#tipomaterial_nome", :name => "tipomaterial[nome]"
      assert_select "input#tipomaterial_tipo", :name => "tipomaterial[tipo]"
    end
  end
end
