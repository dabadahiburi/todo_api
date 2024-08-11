class TodosController < ApplicationController
  before_action :set_todo, only: [:show,:update,:destroy]

  #Get /todos
  def index
    @todos = Todo.all
    render json: @todos
  end

  #Get /todos/:id
  def show
    render json: @todo
  end

  #POST /todos
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created,location: @todo
    else
      render json: @todo.errors,status: :unprocessable_entity
    end
  end

  # Delete /todos/:id
  def destroy
    @todo.destroy
  end

  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end
  
  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title,:description,:completed)
  end

end
