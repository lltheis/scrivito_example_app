class ProjectOverviewPageController < CmsController
	
 def index
 	@project_pages = ProjectPage.all
 end

end





