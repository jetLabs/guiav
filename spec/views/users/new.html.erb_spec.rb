require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :password => "MyString",
      :name => "MyString",
      :surname => "MyString",
      :email => "MyString",
      :pro => false
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_surname[name=?]", "user[surname]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_pro[name=?]", "user[pro]"
    end
  end
end
