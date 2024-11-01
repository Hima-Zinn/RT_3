module ApplicationHelper
  # ページごとのタイトルを返す
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    #ページタイトルがなければ、base_titleのみ、あれば前に入力を追加
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
