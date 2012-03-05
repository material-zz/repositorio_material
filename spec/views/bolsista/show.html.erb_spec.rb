require 'spec_helper'

describe "bolsista/show" do
  before(:each) do
    @bolsistum = assign(:bolsistum, stub_model(Bolsistum,
      :nome => "Nome",
      :turno => "Turno"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Turno/)
  end
end
