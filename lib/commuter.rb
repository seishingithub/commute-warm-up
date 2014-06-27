class Commuter
  def initialize(input_data)
    @input_data = input_data
  end

  def to_be_sorted
    hash = {}

    # set rest of data as value
    @input_data.each do |person|
      if hash.has_key?(person[0])
        hash[person[0]] <<
          {
            week: person[1],
            day: person[2],
            mode: person[3],
            inbound: person[4],
            outbound: person[5],
            distance: person[6]
          }
      else
        hash[person[0]] = [
          {
            week: person[1],
            day: person[2],
            mode: person[3],
            inbound: person[4],
            outbound: person[5],
            distance: person[6]
          }
        ]
      end
    end
    hash
  end
end