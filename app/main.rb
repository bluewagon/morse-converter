require 'optparse'

require_relative 'morse_code_converter'

class Main
  @converter = MorseCodeConverter.new
  @converted = ''

  options = {}
  OptionParser.new do |parser|
    parser.on("-w", "--words words", "Words to convert to morse.") do |v|
      options[:words] = v
    end
    parser.on("-m", "--morse morse", "Morse code to decrypt") do |v|
      options[:morse] = v
    end

    parser.on("-h", "--help", "Show this help message") do
      puts parser
    end
  end.parse!

  if options[:words] and options[:morse]
    @converted = "only one of morse and words can be used"
  elsif options[:words]
    @converted = @converter.to_morse(options[:words])
  elsif options[:morse]
    @converted = @converter.to_characters(options[:morse])
  end

  puts @converted
end