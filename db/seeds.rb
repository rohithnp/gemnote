# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Product.create(
  sku: Digest::MD5.hexdigest("Kinto Carat Coffee Dripper and Pot"),
  name: "Kinto Carat Coffee Dripper and Pot",
  price: 6400,
  brand: "Kinto",
  currency: "USD",
  images: [
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/items/default_images/000/000/610/full_size/kinto_carat_coffee_dripper_and_pot.jpg?1510489804"
    }
  ],
  information:{
    dimensions: {
      height: 4.4,
      width: 8,
      length: 5.5,
      unit: "inches"
    },
    volume: {
      value: 24.3,
      unit: "ounces"
    },
    features:[
      "Superior stainless-steel and heat-resistant glass glass",
      "Set comes with a stainless-steel filter that allows for greater extraction of coffee oils than a paper filter, resulting in a richer and smoother coffee",
      "Pot, dripper, lid: microwave and dishwasher safe",
      "Filter, holder, silicone ring: dishwasher safe"
    ]
  },
  tags: ["Drinkware"],
  unit: "unit",
  quantity: 100,
  location: Digest::MD5.hexdigest("some_location_id")
)

Product.create(
  sku: Digest::MD5.hexdigest("Patagonia Hybrid Jacket"),
  name: "Patagonia Hybrid Jacket",
  brand: "Patagonia",
  price: 18900,
  currency: "USD",
  model_type: "color",
  model_control: "thumbnail",
  information:{

    features:[
      "93% polyester/7% spandex stretch woven with fleece grid backer",
      "3-layer Polartec Windbloc stretch-woven polyester soft-shell with a DWR (durable water repellent) finish",
      "Stretchy, breathable, double-weave soft-shell fabric on side panels, underarms and cuffs",
      "High, harness- and pack-compatible handwarmer pockets and one interior chest pocket have brushed tricot lining"
    ]
  },
  tags: ["Women's", "Apparel"],
  unit: "unit"
)

Product.create(
  sku: Digest::MD5.hexdigest("Patagrona Hyrbrid Jacket - Black"),
  name: "Patagona Hybrid Jacket - Black",
  price: 18900,
  currency: "USD",
  model: "black",
  information: {
    color: "#000000"
  },
  images: [
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389",
    }
  ],
  parent: Digest::MD5.hexdigest("Patagonia Hybrid Jacket"),
  quantity: 2,
  location: Digest::MD5.hexdigest("some_location_id"),
)

Product.create(
  sku: Digest::MD5.hexdigest("Patagrona Hyrbrid Jacket - White"),
  name: "Patagona Hybrid Jacket - White",
  price: 18900,
  currency: "USD",
  model: "white",
  information: {
    color: "#FFFFFF"
  },
  images: [
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389",
    }
  ],
  parent: Digest::MD5.hexdigest("Patagonia Hybrid Jacket"),
  quantity: 35,
  location: Digest::MD5.hexdigest("some_location_id"),
)

Product.create(
  sku: Digest::MD5.hexdigest("Dick Taylor Bars"),
  name: "Dick Taylor Bars",
  brand: "Dick Taylor",
  price: 850,
  currency: "USD",
  model_type: "flavor",
  model_control: "dropdown",
  information:{
    weight: {
      value: 2,
      unit: "ounces"
    },
    features:[
      "Using the finest cacao, and a modern take on traditional European technique, we are able to fully realize the potential of the beans we source.",
      "All of our chocolate is carefully crafted from the bean in our small factory in Northern California.",
    ]
  },
  tags: ["Food/Beverage"],
  unit: "unit"
)

Product.create(
  sku: Digest::MD5.hexdigest("Dick Taylor Bars - Maple Coconut"),
  name: "Dick Taylor Bars - Maple Coconut",
  model: "maple coconut",
  images:[
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/714/full_size/dick_taylor_bars_with_inclusions___maple_coconut.jpg?1510664221"
    }
  ],
  parent: Digest::MD5.hexdigest("Dick Taylor Bars"),
  quantity: 1,
  location: Digest::MD5.hexdigest("some_location_id"),
)

Product.create(
  sku: Digest::MD5.hexdigest("Dick Taylor Bars - Brown butter with nibs + sea salt"),
  name: "Dick Taylor Bars - Brown butter with nibs + sea salt",
  model: "brown butter with nubs + sea salt",
  images:[
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/717/full_size/dick_taylor_bars_with_inclusions___brown_butter_with_nibs___sea_salt.jpg?1510664223"
    }
  ],
  parent: Digest::MD5.hexdigest("Dick Taylor Bars"),
  quantity: 1000,
  location: Digest::MD5.hexdigest("some_location_id"),
)

Product.create(
  sku: Digest::MD5.hexdigest("Dick Taylor Bars - Black Fig "),
  name: "Dick Taylor Bars - Black Fig ",
  model: "black fig",
  images:[
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/715/full_size/dick_taylor_bars_with_inclusions___black_fig.jpg?1510664221"
    }
  ],
  parent: Digest::MD5.hexdigest("Dick Taylor Bars"),
  quantity: 123,
  location: Digest::MD5.hexdigest("some_location_id"),
)

Product.create(
  sku: Digest::MD5.hexdigest("Dick Taylor Bars - Fleur De Sel"),
  name: "Dick Taylor Bars - Fleur De Sel",
  model: "fleur de sel",
  images:[
    {
      url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/716/full_size/dick_taylor_bars_with_inclusions___fleur_de_sel.jpg?1510664222"
    }
  ],
  parent: Digest::MD5.hexdigest("Dick Taylor Bars"),
  quantity: 1,
  location: Digest::MD5.hexdigest("some_location_id"),
)
