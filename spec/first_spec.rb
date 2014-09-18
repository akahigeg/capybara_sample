# -*- encoding : utf-8 -*-

require 'spec_helper'

describe "first page" do
  it "hoge" do
    visit "http://higelog.brassworks.jp/"
    expect(page).to have_content('ひげろぐ')

  end
end
