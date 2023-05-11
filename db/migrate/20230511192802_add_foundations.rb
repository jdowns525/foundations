class AddFoundations < ActiveRecord::Migration[6.0]
  def up
    Foundation.create(
      name: "Global Education Foundation",
      address: "123 Education Lane",
      city: "New York",
      state: "NY",
      zipcode: "10001",
      latitude: 40.7128,
      longitude: -74.0060,
      description: "A foundation working to improve educational opportunities worldwide.",
      category: "humanitarian"
    )

    Foundation.create(
      name: "Animal Rescue Foundation",
      address: "2890 Mitchell Dr",
      city: "Walnut Creek",
      state: "CA",
      zipcode: "94598",
      latitude: 37.9189,
      longitude: -122.0622,
      description: "A foundation dedicated to rescuing and rehabilitating animals.",
      category: "animal_welfare"
    )

    Foundation.create(
  name: "OpenAI Foundation",
  address: "3180 18th St",
  city: "San Francisco",
  state: "CA",
  zipcode: "94110",
  latitude: 37.7623,
  longitude: -122.414,
  description: "A foundation dedicated to advancing digital intelligence.",
  category: "artificial_intelligence"
)

foundation2 = Foundation.create(
  name: "Human Rights Foundation",
  address: "350 5th Ave",
  city: "New York",
  state: "NY",
  zipcode: "10118",
  latitude: 40.7488,
  longitude: -73.9857,
  description: "A foundation focused on protecting human rights globally.",
  category: "human_rights"
)

foundation3 = Foundation.create(
  name: "Environmental Conservation Foundation",
  address: "1049 Asilomar Blvd",
  city: "Pacific Grove",
  state: "CA",
  zipcode: "93950",
  latitude: 36.6174,
  longitude: -121.9166,
  description: "A foundation dedicated to the conservation of natural resources and ecosystems.",
  category: "conservation"
)

Foundation.create(
  name: "United Way Worldwide",
  address: "701 N Fairfax St",
  city: "Alexandria",
  state: "VA",
  zipcode: "22314",
  latitude: 38.8051,
  longitude: -77.0470,
  description: "A nonprofit organization focused on improving education, helping people achieve financial stability, and promoting healthy lives.",
  category: "human_services"
)

Foundation.create(
  name: "Feeding America",
  address: "161 N Clark St",
  city: "Chicago",
  state: "IL",
  zipcode: "60601",
  latitude: 41.8853,
  longitude: -87.6309,
  description: "A nonprofit organization that is a nationwide network of more than 200 food banks that feed more than 46 million people.",
  category: "food_security"
)

Foundation.create(
  name: "Task Force for Global Health",
  address: "330 W Ponce de Leon Ave",
  city: "Decatur",
  state: "GA",
  zipcode: "30030",
  latitude: 33.7748,
  longitude: -84.2963,
  description: "An international, nonprofit organization that works to improve health of people most in need, primarily in developing countries.",
  category: "health"
)

Foundation.create(
  name: "YMCA of the USA",
  address: "101 N Wacker Dr",
  city: "Chicago",
  state: "IL",
  zipcode: "60606",
  latitude: 41.8832,
  longitude: -87.6371,
  description: "A nonprofit organization aiming to strengthen communities through youth development, healthy living, and social responsibility.",
  category: "youth_development"
)

Foundation.create(
  name: "American Cancer Society",
  address: "250 Williams St NW",
  city: "Atlanta",
  state: "GA",
  zipcode: "30303",
  latitude: 33.7617,
  longitude: -84.3927,
  description: "A nationwide voluntary health organization dedicated to eliminating cancer.",
  category: "health"
)

Foundation.create(
  name: "American Red Cross",
  address: "431 18th St NW",
  city: "Washington",
  state: "DC",
  zipcode: "20006",
  latitude: 38.9032,
  longitude: -77.0439,
  description: "A humanitarian organization that provides emergency assistance, disaster relief, and education in the United States.",
  category: "humanitarian"
)

Foundation.create(
  name: "Habitat for Humanity",
  address: "270 Peachtree St NW",
  city: "Atlanta",
  state: "GA",
  zipcode: "30303",
  latitude: 33.7595,
  longitude: -84.3897,
  description: "An international nonprofit organization that helps families build and improve affordable housing.",
  category: "housing"
)


