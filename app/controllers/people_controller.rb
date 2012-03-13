class PeopleController < ApplicationController
  resource_attr :people, :person

  before_filter :authorize_person

  def index
    self.people = Person.all
    authorize! :manage, people

    respond_to do |format|
      format.html
      format.json { render json: people }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: person }
    end
  end

  def edit
    respond_to do |format|
      format.html
    end
  end

  def update
    respond_to do |format|
      if person.update_attributes(params[:person])
        format.html { redirect_to person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: person.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def authorize_person
    self.person = Person.find_by_github_handle(params[:id])

    unless current_user == person
      authorize! :manage, person
    end
  end

end
