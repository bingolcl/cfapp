require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = FactoryGirl.create(:user)
    @user2 = User.create!(email: "tester2@example.com", password: "1234565432")
  end

  describe "GET #show" do

     context "User is logged in" do

      before do
        sign_in @user
      end

      it "loads correct user details"do
        get :show, id: @user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end

      it "doesn't load the second user" do
        get :show, id: @user2.id
        expect(response).to redirect_to(root_path)
        expect(assigns(:user)).not_to eq @user
      end

     end

     context "No user is logged in" do

       it "redirects to login" do
         get :show, id: @user.id
         expect(response).to redirect_to(new_user_session_path)
       end
     end
  end

end