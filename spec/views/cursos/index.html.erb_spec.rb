require 'spec_helper'

describe "cursos/index" do
  before(:each) do
    assign(:cursos, [
      stub_model(Curso,
        :nome => "Nome"
      ),
      stub_model(Curso,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of cursos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
