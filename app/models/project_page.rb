class ProjectPage < Obj
 	attribute :image, :reference
	attribute :project_title, :string
	attribute :project_date, :string
  attribute :location, :string
  attribute :description, :string
  attribute :child_order, :referencelist

  def valid_widget_classes_for(field_name)
  	self.class.content_widgets
  end
end
