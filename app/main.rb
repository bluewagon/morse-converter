require 'optparse'

require_relative 'morse_code_converter'

class Main
  @converter = MorseCodeConverter.new
  @converted = ''
  @error = false

  options = {}
  OptionParser.new do |parser|
    parser.on('-w', '--words words', 'Words to convert to morse.') do |v|
      options[:words] = v
    end
    parser.on('-m', '--morse morse', 'Morse code to decrypt') do |v|
      options[:morse] = v
    end
    parser.on('-o=s', '--output', 'File to output to. Appends.') do |v|
      options[:output] = v
    end
    parser.on('-r=s', '--input-morse', 'Convert morse from file to words.') do |v|
      options[:inputMorse] = v
    end
    parser.on('-s=s', '--input-characters', 'Convert words from file to morse.') do |v|
      options[:inputCharacters] = v
    end

    parser.on('-h', '--help', 'Show this help message') do
      puts parser
    end
  end.parse!

  if (options[:words] && options[:morse] && options[:inputMorse]) ||
     (options[:words] && options[:morse]) ||
     (options[:words] && options[:inputMorse]) ||
     (options[:morse] && options[:inputMorse])
    @converted = 'only one of morse and words or input can be used.'
    @error = true
  elsif options[:words]
    @converted = @converter.to_morse(options[:words])
  elsif options[:morse]
    @converted = @converter.to_characters(options[:morse])
  elsif options[:inputMorse]
    File.open(options[:inputMorse], 'r') do |f|
      f.each do |line|
        @converted += @converter.to_characters(line)
      end
    end
  elsif options[:inputCharacters]
    File.open(options[:inputCharacters], 'r') do |f|
      f.each do |line|
        puts line
        @converted += @converter.to_morse(line.strip) + "\n"
      end
    end
  else
    @converted = 'No input found.'
    @error = true
  end

  if options[:output] && !@error
    file = options[:output]
    File.open(file, 'a+') do |f|
      if options[:words]
        f.write(options[:words])
      elsif options[:morse]
        f.write(options[:morse])
      end
      f.puts(" :: #{@converted}")
    end
  else
    puts @converted
  end
end