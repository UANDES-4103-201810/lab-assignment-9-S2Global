class PersonsController < ApplicationController

  def index
  end

  def show
  end

  # GET /persons/new
  def new

  end


  def create
    if params["persons"].role.equal?("Actor")
      @actor = Actor.new(actor_params)

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
    else if params["persons"].role.equal?("Director")
       @director = Director.new(director_params)

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


end
