class ProjectOverviewPage < Obj
	attribute :image, :reference
	attribute :project_title, :string
  attribute :body, :widgetlist
  attribute :child_order, :referencelist
  attribute :display_breadcrumb_and_title, :enum, values: %w[yes no], default: "no"
  attribute :tags, :stringlist


  def display_breadcrumb_and_title?
    !(display_breadcrumb_and_title == "no")
  end

  end
