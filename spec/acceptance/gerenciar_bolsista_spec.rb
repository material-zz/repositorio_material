# coding: utf-8

require 'spec_helper'

feature 'gerenciar bolsista' do
  before :each do
  end
  
  scenario 'incluir bolsista' do
    visit new_bolsistum_path
    
    fill_in 'bolsistum_nome', :with => 'Joao'
    fill_in 'bolsistum_turno', :with => 'manha'
        
    click_button 'Create Bolsistum'
   
    page.should have_content 'Nome: Joao '
    page.should have_content 'Turno: manha'
  end

  scenario 'alterar bolsista' do #, :javascript => true do
    bolsista = Bolsistum.create
    visit edit_bolsistum_path(bolsista)
    fill_in 'bolsistum_nome', :with => 'Zeca'
        
    click_button 'Update Bolsistum'
   
    page.should have_content 'Nome: Zeca'
    
  end
end
