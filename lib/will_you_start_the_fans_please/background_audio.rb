require 'open3'

module WillYouStartTheFansPlease
  class BackgroundAudio
    attr_writer :loop_file, :ending_file

    @loop_file, @ending_file, @stdin, @stdout, @stderr, @thread = nil

    def initialize
      @loop_file = File.expand_path("../../../audio/loop.m4a", __FILE__)
      @ending_file = File.expand_path("../../../audio/ending.m4a", __FILE__)

      puts 'playing audio...'
      puts @loop_file
      self.start_playback
    end

    def start_playback
      @stdin, @stdout, @stderr, @thread = Open3.popen3("while :; do afplay '" + @loop_file + "' ; done")
    end

    def stop_playback
      puts 'stopping audio...'
      puts @ending_file
      parent_thread = @thread.pid
      child_threads = `pgrep -P #{@thread.pid}`.split("\n").to_a
      Process.kill "INT", parent_thread
      child_threads.each{|pid| Process.kill "INT", pid.to_i }
      system("afplay '" + @ending_file + "'")
    end
  end
end