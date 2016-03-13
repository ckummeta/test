module CommonActions
  def load_tv_home_page
    television_home_page.load
  end

  def click_best_buys_link
    television_home_page.best_buys.click
  end

  def click_advice_guides_link
    television_home_page.advice_guides.click
  end

  def click_on_next_page
    television_home_page.next_page.click
  end

  def click_on_a_tv
    television_home_page.tv_images[0].click
  end

  def add_a_tv_for_compare
    within television_home_page.tv_list[0] do
      television_home_page.add_button.click
      @compare_model_name = television_home_page.model_name.text
    end
  end
end

World(CommonActions)