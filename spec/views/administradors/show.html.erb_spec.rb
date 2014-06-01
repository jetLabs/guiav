require 'spec_helper'

describe "administradors/show" do
  before(:each) do
    @administrador = assign(:administrador, stub_model(Administrador,
      :usuario => "Usuario",
      :nombre => "Nombre",
      :contrasena => "Contrasena",
      :habilitado => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Usuario/)
    rendered.should match(/Nombre/)
    rendered.should match(/Contrasena/)
    rendered.should match(/false/)
  end
end
