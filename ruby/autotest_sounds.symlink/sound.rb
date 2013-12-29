# Sound effects for autotest - based on....
# http://fozworks.com/2007/7/28/autotest-sound-effects

module Autotest::GrowlSound
  @@sound_path      = ''
  @@sound_app       = 'afplay'
  @@process_devnull = '> /dev/null 2>&1'
  @@process_bg      = '&'

  def self.sound_path=(sound_path)
    @@sound_path = sound_path
  end

  def self.sound_app=(sound_app)
    @@sound_app = sound_app
  end

  def self.process_devnull=(process_devnull)
    @@process_devnull = process_devnull
  end

  def self.process_bg=(process_bg)
    @@process_bg = process_bg
  end

  def self.playsound file
    cmd = "#{@@sound_app} #{@@sound_path + file} #{@@process_devnull} #{@@process_bg}"
    system cmd
  end

  [:run, :red, :green, :quit, :run_command].each do |hook|
    Autotest.add_hook hook do |at|
      playsound("#{hook.to_s}.mp3") unless $TESTING
    end
  end
end
