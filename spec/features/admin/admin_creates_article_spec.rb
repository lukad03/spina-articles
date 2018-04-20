require "rails_helper"

feature "User Creates an Article" do
  before do
    sign_in(user)
  end

  scenario "and sees the new Article in the Index", js: true do
    visit "/admin/articles/new"

    fill_in "articles_article_title", with: "Article Title"
    find('trix-editor').click.set('My article content')
    fill_in "articles_article_author", with: "Jane Doe"
    page.execute_script("$('#articles_article_publish_date').val('10/10/2017')")

    click_button t("spina.articles.save", scaffold_name: t('spina.articles.scaffold_name'))

    expect(page).to have_text("Article Title")
  end

  def user
    @user ||= create(:user)
  end
end