require 'spec_helper'

describe "bolsista/new" do
  before(:each) do
    assign(:bolsistum, stub_model(Bolsistum,
      :nome => "MyString",
      :turno => "MyString"
    ).as_new_record)
  end

  it "renders new bolsistum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bolsista_path, :method => "post" do
      assert_select "input#bolsistum_nome", :name => "bolsistum[nome]"
      assert_select "input#bolsistum_turno", :name => "bolsistum[turno]"
    end
  end
end
