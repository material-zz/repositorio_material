# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno' do
  before :each do
  end
  
  scenario 'incluir aluno' do
    curso = Curso.create nome: 'informatica'
    visit new_aluno_path
    
    fill_in 'aluno_nome', :with => 'Joao'
    fill_in 'aluno_matricula', :with => '1234'
    select('informatica', from: "Curso")
  
    click_button 'Salvar'
   
    page.should have_content 'Nome: Joao'
    page.should have_content 'Matricula: 1234'
    page.should have_content 'Curso: informatica'
  end

  scenario 'alterar aluno' do
    aluno = Aluno.create nome: 'Geraldo'
    curso = Curso.create nome: 'informatica'
    visit edit_aluno_path(aluno)
    
    fill_in 'aluno_nome', :with => 'Joao'
    fill_in 'aluno_matricula', :with => '1234'
    select('informatica', from: "Curso")
  
    click_button 'Salvar'
   
    page.should have_content 'Nome: Joao'
    page.should have_content 'Matricula: 1234'
    page.should have_content 'Curso: informatica'
  end


end
