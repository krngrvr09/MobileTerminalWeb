class Api::CommandsController < ApplicationController

def show
	respond_to do |format|
  				format.json { render :file => "/api/commands/show.json.erb", :content_type => 'application/json' }
  			end
end

def command_params
	params.require(:command).permit(:command_name)
end

def execute
	#command = command_params[:command_name]
	#puts command
	request.body.read
	com = params[:command][':command_name']
	puts com
	@result = `#{com}`
	@better_result = @result.split("\n")
	respond_to do |format|
  	format.json { render :file => "/api/commands/execute.json.erb", :content_type => 'application/json' }
end

end


end