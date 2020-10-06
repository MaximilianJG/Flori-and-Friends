class DogsController < ApplicationController
  def notfaelle
    @dogs = Dog.where(category: "Notfälle")
  end

  def rueden
    @dogs = Dog.where(category: "Rüden")
    @title = "Rüden"
    if params[:query].present?
      age_filter
    end
  end

  def huendinnen
    @dogs = Dog.where(category: "Hündinnen")
    @title = "Hündinnen"
    if params[:query].present?
      age_filter
    end
  end

  def handicap_dogs
    @dogs = Dog.where(category: "Handicap Dogs")
    @title = "Handicap Dogs"
    if params[:query].present?
      age_filter
    end
  end

  def unsere_angsthaesschen
    @dogs = Dog.where(category: "Unsere Angsthässchen")
    @title = "Angsthässchen"
    if params[:query].present?
      age_filter
    end
  end

  def gluecksfellchen_zuhause
    @dogs = Dog.where(category: "Glücksfellchen Zuhause")
    @title = "Glücksfellchen Zuhause"
    if params[:query].present?
      age_filter
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

  def age(dob)
    now = Time.now.utc.to_date
    age_in_years = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    if age_in_years < 1
      return ((now.month.to_f - dob.month) / 12)
    else
      return age_in_years
    end
  end

  # def age_filter
  #   @filtered_dogs = []
  #   @dogs.each do |dog|
  #     if params[:query] == "6-monate-bis-1-jahr"
  #       if (age(dog.birthdate) <= 1 && age(dog.birthdate) >= 6.to_f / 12)
  #         @filtered_dogs << dog
  #       end
  #     end
  #   end
  #   @dogs = @filtered_dogs
  # end

  def age_filter
    @filtered_dogs = []
    @dogs.each do |dog|
      @filtered_dogs << dog if (params[:query] == "6-monate-bis-1-jahr" && (age(dog.birthdate) < 1 && age(dog.birthdate) >= 6.to_f / 12))
      @filtered_dogs << dog if (params[:query] == "1-jahr-bis-5-jahre" && (age(dog.birthdate) < 5 && age(dog.birthdate) >= 1))
      @filtered_dogs << dog if (params[:query] == "5-jahre-bis-8-jahre" && (age(dog.birthdate) < 8 && age(dog.birthdate) >= 5))
      @filtered_dogs << dog if (params[:query] == "ab-8-jahre" && (age(dog.birthdate) >= 8))
    end
    @dogs = @filtered_dogs
  end

end
