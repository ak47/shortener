require 'spec_helper'

describe ShortiesController do
  before (:each) do
    @user = Factory.create(:user)
    controller.sign_in @user
  end

  # This should return the minimal set of attributes required to create a valid
  # Shorty. As you add validations to Shorty, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    Factory.attributes_for(:shorty)
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ShortiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index", :focus do
    it "assigns all shorties as @shorties" do
      shorty = Shorty.create! valid_attributes
      get :index, {}, valid_session
      assigns(:shorties).should eq([shorty])
    end
  end

  describe "GET show" do
    it "assigns the requested shorty as @shorty" do
      shorty = Shorty.create! valid_attributes
      get :show, {:id => shorty.to_param}, valid_session
      assigns(:shorty).should eq(shorty)
    end
  end

  describe "GET new" do
    it "assigns a new shorty as @shorty" do
      get :new, {}, valid_session
      assigns(:shorty).should be_a_new(Shorty)
    end
  end

  describe "GET edit" do
    it "assigns the requested shorty as @shorty" do
      shorty = Shorty.create! valid_attributes
      get :edit, {:id => shorty.to_param}, valid_session
      assigns(:shorty).should eq(shorty)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Shorty" do
        expect {
          post :create, {:shorty => valid_attributes}, valid_session
        }.to change(Shorty, :count).by(1)
      end

      it "assigns a newly created shorty as @shorty" do
        post :create, {:shorty => valid_attributes}, valid_session
        assigns(:shorty).should be_a(Shorty)
        assigns(:shorty).should be_persisted
      end

      it "redirects to the created shorty" do
        post :create, {:shorty => valid_attributes}, valid_session
        response.should redirect_to(Shorty.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved shorty as @shorty" do
        # Trigger the behavior that occurs when invalid params are submitted
        Shorty.any_instance.stub(:save).and_return(false)
        post :create, {:shorty => {}}, valid_session
        assigns(:shorty).should be_a_new(Shorty)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Shorty.any_instance.stub(:save).and_return(false)
        post :create, {:shorty => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested shorty" do
        shorty = Shorty.create! valid_attributes
        # Assuming there are no other shorties in the database, this
        # specifies that the Shorty created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Shorty.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => shorty.to_param, :shorty => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested shorty as @shorty" do
        shorty = Shorty.create! valid_attributes
        put :update, {:id => shorty.to_param, :shorty => valid_attributes}, valid_session
        assigns(:shorty).should eq(shorty)
      end

      it "redirects to the shorty" do
        shorty = Shorty.create! valid_attributes
        put :update, {:id => shorty.to_param, :shorty => valid_attributes}, valid_session
        response.should redirect_to(shorty)
      end
    end

    describe "with invalid params" do
      it "assigns the shorty as @shorty" do
        shorty = Shorty.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Shorty.any_instance.stub(:save).and_return(false)
        put :update, {:id => shorty.to_param, :shorty => {}}, valid_session
        assigns(:shorty).should eq(shorty)
      end

      it "re-renders the 'edit' template" do
        shorty = Shorty.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Shorty.any_instance.stub(:save).and_return(false)
        put :update, {:id => shorty.to_param, :shorty => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested shorty" do
      shorty = Shorty.create! valid_attributes
      expect {
        delete :destroy, {:id => shorty.to_param}, valid_session
      }.to change(Shorty, :count).by(-1)
    end

    it "redirects to the shorties list" do
      shorty = Shorty.create! valid_attributes
      delete :destroy, {:id => shorty.to_param}, valid_session
      response.should redirect_to(shorties_url)
    end
  end

end
