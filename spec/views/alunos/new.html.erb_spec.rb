require 'spec_helper'

describe "alunos/new" do
  before(:each) do
    assign(:aluno, stub_model(Aluno,
      :nome => "MyString",
      :matricula => "MyString",
      :curso => nil,
      :materiais => nil
    ).as_new_record)
  end

  it "renders new aluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alunos_path, :method => "post" do
      assert_select "input#aluno_nome", :name => "aluno[nome]"
      assert_select "input#aluno_matricula", :name => "aluno[matricula]"
      assert_select "input#aluno_curso", :name => "aluno[curso]"
      assert_select "input#aluno_materiais", :name => "aluno[materiais]"
    end
  end
end
