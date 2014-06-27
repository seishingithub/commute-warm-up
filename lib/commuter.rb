class Commuter

  def initialize(data)
    @data = data
  end

  def sort_by_name
    accumulator = {}

    @data.each do |row|
      name = row[0]

      new_trip = {
        week: row[1],
        day: row[2],
        mode: row[3],
        inbound: row[4],
        outbound: row[5],
        distance: row[6]
      }

        if accumulator[name].nil?
          accumulator[name] = [new_trip]
        else
          existing_trips = accumulator[name]
          existing_trips << new_trip
        end
    end

    accumulator
  end
end