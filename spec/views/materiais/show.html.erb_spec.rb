require 'spec_helper'

describe "materiais/show" do
  before(:each) do
    @materiai = assign(:materiai, stub_model(Materiai,
      :nome => "Nome",
      :bolsista => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
