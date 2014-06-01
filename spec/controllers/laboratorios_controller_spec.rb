require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LaboratoriosController do

  # This should return the minimal set of attributes required to create a valid
  # Laboratorio. As you add validations to Laboratorio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nombre" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LaboratoriosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all laboratorios as @laboratorios" do
      laboratorio = Laboratorio.create! valid_attributes
      get :index, {}, valid_session
      assigns(:laboratorios).should eq([laboratorio])
    end
  end

  describe "GET show" do
    it "assigns the requested laboratorio as @laboratorio" do
      laboratorio = Laboratorio.create! valid_attributes
      get :show, {:id => laboratorio.to_param}, valid_session
      assigns(:laboratorio).should eq(laboratorio)
    end
  end

  describe "GET new" do
    it "assigns a new laboratorio as @laboratorio" do
      get :new, {}, valid_session
      assigns(:laboratorio).should be_a_new(Laboratorio)
    end
  end

  describe "GET edit" do
    it "assigns the requested laboratorio as @laboratorio" do
      laboratorio = Laboratorio.create! valid_attributes
      get :edit, {:id => laboratorio.to_param}, valid_session
      assigns(:laboratorio).should eq(laboratorio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Laboratorio" do
        expect {
          post :create, {:laboratorio => valid_attributes}, valid_session
        }.to change(Laboratorio, :count).by(1)
      end

      it "assigns a newly created laboratorio as @laboratorio" do
        post :create, {:laboratorio => valid_attributes}, valid_session
        assigns(:laboratorio).should be_a(Laboratorio)
        assigns(:laboratorio).should be_persisted
      end

      it "redirects to the created laboratorio" do
        post :create, {:laboratorio => valid_attributes}, valid_session
        response.should redirect_to(Laboratorio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved laboratorio as @laboratorio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Laboratorio.any_instance.stub(:save).and_return(false)
        post :create, {:laboratorio => { "nombre" => "invalid value" }}, valid_session
        assigns(:laboratorio).should be_a_new(Laboratorio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Laboratorio.any_instance.stub(:save).and_return(false)
        post :create, {:laboratorio => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested laboratorio" do
        laboratorio = Laboratorio.create! valid_attributes
        # Assuming there are no other laboratorios in the database, this
        # specifies that the Laboratorio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Laboratorio.any_instance.should_receive(:update).with({ "nombre" => "MyString" })
        put :update, {:id => laboratorio.to_param, :laboratorio => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested laboratorio as @laboratorio" do
        laboratorio = Laboratorio.create! valid_attributes
        put :update, {:id => laboratorio.to_param, :laboratorio => valid_attributes}, valid_session
        assigns(:laboratorio).should eq(laboratorio)
      end

      it "redirects to the laboratorio" do
        laboratorio = Laboratorio.create! valid_attributes
        put :update, {:id => laboratorio.to_param, :laboratorio => valid_attributes}, valid_session
        response.should redirect_to(laboratorio)
      end
    end

    describe "with invalid params" do
      it "assigns the laboratorio as @laboratorio" do
        laboratorio = Laboratorio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Laboratorio.any_instance.stub(:save).and_return(false)
        put :update, {:id => laboratorio.to_param, :laboratorio => { "nombre" => "invalid value" }}, valid_session
        assigns(:laboratorio).should eq(laboratorio)
      end

      it "re-renders the 'edit' template" do
        laboratorio = Laboratorio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Laboratorio.any_instance.stub(:save).and_return(false)
        put :update, {:id => laboratorio.to_param, :laboratorio => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested laboratorio" do
      laboratorio = Laboratorio.create! valid_attributes
      expect {
        delete :destroy, {:id => laboratorio.to_param}, valid_session
      }.to change(Laboratorio, :count).by(-1)
    end

    it "redirects to the laboratorios list" do
      laboratorio = Laboratorio.create! valid_attributes
      delete :destroy, {:id => laboratorio.to_param}, valid_session
      response.should redirect_to(laboratorios_url)
    end
  end

end
