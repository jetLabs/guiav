require 'spec_helper'

describe "administradors/edit" do
  before(:each) do
    @administrador = assign(:administrador, stub_model(Administrador,
      :usuario => "MyString",
      :nombre => "MyString",
      :contrasena => "MyString",
      :habilitado => false
    ))
  end

  it "renders the edit administrador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", administrador_path(@administrador), "post" do
      assert_select "input#administrador_usuario[name=?]", "administrador[usuario]"
      assert_select "input#administrador_nombre[name=?]", "administrador[nombre]"
      assert_select "input#administrador_contrasena[name=?]", "administrador[contrasena]"
      assert_select "input#administrador_habilitado[name=?]", "administrador[habilitado]"
    end
  end
end
