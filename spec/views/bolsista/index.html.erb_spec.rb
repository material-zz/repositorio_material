require 'spec_helper'

describe "bolsista/index" do
  before(:each) do
    assign(:bolsista, [
      stub_model(Bolsistum,
        :nome => "Nome",
        :turno => "Turno"
      ),
      stub_model(Bolsistum,
        :nome => "Nome",
        :turno => "Turno"
      )
    ])
  end

  it "renders a list of bolsista" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Turno".to_s, :count => 2
  end
end
