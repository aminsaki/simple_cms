class SubjectsController < ApplicationController

   layout "app"
  def index

     @subjects = Subject.sorted

  end

  def show
       @subjects = subject_prarams_id    #params =>$_GET['ID']
  end

  def new
     @subjects =Subject.new({:name => "Default"})
  end
  
  def create
    @subjects =Subject.new(subject_params)

    if @subjects.save 

        flash[:notice] = "Subject ceated success fully"

        redirect_to(:action => 'index')
    else
        render('new')   
     end
  end
  
  def edit
     @subjects = subject_prarams_id    #params =>$_GET['ID']
  end

  def update

       @subjects = subject_prarams_id

        if @subjects.update_attributes(subject_params)

                  flash[:notice] = "Subject update success fully"


          redirect_to(:action => 'show', :id => @subjects.id)

        else
 
          render('edit')

        end #if

  end #update
  

  def delete

       @subjects =subject_prarams_id
       @subjects.destroy
               flash[:notice] = "Subject delete success fully"

       redirect_to(:action =>  'index') 

  end

   private

    def subject_params
      params.require(:subjects).permit(:name , :position ,:visible)
    end
    
    def subject_prarams_id
     Subject.find(params[:id]);
    end 
end
