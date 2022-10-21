class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    monster
  end

  def new
    @monster = Monster.new()
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
      redirect_to @monster, notice: "Monstruo creado con exito!"
    else
      render :new, status: :see_other
    end
  end

  def update
    monster
    if @monster.update(monster_params)
      redirect_to @monster, notice: "Monstruo modificado con exito!"
    else
      render :edit
    end
  end

  def edit
    monster
  end

  private 

  def monster_params
    params.require(:monster).permit(:name, :description, :phone, :birthdate)
  end

  def monster
    @monster ||= Monster.find(params[:id])
  end
end
