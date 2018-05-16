class PersonsController < ApplicationController

  def index
    @actors = Actor.all
    @directors = Directtor.all
  end

  def show
  end

  def new
  end


  def create
    puts params[:person]
    if params[:role] == "Actor"
      @actor = Actor.new(person_params)

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

    else if params[:role] == "Director"
       @director = Director.new(person_params)

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
    params.permit(:first_name, :last_name, :birth_date, :description)
  end

end
