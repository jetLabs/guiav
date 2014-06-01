require 'spec_helper'

describe "administradors/index" do
  before(:each) do
    assign(:administradors, [
      stub_model(Administrador,
        :usuario => "Usuario",
        :nombre => "Nombre",
        :contrasena => "Contrasena",
        :habilitado => false
      ),
      stub_model(Administrador,
        :usuario => "Usuario",
        :nombre => "Nombre",
        :contrasena => "Contrasena",
        :habilitado => false
      )
    ])
  end

  it "renders a list of administradors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Contrasena".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
