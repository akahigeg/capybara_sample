# -*- encoding : utf-8 -*-

require 'spec_helper'

describe "first page", :type => :feature do
  it "Just visit" do
    visit "http://higelog.brassworks.jp/"
    expect(page).to have_content('ひげろぐ')
  end

  it "Click link" do
    visit "http://higelog.brassworks.jp/"
    click_link("Chefでrbenvを使ってRubyをインストールするCookbookを書いた")
    expect(page).to have_content('rbenv-install-rubies')
  end
end
