class Commuter
  def initialize(input)
    @input = input
  end

  def to_be_sorted
    accumulator = {}

    @input.each do |row|
      accumulator[row[0]] = [
        {
          week: row[1],
          day: row[2],
          mode: row[3],
          inbound: row[4],
          outbound: row[5],
          distance: row[6]
        }
      ]
    end
    p accumulator
  end

end