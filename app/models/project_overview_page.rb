class ProjectOverviewPage < Obj
	attribute :image, :reference
	attribute :project_title, :string
  attribute :body, :widgetlist
  attribute :child_order, :referencelist
end
