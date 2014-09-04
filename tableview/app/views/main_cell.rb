class MainCell < UITableViewCell
  ID = 'MainCell'

  def initWithStyle(style, reuseIdentifier: id)
    super

    @layout     = MainCellLayout.new(root: self).build
    @base_view  = @layout.get(:base_view)
    @text_label = @layout.get(:text_label)
    self
  end

  def text=(text)
    @text_label.text = text
  end

  def height
    # content_view.size.height = base_view.size.height + 10
    @base_view.size.height + 10
  end
end
