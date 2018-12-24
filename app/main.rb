require 'optparse'

require_relative 'morse_code_converter'

class Main
  @converter = MorseCodeConverter.new
  @converted = ''
  @error = false

  options = {}
  OptionParser.new do |parser|
    parser.on("-w", "--words words", "Words to convert to morse.") do |v|
      options[:words] = v
    end
    parser.on("-m", "--morse morse", "Morse code to decrypt") do |v|
      options[:morse] = v
    end
    parser.on("-f=s", "--output", "File to output to.") do |v|
      options[:output] = v
    end

    parser.on("-h", "--help", "Show this help message") do
      puts parser
    end
  end.parse!

  if options[:words] and options[:morse]
    @converted = "only one of morse and words can be used"
    @error = true
  elsif options[:words]
    @converted = @converter.to_morse(options[:words])
  elsif options[:morse]
    @converted = @converter.to_characters(options[:morse])
  end

  if options[:output] && !@error
    file = options[:output]
    File.open(file, "a+" ) do |f|
      if options[:words]
        f.write(options[:words])
      else
        f.write(options[:morse])
      end
      f.puts(" :: #{@converted}")
    end
  else
    puts @converted
  end
end