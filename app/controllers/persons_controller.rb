class PersonsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end


  def create
    puts params[:person]
    if params["role"].equal?("Actor")
      @actor = Actor.new(params[:person])

      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
    end

    else if true
       @director = Director.new(params[:person])


       respond_to do |format|
         if @director.save
           format.html { redirect_to @director, notice: 'Director was successfully created.' }
           format.json { render :show, status: :created, location: @director }
         else
           format.html { render :new }
           format.json { render json: @director.errors, status: :unprocessable_entity }
         end
       end
    end
  end

  def person_params
    params.permit(:person, :role)
  end

end
