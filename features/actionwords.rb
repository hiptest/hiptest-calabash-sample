# encoding: UTF-8
require 'pry'
module Actionwords
    def i_am_on_welcome_screen
    wait_for_element_exists("android.widget.Button marked:'Create account'")
    wait_for_element_exists("android.widget.Button marked:'Already have an account? Log in'")
    wait_for_text('Skip')
  end

  def i_skip_welcome_screen
    tap_when_element_exists("* marked:'Skip'")
  end

  def page_page_title_is_displayed(page_title = "")
    wait_for_element_exists("org.wikipedia.views.ObservableWebView css:'h1.section_heading'")
    title_elt = query("org.wikipedia.views.ObservableWebView css:'h1.section_heading'").first
    expect(title_elt['textContent']).to eq page_title
  end

  def search_for_topic_article(topic)
    enter_text("org.wikipedia.views.PlainPasteEditText id:'search_term_text' index:0", topic)
  end

  def navigate_to_first_suggestion
    tap_when_element_exists("android.widget.ListView index:0 android.widget.TextView index:0")
    tap_when_element_exists("android.widget.Button marked:'Got it'")
    tap_when_element_exists("ImageView id:'search_bar_show_toc'")
  end

  def open_the_panel_label_panel(panel_label)
    tap_when_element_exists("ImageView id:'wikipedia_icon'")
    tap_when_element_exists("TextView marked:'#{panel_label}'")
  end

  def the_history_list_contains_page_title_page_link_at_index_index(page_title, index)

  end

  def save_the_page
    tap_when_element_exists("ImageView id:'search_bar_show_menu'")
    tap_when_element_exists("TextView marked:'Save page'")
  end

  def the_bookmarked_articles_list_should_contains_p1(p1)
    wait_for_element_exists("ListView id:'saved_pages_list'")
    found_items = query("TextView id:'saved_page_title' marked:'Watermelon'")
    expect(found_items.count).to eq 1
  end

  def app_opened_as_unregistered_user
    wait_for_text('Skip')
    tap_when_element_exists("* marked:'Skip'")
  end
end
