module ApplicationHelper
  def random_image(category)
    # rubocop:disable Layout/LineLength
    links = ['https://images.unsplash.com/photo-1517180102446-f3ece451e9d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1551122102-63cd339bfaab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80', 'https://images.unsplash.com/photo-1579468118864-1b9ea3c0db4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://s3.amazonaws.com/ckl-website-static/wp-content/uploads/2017/07/Banner_css-1280x680.png']
    # rubocop:enable Layout/LineLength
    links[category - 1]
  end
end
