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

  end

  def open_the_panel_label_panel(panel_label)

  end

  def the_history_list_contains_page_title_page_link_at_index_index(page_title, index)

  end

  def save_the_page

  end

  def the_bookmarked_articles_list_should_contains_p1(p1)

  end

  def app_opened_as_unregistered_user
    wait_for_text('Skip')
    tap_when_element_exists("* marked:'Skip'")
  end
end