Foundation.create(
  name: "Make-A-Wish Foundation",
  address: "4742 N 24th St",
  city: "Phoenix",
  state: "AZ",
  zipcode: "85016",
  latitude: 33.5066,
  longitude: -112.0303,
  description: "A nonprofit organization that arranges experiences, often called wishes, for children with critical illnesses.",
  category: "children"
)

Foundation.create(
  name: "International Rescue Committee",
  address: "122 E 42nd St",
  city: "New York",
  state: "NY",
  zipcode: "10168",
  latitude: 40.7519,
  longitude: -73.9761,
  description: "A global humanitarian aid and relief organization that responds to the world's worst crises and helps people rebuild their lives.",
  category: "humanitarian"
)

Foundation.create(
  name: "American Red Cross",
  address: "431 18th St NW",
  city: "Washington",
  state: "DC",
  zipcode: "20006",
  latitude: 38.9013,
  longitude: -77.0396,
  description: "A humanitarian organization that provides emergency assistance, disaster relief, and education inside the United States.",
  category: "disaster_relief"
)

Foundation.create(
  name: "Doctors Without Borders",
  address: "333 7th Ave",
  city: "New York",
  state: "NY",
  zipcode: "10001",
  latitude: 40.7471,
  longitude: -73.9926,
  description: "An international medical humanitarian organization that provides aid to people affected by armed conflict, epidemics, and natural disasters.",
  category: "health"
)

Foundation.create(
  name: "Big Brothers Big Sisters of America",
  address: "2502 S Fiddlers Green Cir",
  city: "Greenwood Village",
  state: "CO",
  zipcode: "80111",
  latitude: 39.6054,
  longitude: -104.8792,
  description: "A nonprofit organization that provides mentoring programs to children facing adversity.",
  category: "youth_development"
)

Foundation.create(
  name: "National Park Foundation",
  address: "1110 Vermont Ave NW",
  city: "Washington",
  state: "DC",
  zipcode: "20005",
  latitude: 38.9047,
  longitude: -77.0322,
  description: "The official charity of America's national parks, supporting conservation efforts and promoting public engagement.",
  category: "environment"
)
Foundation.create(
  name: "Habitat for Humanity International",
  address: "322 West Lamar Street",
  city: "Americus",
  state: "GA",
  zipcode: "31709",
  latitude: 32.0724,
  longitude: -84.2321,
  description: "A nonprofit organization that helps families build and improve places to call home.",
  category: "housing"
)

Foundation.create(
  name: "The Nature Conservancy",
  address: "4245 North Fairfax Drive",
  city: "Arlington",
  state: "VA",
  zipcode: "22203",
  latitude: 38.8803,
  longitude: -77.1109,
  description: "A global environmental nonprofit working to protect ecologically important lands and waters for nature and people.",
  category: "environment"
)

Foundation.create(
  name: "American Heart Association",
  address: "7272 Greenville Avenue",
  city: "Dallas",
  state: "TX",
  zipcode: "75231",
  latitude: 32.9233,
  longitude: -96.7696,
  description: "A nonprofit organization that fosters appropriate cardiac care in an effort to reduce disability and deaths caused by cardiovascular disease and stroke.",
  category: "health"
)

Foundation.create(
  name: "Covenant House",
  address: "461 8th Ave",
  city: "New York",
  state: "NY",
  zipcode: "10001",
  latitude: 40.7515,
  longitude: -73.9942,
  description: "A nonprofit organization providing housing and support services to homeless and at-risk youth.",
  category: "homelessness"
)

Foundation.create(
  name: "Smithsonian Institution",
  address: "1000 Jefferson Dr SW",
  city: "Washington",
  state: "DC",
  zipcode: "20560",
  latitude: 38.8887,
  longitude: -77.0269,
  description: "A group of museums and research centers dedicated to the preservation and dissemination of knowledge.",
  category: "arts_and_culture"
)

Foundation.create(
  name: "Rainforest Foundation Fund",
  address: "57 Little West 12th St",
  city: "New York",
  state: "NY",
  zipcode: "10014",
  latitude: 40.7407,
  longitude: -74.0065,
  description: "An organization working to protect and support indigenous peoples and their rainforests.",
  category: "environment"
)

