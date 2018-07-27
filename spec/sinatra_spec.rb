require "rspec"
require "spec_helper"

describe 'The home page', type: :feature do

  it 'shows the "hello world" message' do
    visit '/'
    expect(page).to have_text('Hello world!')
  end

end
