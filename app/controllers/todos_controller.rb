class TodosController < ApplicationController
  
  def new
  end
  
  def create
    @category= Category.find_by(id: params[:category_id])
    @todos = @category.todos.create(todo_params)
    redirect_to category_path(@category.id)
  end
  
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to category_path(params[:category_id])
  end
  
  private
   
   def todo_params
     params.require(:todo).permit(:content)
   end
end
