class WordlistGenerator
  attr_reader :min, :max, :chr, :range_result
  def initialize(min, max, chr)
    @min = min
    @max = max
    @chr = chr.chars
    @range_result = Array.new
  end
  def word_chars()
    for numbers_range in (min..max)
      for characters_range in chr.repeated_permutation(numbers_range).map(&:join)
         range_result << characters_range
      end
    end
  end
  def outputs()
    puts "Numbers Lines: #{range_result.length}\n"
    sleep(2)
    puts range_result
  end
end
Wordlist = WordlistGenerator.new(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_s)
Wordlist.word_chars()
Wordlist.outputs()
