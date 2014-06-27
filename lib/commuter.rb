class Commuter

  def initialize(data)
    @data = data
  end

  def sort_by_name
    hash = {}
    @data.each do |row|
      hash[row[0]] = [{
                        week: row[1],
                        day: row[2],
                        mode: row[3],
                        inbound: row[4],
                        outbound: row[5],
                        distance: row[6],
                      }]
    end
    p hash
  end

end