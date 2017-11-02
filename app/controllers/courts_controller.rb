class CourtsController < ApplicationController

 def index
#    @page_title = 'Courts in Barcelona'
#    if params[:search]
#    @courts = Courts.search(params[:search]).all.order('created_at DESC').#paginate(:per_page => 20, :page => params[:page])
#    else
#    @courts = Courts.all.order('name ASC').paginate(:per_page => 20, :page => #params[:page])
#    end
  end

  def new
    page_title = 'Add a new court or club'
    @court = Court.new
  end

  def create
    @court = Court.new(court_params)
    if @court.save 
      flash[:notice] = 'Created a new court successfully' 
      redirect_to admin_categories_path
    else
      flash[:alert] = 'Failed creation of a new court' 
      render 'new'
    end
  end

  def edit
    page_title = 'Edit Court'
    @court = Court.find(params[:id])
  end

  def update
    @court = Court.find(params[:id])
    if @court.update(court_params)
    flash[:notice] = 'Updated court successfully' 
      redirect_to admin_categories_path
    else
      flash[:alert] = 'Failed court updated' 
      render 'edit'
    end  
  end

  def destroy
    @court = Court.find(params[:id])
    if @court.destroy
      flash[:notice] = 'Court removed'
      redirect_to admin_categories_path
    else
      render 'index'
    end
  end

private
  def court_params
    params.require(:court).permit(:name)
  end




end
