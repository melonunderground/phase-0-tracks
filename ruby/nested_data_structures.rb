highway = {
  car_1: {
    name: 'suv',
    content_details: {
      seats: 4,
      passengers: 2,
      windows: 4,
      cupholders: 2
      },
      trip_details: {
        destination: 'montana',
        miles_traveled: 15,
        miles_remaining: 1500
      },
      passenger_names: [
        "lauren",
        "mattie"
      ]
    },
  car_2: {
    name: 'limo',
      content_details: {
        seats: 10,
        passengers: 1,
        windows: 6,
        cupholders: 8
    },
      trip_details: {
        destination: 'schaumburg',
        miles_traveled: 1450,
        miles_remaining: 150
      },
      passenger_names: [
          "mark",
        ]
      },

  car_3: {
    name: 'truck',
      content_details: {
        seats: 2,
        passengers: 3,
        windows: 2,
        cupholders: 2
      },
      trip_details: {
        destination: 'elkhorn',
        miles_traveled: 300,
        miles_remaining: 1600
      },
      passenger_names: [
        "jeanne",
        "audrey",
        "jim"
      ]
    }
}
puts highway[:car_3][:name]
puts highway[:car_2][:trip_details]
puts highway[:car_3][:passenger_names]
puts highway[:car_1][:passenger_names].reverse
puts highway[:car_1][:passenger_names].push("rover")
puts highway