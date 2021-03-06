if Rails::VERSION::MAJOR >= 3

  RedmineApp::Application.routes.draw do
    match '/setdone', :controller => 'extraissueeditor', :action => 'up_done_status',
           :via => [:get]
    match '/gantts/edit_gantt', :controller => 'gantts', :action => 'edit_gantt',
           :via => [:get]
    match '/gantts/edit_gantt/:id', :controller => 'gantts', :action => 'edit_gantt',
           :via => [:post]
  end
  
else

  ActionController::Routing::Routes.draw do |map|
    map.connect '/setdone',
      :controller => 'extraissueeditor', :action => 'up_done_status',
      :conditions => { :method => :get }
    map.connect '/gantts/edit_gantt',
      :controller => 'gantts', :action => 'edit_gantt',
      :conditions => { :method => :get }
    map.connect '/gantts/edit_gantt/:id',
      :controller => 'gantts', :action => 'edit_gantt',
      :conditions => { :method => :post }
  end

end