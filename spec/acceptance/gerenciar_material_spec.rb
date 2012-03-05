# coding: utf-8

require 'spec_helper'

feature 'gerenciar materiais' do
  before :each do
  end
  
  scenario 'incluir material' do
    visit new_materiai_path
    
    fill_in 'materiai_nome', :with => 'artigo'
  
    click_button 'Salvar'
   
    page.should have_content 'Nome: artigo'
  end

  scenario 'incluir material' do
    material = Materiai.create nome: 'artigo'
    visit edit_materiai_path(material)
    
    fill_in 'materiai_nome', :with => 'monografia'
  
    click_button 'Salvar'
   
    page.should have_content 'Nome: monografia'
  end



end
