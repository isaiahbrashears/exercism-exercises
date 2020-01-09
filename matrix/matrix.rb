=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

  def initialize(matrix_string)
    @matrix_string = matrix_string
    @matrix = build_matrix
  end

  def rows
    @matrix
  end

  def columns
    column_matrix = []
    iterator = 0
    while iterator < @matrix.length
      column_matrix << get_column(iterator)
      iterator += 1
    end
    column_matrix
  end

  private

  def build_matrix
    new_matrix = []
    matrix_array = @matrix_string.split("\n")
    matrix_array.each { |row| new_matrix <<  row.split(" ").map { |num| num.to_i } }
    new_matrix
  end

  def get_column(num)
    column = []
    @matrix.each { |row| column << row[num] }
    column
  end
end