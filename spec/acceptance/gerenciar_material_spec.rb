# coding: utf-8

require 'spec_helper'

feature 'gerenciar materiais' do
  before :each do
  end
  
  scenario 'incluir material' do
    bolsista = Bolsistum.create nome: 'juca'
    visit new_materiai_path
    
    fill_in 'materiai_nome', :with => 'Joao'
  
    click_button 'Salvar'
   
    page.should have_content 'Nome: Joao'
  end



end
