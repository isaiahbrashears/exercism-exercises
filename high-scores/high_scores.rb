=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

 class HighScores

   def initialize(scores)
     @scores = scores
   end

   def scores
     @scores
   end

   def latest
     @scores[-1]
   end

   def personal_best
     high_score = 0

     @scores.each { |score| score > high_score && high_score = score }

     high_score
   end

   def personal_top_three
     top_three = []
     @scores.sort.reverse.take(3).each { |score| top_three << score }
     top_three
   end

   def latest_is_personal_best?
     @scores.sort[-1] == @scores[-1]

   end


end