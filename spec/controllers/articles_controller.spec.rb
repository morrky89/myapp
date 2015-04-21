require 'rails_helper'

describe ArticlesController do
  describe 'index' do
    it 'return articles' do
      article = create(:article)
        get :index
      
        expect(response).to have_http_status(:success)
         
      expect(assigns(:articles).length).to eq 1
    end
  end
  
  describe 'show' do
    it 'return a article' do
      get :show, id: @article.id
      
      expect(response).to have_http_status(:success)
      expect(assigns(:article)).not_to eq nil
      expect(assigns(:article).title).to eq @article.title

    end
  end
  
  describe 'new' do
    it 'return a new article' do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryGirl.create[:admin]
      get :new
      
      expect(response).to have_http_status(:success)
      expect(assigns(:article)).not_to eq nil
    end
  end
end

