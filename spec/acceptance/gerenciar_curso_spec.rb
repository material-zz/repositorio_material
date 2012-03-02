# coding: utf-8

require 'spec_helper'

feature 'gerenciar curso' do
  before :each do
  end
  
  scenario 'incluir curso' do
    visit new_curso_path
    
    fill_in 'curso_nome', :with => 'Informática'
        
    click_button 'Create Curso'
   
    page.should have_content 'Nome: Informática'
  end

  scenario 'alterar curso' do #, :javascript => true do
    curso = Curso.create nome: 'informatica'
    visit edit_curso_path(curso)
    fill_in 'curso_nome', :with => 'edificações'
        
    click_button 'Update Curso'
   
    page.should have_content 'Nome: edificações'
    
  end

  scenario 'excluir curso' do #, :javascript => true do
	  curso = Curso.create
    visit cursos_path

    click_link 'Destroy'
      
    Curso.count.should == 0
  end
end
