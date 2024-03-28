class ProgrammingLanguagesController < ApplicationController
  def index
    @programming_languages = ProgrammingLanguage.all
  end

  def show
    @programming_language = ProgrammingLanguage.find(params[:id])
  end

  def new
    @programming_language = ProgrammingLanguage.new
  end

  def create
    @programming_language = ProgrammingLanguage.new(programming_language_params)
    if @programming_language.save
      redirect_to @programming_language, notice: 'Programming language was successfully created.'
    else
      render :new
    end
  end

  # Add edit, update, and destroy actions here
  def edit
    @programming_language = ProgrammingLanguage.find(params[:id])
  end

  def update
    @programming_language = ProgrammingLanguage.find(params[:id])
    if @programming_language.update(programming_language_params)
      redirect_to @programming_language, notice: 'Programming language was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  @programming_language = ProgrammingLanguage.find(params[:id])
  @programming_language.destroy
  redirect_to programming_languages_path, notice: 'Programming language was successfully destroyed.'
  end


  private

  def programming_language_params
    params.require(:programming_language).permit(:title, :description, :link)
  end
end
