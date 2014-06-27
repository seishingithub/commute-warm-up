require 'commuter'

describe Commuter do
  it 'sorts stats by name of unique commuter' do
    input = [
      ["Emily",4,"Monday","Walk",12,15,0.65],
      ["Gerard",1,"Wednesday","Drive",14,12,5],
      ["Gerard",2,"Friday","Drive",14,12,5],
      ["Elsa",1,"Thursday","Drive",28,60,24]
    ]

expected = {
  "Emily" => [
    {
      week: 4,
      day: "Monday",
      mode: "Walk",
      inbound: 12,
      outbound: 15,
      distance: 0.65
    }],
    "Gerard" => [
    {
      week: 1,
      day: "Wednesday",
      mode: "Drive",
      inbound: 14,
      outbound: 12,
      distance: 5
    },
    {
      week: 2,
      day: "Friday",
      mode: "Drive",
      inbound: 14,
      outbound: 12,
      distance: 5
    }],
    "Elsa" => [
      {
      week: 1,
      day: "Thursday",
      mode: "Drive",
      inbound: 28,
      outbound: 60,
      distance: 24
      }]
}

actual = Commuter.new(input).to_be_sorted
expect(actual).to eq expected
  end
end
