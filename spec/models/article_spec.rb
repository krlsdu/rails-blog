require 'rails_helper'

RSpec.describe Article, type: :model do
  let ( :article ) { FactoryGirl.build(:article) }

  context "should not be saved when title" do

    it 'is not filled' do
      article.title=""
      expect( article.save ).to be false
    end

    it 'is all blank' do
      article.title="       "
      expect( article.save ).to be false
    end
  end
end
