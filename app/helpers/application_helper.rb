module ApplicationHelper

  def nav_link name, options = {}, html_options = {}, &block
    content_tag(:li,
      link_to(name, options, html_options, &block),
      class: ('active' if request.path.start_with? url_for(options)))
  end

  def nav_dropdown name, &block
    content_tag(:li, class: 'dropdown') do
      content_tag(:a, class: 'dropdown-toggle', data: { toggle: 'dropdown' }) do
        h(name) << content_tag(:b, nil, class: 'caret')
      end << content_tag(:ul, class: 'dropdown-menu', &block)
    end
  end

end
