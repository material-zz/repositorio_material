require 'spec_helper'

describe "tipomaterials/show" do
  before(:each) do
    @tipomaterial = assign(:tipomaterial, stub_model(Tipomaterial,
      :nome => "Nome",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
