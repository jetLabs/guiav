require 'spec_helper'

describe "laboratorios/index" do
  before(:each) do
    assign(:laboratorios, [
      stub_model(Laboratorio,
        :nombre => "Nombre",
        :razon_social => "Razon Social",
        :direccion => "Direccion",
        :departamento => "Departamento",
        :telefono => "Telefono",
        :web => "Web"
      ),
      stub_model(Laboratorio,
        :nombre => "Nombre",
        :razon_social => "Razon Social",
        :direccion => "Direccion",
        :departamento => "Departamento",
        :telefono => "Telefono",
        :web => "Web"
      )
    ])
  end

  it "renders a list of laboratorios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Razon Social".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Departamento".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Web".to_s, :count => 2
  end
end
