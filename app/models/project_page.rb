class ProjectPage < Obj
 	attribute :image, :reference
	attribute :project_title, :string
	attribute :project_date, :string
  attribute :location, :string
  attribute :description, :string
  attribute :child_order, :referencelist
  attribute :display_breadcrumb_and_title, :enum, values: %w[yes no], default: "no"
  attribute :tags, :stringlist

  def valid_widget_classes_for(field_name)
  	self.class.content_widgets
  end

  def display_breadcrumb_and_title?
  	!(display_breadcrumb_and_title == "no")
  end

  def description_for_editor
    if binary? 
      name
    else
      project_title.presence || "<untitled #{obj_class}>"
    end
  end

end