Foundation.create(
  name: "Boys & Girls Clubs of America",
  address: "1275 Peachtree St NE",
  city: "Atlanta",
  state: "GA",
  zipcode: "30309",
  latitude: 33.7927,
  longitude: -84.3838,
  description: "A national organization providing after-school programs for young people.",
  category: "youth_development"
)

Foundation.create(
  name: "American Civil Liberties Union",
  address: "125 Broad St",
  city: "New York",
  state: "NY",
  zipcode: "10004",
  latitude: 40.7044,
  longitude: -74.0121,
  description: "A nonprofit organization dedicated to defending and preserving individual rights and liberties.",
  category: "human_rights"
)

Foundation.create(
  name: "American Diabetes Association",
  address: "2451 Crystal Dr",
  city: "Arlington",
  state: "VA",
  zipcode: "22202",
  latitude: 38.8572,
  longitude: -77.0489,
  description: "A nonprofit organization that aims to prevent and cure diabetes and improve the lives of all people affected by diabetes.",
  category: "health"
)

Foundation.create(
  name: "Girls Who Code",
  address: "85 Broad St",
  city: "New York",
  state: "NY",
  zipcode: "10004",
  latitude: 40.7054,
  longitude: -74.0118,
  description: "An organization working to close the gender gap in technology and engineering fields by empowering young women with coding skills.",
  category: "education"
)

Foundation.create(
  name: "National Urban League",
  address: "120 Wall St",
  city: "New York",
  state: "NY",
  zipcode: "10005",
  latitude: 40.7057,
  longitude: -74.0077,
  description: "A nonprofit organization that advocates for economic empowerment, equality, and social justice for African Americans and underserved communities.",
  category: "social_justice"
)

Foundation.create(
  name: "American Refugee Committee",
  address: "615 1st Ave NE",
  city: "Minneapolis",
  state: "MN",
  zipcode: "55413",
  latitude: 44.9925,
  longitude: -93.2523,
  description: "An international humanitarian organization that works to help refugees and displaced people rebuild their lives.",
  category: "humanitarian"
)

Foundation.create(
  name: "Teach For America",
  address: "25 Broadway",
  city: "New York",
  state: "NY",
  zipcode: "10004",
  latitude: 40.7055,
  longitude: -74.0147,
  description: "A nonprofit organization that recruits and trains college graduates to teach in low-income communities across the United States.",
  category: "education"
)

Foundation.create(
  name: "American Lung Association",
  address: "55 W Wacker Dr",
  city: "Chicago",
  state: "IL",
  zipcode: "60601",
  latitude: 41.8867,
  longitude: -87.6296,
  description: "A voluntary health organization that works to save lives by improving lung health and preventing lung disease.",
  category: "health"
)

Foundation.create(
  name: "National MS Society",
  address: "900 S Broadway",
  city: "Denver",
  state: "CO",
  zipcode: "80209",
  latitude: 39.7023,
  longitude: -104.9871,
  description: "A nonprofit organization dedicated to ending multiple sclerosis and improving the lives of those affected by the disease.",
  category: "health"
)

Foundation.create(
  name: "National Council of La Raza",
  address: "1126 16th St NW",
  city: "Washington",
  state: "DC",
  zipcode: "20036",
  latitude: 38.9056,
  longitude: -77.0369,
  description: "The largest national Hispanic civil rights and advocacy organization in the United States.",
  category: "advocacy"
)
  end

def down
  Foundation.where(name: [
    "Global Education Foundation", 
    "Animal Rescue Foundation", 
    "United Way Worldwide", 
    "Feeding America", 
    "Task Force for Global Health", 
    "YMCA of the USA", 
    "American Cancer Society",
    "The Nature Conservancy",
    "Habitat for Humanity International",
    "National Park Foundation",
    "Big Brothers Big Sisters of America",
    "Doctors Without Borders",
    "Habitat for Humanity",
    "American Red Cross",
    "International Rescue Committee",
    "Make-A-Wish Foundation",
    "Human Rights Foundation",
    "American Heart Association",
    "Covenant House",
    "Smithsonian Institution",
    "Rainforest Foundation Fund",
    "Boys & Girls Clubs of America",
    "American Civil Liberties Union",
    "American Diabetes Association",
    "Girls Who Code",
    "National Urban League",
    "American Refugee Committee",
    "Teach For America",
    "American Lung Association",
    "National MS Society",
    "National Council of La Raza",
  ]).destroy_all
end
end
