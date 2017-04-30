dinghy = {
    optimist: {
        pretty_name: 'Optimist',
        dimensions: {
            LOA: 2.3,
            mast_length: 2.35
        },
        design: [
            "American Clark Mills"
        ]
    },
    laser: {
        pretty_name: 'Laser International',
        dimensions: {
            LOA: 4.23,
            mast_length: 6.46
        },
        design: [
            "Bruce Kirby",
            "Ian Bruce"
        ]
    },
    firefly: {
        pretty_name: 'Firefly',
        dimensions: {
            LOA: 3.66,
            mast_length: 6.4
        },
        design: [
          "Uffa Fox"
        ]
    }
}

p dinghy[:firefly][:dimensions][:LOA]
p dinghy[:laser][:design][1]
p dinghy[:optimist][:dimensions]
