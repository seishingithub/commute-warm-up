require 'commuter'

describe Commuter do
  it 'converts CSV file into hash to sort by unique commuter' do

    input = [
      ["Gerard", 4, "Wednesday", "Drive", 14, 12, 5],
      ["Jenny", 1, "Monday", "Bike", 14, 11, 2.5],
      ["Jenny", 2, "Tuesday", "Drive", 35, 52, 24],
      ["Kinsey", 3, "Monday", "Drive", 60, 60, 25]
    ]

    expected = {
      "Gerard" => [
        {
          week: 4,
          day: "Wednesday",
          mode: "Drive",
          inbound: 14,
          outbound: 12,
          distance: 5
        }],
      "Jenny" => [
        {
          week: 1,
          day: "Monday",
          mode: "Bike",
          inbound: 14,
          outbound: 11,
          distance: 2.5
        },
        {
          week: 2,
          day: "Tuesday",
          mode: "Drive",
          inbound: 35,
          outbound: 52,
          distance: 24
        },
      ],
      "Kinsey" => [
        {
          week: 3,
          day: "Monday",
          mode: "Drive",
          inbound: 60,
          outbound: 60,
          distance: 25
        }],
    }

    actual = Commuter.new(input).sort_data
    expect(actual).to eq expected
  end
end