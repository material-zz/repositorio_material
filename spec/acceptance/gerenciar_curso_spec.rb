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
end
