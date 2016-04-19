require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  render_views

  describe "GET index" do
    it "say 'Hello World' " do
    get :index
    expect(response.body).to match /Hel/im

    end

  end

end
