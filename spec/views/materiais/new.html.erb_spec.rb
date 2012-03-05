require 'spec_helper'

describe "materiais/new" do
  before(:each) do
    assign(:materiai, stub_model(Materiai,
      :nome => "MyString",
      :bolsista => nil
    ).as_new_record)
  end

  it "renders new materiai form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materiais_path, :method => "post" do
      assert_select "input#materiai_nome", :name => "materiai[nome]"
      assert_select "input#materiai_bolsista", :name => "materiai[bolsista]"
    end
  end
end
