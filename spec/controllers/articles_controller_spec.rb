require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe 'GET #index' do
    it 'populates an array of articles' do
      article = Article.create(title: 'Carlos', text: 'Some text')

      get :index
      expect(assigns(:articles)).to eq([article])
    end
  end


  describe 'GET #new' do
    it 'renders the new :view' do
      get :new
      expect(response).to render_template "new"
    end
  end
end
