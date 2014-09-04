class MainTableViewController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self
  end

  def loadView
    @layout   = MainTableLayout.new
    self.view = @layout.view

    @table_view = @layout.get(:table_view)
  end

  def viewDidLoad
    super

    @table_view.delegate = self
    @table_view.dataSource = self

    @stub_cell = @table_view.dequeueReusableCellWithIdentifier(MainCell::ID)
    
    @dummy_data = [('a'..'z').to_a.join * 20,
                   ('a'..'z').to_a.join * 15,
                   ('a'..'z').to_a.join * 10,
                   ('a'..'z').to_a.join * 5,
                   ('a'..'z').to_a.join * 1,
                  ]
  end

  def dealloc
    super
  end

  def tableView(tableView, heightForRowAtIndexPath: indexPath)
    @stub_cell.text = @dummy_data[indexPath.row]
    @stub_cell.contentView.setNeedsLayout
    @stub_cell.contentView.layoutIfNeeded
    @stub_cell.height
  end

  def tableView(tableView, estimatedHeightForRowAtIndexPath: indexPath)
    100
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @dummy_data.length
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(MainCell::ID)
    cell.text = @dummy_data[indexPath.row]
    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    puts indexPath.row
  end
end
