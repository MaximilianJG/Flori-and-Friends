class PagesController < ApplicationController
  def home
    @dog = Dog.where(dog_of_the_month: true)[0]
    # if @dog.size > 1
    #   @dog.last.update(dog_of_the_month: false)
    # end
    # @dog = Dog.where(dog_of_the_month: true)[0]
  end

  def wir_ueber_uns
  end

  def team
  end

  def mitglied_werden
  end

  def impressum
  end

  def datenschutz
  end

  # Helfen und Spenden
  def spenden
  end

  def patenschaft
  end

  def foerdermitgliedschaft
  end
end
