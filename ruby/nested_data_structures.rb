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

# Print the LOA information of a Firefly boat
p dinghy[:firefly][:dimensions][:LOA]

# Print the name of the first designer for the Laser boat
p dinghy[:laser][:design][1]

# Print all the dimensions (LOA and mast length) of an Optimist boat
p dinghy[:optimist][:dimensions]
