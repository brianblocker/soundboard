class SoundsController < ApplicationController
  def index
    @sounds = [
      {value: 'race-start', label: 'Start Race'}
    ]
  end

  def sound
    puts params

    system("afplay ~/Desktop/audio/#{params[:sound]}.mp3")

    render nothing: true
  end
end
