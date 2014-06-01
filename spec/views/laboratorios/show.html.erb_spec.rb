require 'spec_helper'

describe "laboratorios/show" do
  before(:each) do
    @laboratorio = assign(:laboratorio, stub_model(Laboratorio,
      :nombre => "Nombre",
      :razon_social => "Razon Social",
      :direccion => "Direccion",
      :departamento => "Departamento",
      :telefono => "Telefono",
      :web => "Web"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Razon Social/)
    rendered.should match(/Direccion/)
    rendered.should match(/Departamento/)
    rendered.should match(/Telefono/)
    rendered.should match(/Web/)
  end
end
