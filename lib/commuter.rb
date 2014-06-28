class Commuter
  def initialize(csv_data)
    @csv_data = csv_data
  end

  def sort_data
    container = {}
    @csv_data.each do |row|
      if container.has_key?(row[0])
        container[row[0]] <<
          {
            week: row[1],
            day: row[2],
            mode: row[3],
            inbound: row[4],
            outbound: row[5],
            distance: row[6]
          }
      else
        container[row[0]] = [
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
    end
    p container
  end
end