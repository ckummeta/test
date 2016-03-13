class TelevisionHomePage < BasePage
  set_url "/"
  set_url_matcher /#{Capybara.app_host}\/?/

  element :best_buys, "a", :text => /Best Buys/i
  element :advice_guides, "a", :text => /Advice Guides/i
  element :pages, 'a.pagination__link.is-last-page'
  element :next_page, 'a.pagination__link.is-next-page'
  elements :tv_list, 'ul.products li div.product-listing'
  elements :tv_images, 'a img.product-listing__thumb-image'
  element :add_button, 'button.action-add'
  element :sort_by, 'select.sort-selector'
  elements :options, 'select.sort-selector option'
  element :compare_section, 'div.cont-products-compare'
  element :compare_model, 'img.comparison-product-thumbnail'
  element :compare_button, 'a.view-comparison.button.button-primary icon-right'
  element :model_name, 'span.product-listing__model'

  def mouse_over
    #page.execute_script("$(document.getElementsByClassName('odd ATI_MultiEPGRowDataRow_1 ATI_EPGID_1621 tt_trigger tt_1')).trigger('mouseover')")
    page.driver.manage.action(element.native).perform
  end
end

