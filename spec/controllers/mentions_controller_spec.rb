require 'rails_helper'

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

RSpec.describe MentionsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Mention. As you add validations to Mention, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MentionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all mentions as @mentions" do
      mention = Mention.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:mentions)).to eq([mention])
    end
  end

  describe "GET show" do
    it "assigns the requested mention as @mention" do
      mention = Mention.create! valid_attributes
      get :show, {:id => mention.to_param}, valid_session
      expect(assigns(:mention)).to eq(mention)
    end
  end

  describe "GET new" do
    it "assigns a new mention as @mention" do
      get :new, {}, valid_session
      expect(assigns(:mention)).to be_a_new(Mention)
    end
  end

  describe "GET edit" do
    it "assigns the requested mention as @mention" do
      mention = Mention.create! valid_attributes
      get :edit, {:id => mention.to_param}, valid_session
      expect(assigns(:mention)).to eq(mention)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mention" do
        expect {
          post :create, {:mention => valid_attributes}, valid_session
        }.to change(Mention, :count).by(1)
      end

      it "assigns a newly created mention as @mention" do
        post :create, {:mention => valid_attributes}, valid_session
        expect(assigns(:mention)).to be_a(Mention)
        expect(assigns(:mention)).to be_persisted
      end

      it "redirects to the created mention" do
        post :create, {:mention => valid_attributes}, valid_session
        expect(response).to redirect_to(Mention.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mention as @mention" do
        post :create, {:mention => invalid_attributes}, valid_session
        expect(assigns(:mention)).to be_a_new(Mention)
      end

      it "re-renders the 'new' template" do
        post :create, {:mention => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested mention" do
        mention = Mention.create! valid_attributes
        put :update, {:id => mention.to_param, :mention => new_attributes}, valid_session
        mention.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested mention as @mention" do
        mention = Mention.create! valid_attributes
        put :update, {:id => mention.to_param, :mention => valid_attributes}, valid_session
        expect(assigns(:mention)).to eq(mention)
      end

      it "redirects to the mention" do
        mention = Mention.create! valid_attributes
        put :update, {:id => mention.to_param, :mention => valid_attributes}, valid_session
        expect(response).to redirect_to(mention)
      end
    end

    describe "with invalid params" do
      it "assigns the mention as @mention" do
        mention = Mention.create! valid_attributes
        put :update, {:id => mention.to_param, :mention => invalid_attributes}, valid_session
        expect(assigns(:mention)).to eq(mention)
      end

      it "re-renders the 'edit' template" do
        mention = Mention.create! valid_attributes
        put :update, {:id => mention.to_param, :mention => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mention" do
      mention = Mention.create! valid_attributes
      expect {
        delete :destroy, {:id => mention.to_param}, valid_session
      }.to change(Mention, :count).by(-1)
    end

    it "redirects to the mentions list" do
      mention = Mention.create! valid_attributes
      delete :destroy, {:id => mention.to_param}, valid_session
      expect(response).to redirect_to(mentions_url)
    end
  end

end
