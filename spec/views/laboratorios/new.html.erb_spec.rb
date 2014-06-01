require 'spec_helper'

describe "laboratorios/new" do
  before(:each) do
    assign(:laboratorio, stub_model(Laboratorio,
      :nombre => "MyString",
      :razon_social => "MyString",
      :direccion => "MyString",
      :departamento => "MyString",
      :telefono => "MyString",
      :web => "MyString"
    ).as_new_record)
  end

  it "renders new laboratorio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", laboratorios_path, "post" do
      assert_select "input#laboratorio_nombre[name=?]", "laboratorio[nombre]"
      assert_select "input#laboratorio_razon_social[name=?]", "laboratorio[razon_social]"
      assert_select "input#laboratorio_direccion[name=?]", "laboratorio[direccion]"
      assert_select "input#laboratorio_departamento[name=?]", "laboratorio[departamento]"
      assert_select "input#laboratorio_telefono[name=?]", "laboratorio[telefono]"
      assert_select "input#laboratorio_web[name=?]", "laboratorio[web]"
    end
  end
end
