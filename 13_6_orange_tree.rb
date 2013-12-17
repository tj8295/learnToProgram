class  OrangeTree
  def initialize
    @height = 1
    @oranges = 0
  end
  def height
    @height
  end
  def one_year_passes
    @height = @height + 1
    if @height == 7
      puts "The tree is old now and has died."
      exit
    end
    if @height > 3
      @oranges = @height
    end
  end
  def count_the_oranges
    @oranges
  end
  def pick_an_orange
    if @oranges > 0
      @oranges = @oranges - 1
      puts "The orange was great!"
    else
      puts "There are no more oranges to pick this year."
    end
  end
end

florida = OrangeTree.new
puts florida.count_the_oranges
florida.one_year_passes
puts florida.count_the_oranges
florida.one_year_passes
florida.one_year_passes
florida.count_the_oranges
florida.pick_an_orange
puts florida.count_the_oranges
florida.one_year_passes
puts florida.height
florida.one_year_passes
florida.one_year_passes
florida.one_year_passes



