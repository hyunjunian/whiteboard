class TempController < ApplicationController
  before_action :authenticate_user!
  def index
    @whitebox = Whitebox.first
    @editing = @whitebox.editing
    @tempall = Temp.all
  end
  def create
    @temp = Temp.new(:content => params[:temp][:content])
    if @temp.save
        sync_new @temp
        respond_to do |format|
          format.js
        end
    end
    
  end
  def update
    @temp = Temp.find(params[:tempid])
    @temp.content = params[:content]
    if @temp.save
        sync_update @temp
        respond_to do |format|
          format.js
        end
    end

    
  end
end
