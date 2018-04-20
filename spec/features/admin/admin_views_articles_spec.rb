require "rails_helper"

feature "User visits Article index" do
  before do
    create_articles
    sign_in(user)
  end

  scenario "and sees all of the app’s Articles" do
    visit "/admin/articles"

    within("div#pages_list") do
      expect(page).to have_selector("li", count: 5)
    end
  end

  def create_articles
    @articles ||= create_list(:article, 5)
  end

  def user
    @user ||= create(:user)
  end
end