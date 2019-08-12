

class AI
  @@over = false
  @@kill_commands = ['end', 'terminate', 'kill']

  def initialize()
    puts 'AI: Hello!'
  end

  def run()
    until @@over
      print('Me: ')
      cmd = gets
      cmd = preprocess(cmd)
      process(cmd)
    end
  end

  def preprocess(cmd)
    return cmd.chomp("\n")
  end

  def process(cmd)
    @@over = true if @@kill_commands.include?(cmd)
  end
end

ai = AI.new
ai.run
