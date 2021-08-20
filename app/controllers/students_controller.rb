class StudentsController < InheritedResources::Base


  # def show
  #   render(partial: 'show') if request.xhr?
    
  # end







  private

    def student_params
      params.require(:student).permit(:name, :email, :company, :course, :level, :telephone_number)
    end

end
