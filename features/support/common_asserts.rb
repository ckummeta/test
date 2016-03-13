module CommonAsserts

  def assert_tv_home_page_loaded
    expect(television_home_page).to be_displayed
  end

  def assert_next_tv_list_page_displayed
    expect(television_home_page.current_url).to include "?page=2"
  end

  def assert_best_buys_page_displayed
    expect(best_buys_page).to be_displayed
  end

  def assert_advice_guides_page_displayed
    expect(advice_guides_page).to be_displayed
  end

  def verify_more_than_one_tv_pages_available
    television_home_page.has_pages?
  end

  def verify_tv_reviews_available_on_home_page
  television_home_page.has_tv_list?
  end

  def assert_tv_review_summary_page_displayed
    expect(review_summary_page).to be_displayed
  end

  def assert_tv_added_for_compare
    within television_home_page.compare_section do
    expect(television_home_page.compare_model.text).to eq @compare_model_name
    end
  end

end

World(CommonAsserts)