require 'rubygems'
require 'capistrano'
require 'will_you_start_the_fans_please/background_audio'

background_audio = nil

Capistrano::Configuration.instance(:must_exist).load do

  namespace :deploy do

    before 'deploy:test_will_you_start_the_fans_please', 'will_you_start_the_fans_please:start_audio'
    after 'deploy:test_will_you_start_the_fans_please',  'will_you_start_the_fans_please:stop_audio'

  end

  namespace :will_you_start_the_fans_please do
    task :start_audio do
      background_audio = WillYouStartTheFansPlease::BackgroundAudio.new
    end

    task :stop_audio do
      background_audio.stop_playback
    end
  end

end