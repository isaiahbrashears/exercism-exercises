module ResistorColor
  def self.color_code(color)
    if color == "black"
      0
    elsif color == "brown"
      1
    elsif color == "red"
      2
    elsif color == "orange"
      3
    elsif color == "yellow"
      4
    elsif color == "green"
      5
    elsif color == "blue"
      6
    elsif color == "violet"
      7
    elsif color == "grey"
      8
    elsif color == "white"
      9
    end
  end

  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
end
