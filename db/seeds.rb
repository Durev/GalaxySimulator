Star.create!(name: "Sun")
Star.create!(name: "Polaris")
Star.create!(name: "Sirius")

sun = Star.find(1)
sun.planets.create!(name: "Earth", nature: "terrestrial")
sun.planets.create!(name: "Mars", nature: "terrestrial")
sun.planets.create!(name: "Jupiter", nature: "giant")
