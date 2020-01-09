module ResistorColorDuo
  def self.value(colors)

    bands = {
        "black"  => "0",
        "brown"  => "1",
        "red"    => "2",
        "orange" => "3",
        "yellow" => "4",
        "green"  => "5",
        "blue"   => "6",
        "violet" => "7",
        "grey"   => "8",
        "white"  => "9"
    }

    total_value = colors.take(2).sum(""){|k| bands[k]}

    total_value.to_i
  end
end