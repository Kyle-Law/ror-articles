class SignIn
  include Capybara::DSL

  def sign_in(username)
    visit('/')

    click_on 'Sign Up'
    fill_in 'Username', with: username
    click_on 'Create Account'
  end

  def fill_in_article_form(params = {})
    fill_in('article_title', with: params.fetch(:title, 'Test Title'))
    fill_in('article_text', with: 'Here is a 10 words description about article')
  end

  def create_article
    sign_in('test_user')

    click_on 'Add New Article'

    fill_in_article_form(
      title: 'Test Title'
    )

    click_on 'Create Article'
  end
end
