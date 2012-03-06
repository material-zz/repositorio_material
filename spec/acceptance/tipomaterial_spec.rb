# coding: utf-8

require 'spec_helper'


feature 'gerenciar tipo de material' do

  before :each do

  end

  scenario 'incluir tipo de material' do
  visit new_tipomaterial_path

    fill_in 'nome', :with => 'material text'

    fill_in 'tipo', :with => 'tipo text'

        
    click_button 'Salvar'

    page.should have_content 'tipo: tipo text'
    page.should have_content 'nome: material text'

  end
 scenario 'alterar tipo de material' do
 tipomaterial = Tipomaterial.create
  visit edit_tipomaterial_path(tipomaterial)

    fill_in 'nome', :with => 'material text'

    fill_in 'tipo', :with => 'tipo text'

        
    click_button 'Salvar'

    page.should have_content 'tipo: tipo text'
    page.should have_content 'nome: material text'

  end

  scenario 'excluir tipomaterial' do
    tipomaterial = Tipomaterial.create
    visit tipomaterials_path
    
    click_link 'Destroy'   

    Tipomaterial.count == 0
  end

end

