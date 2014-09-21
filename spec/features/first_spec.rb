# -*- encoding : utf-8 -*-

require 'spec_helper'

describe "first page", :type => :feature do
  after do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
    
  it "Just visit" do
    visit "/"
    expect(page).to have_content('ひげろぐ')
  end

  it "Click link" do
    visit "/"
    first(:link, "Chefでrbenvを使ってRubyをインストールするCookbookを書いた")
    expect(page).to have_content('rbenv-install-rubies')
  end
end
