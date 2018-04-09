module FeatureHelpers
  def create_theme
    Spina::Account.create(name: 'My Website', preferences: { theme: 'default' })
  end
  
  def sign_in(user)
    create_theme
    visit '/admin/login'
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button 'Login'
  end
end