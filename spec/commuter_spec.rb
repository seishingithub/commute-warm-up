require 'commuter'

describe Commuter do
  it 'returns data from CSV in a hash sorted by unique commuter name' do
    input = [
      ["Kinsey", 2, "Monday", "Drive", 60, 60, 25],
      ["Nate", 1, "Tuesday", "Bus", 100, 110, 40],
      ["Jenny", 4, "Tuesday", "Bike", 14, 11, 2.5],
      ["Nate", 2, "Friday", "Bus", 100, 110, 40],
    ]

    expected = {
      "Kinsey" => [
        {
          week: 2,
          day: "Monday",
          mode: "Drive",
          inbound: 60,
          outbound: 60,
          distance: 25
        }],
      "Nate" => [
        {
          week: 1,
          day: "Tuesday",
          mode: "Bus",
          inbound: 100,
          outbound: 110,
          distance: 40
        },
        {
          week: 2,
          day: "Friday",
          mode: "Bus",
          inbound: 100,
          outbound: 110,
          distance: 40
        },
      ],
      "Jenny" => [
        {
          week: 4,
          day: "Tuesday",
          mode: "Bike",
          inbound: 14,
          outbound: 11,
          distance: 2.5
        }]
    }


    actual = Commuter.new(input).to_be_sorted
    expect(actual).to eq expected
  end
end