class ProjectOverviewPageController < CmsController
	
 def index
 	page_size = all
 	@project_page = params[:project_page].to_i
 end

end





