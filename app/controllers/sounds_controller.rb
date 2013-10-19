class SoundsController < ApplicationController
  
  def index
    @sounds = [
      {value: 'race-start', label: 'Start Race'},
      {value: 'passby-1', label: 'Pass By 1'},
      {value: 'passby-2', label: 'Pass By 2'},
      {value: 'passby-3', label: 'Pass By 3'},
      {value: 'siren-1', label: 'Siren 1'},
      {value: 'siren-2', label: 'Siren 2'}
    ]
  end

  def sound
    sounds_path = File.expand_path(File.dirname(__FILE__) + '/../../audio')
    puts params

    system("afplay #{sounds_path}/#{params[:sound]}.mp3")

    render nothing: true
  end
end
