# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [{
  name: "Sheldon",
  email: "Sheldon@WynShop.co",
  password: "Bazinga",
  is_admin: true
},
{
  name: "Penny",
  email: "Penny@WynCode.co",
  password: "WynCode",
  is_admin: false
}]

users.each do |user|
  User.find_or_create_by(name: user[:name]) do |u|
    p.email = user[:email]
    p.password = user[:password]
    p.is_admin = user[:is_admin]
    p.save!
  end
end

p "Created #{User.count} users."

products = [{
  name: "12-inch MacBook 1.3GHz Processor 512GB Storage",
  image: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/macbook/select/macbook-select-space-gray-201706?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1505775431709",
  description: "1.3GHz dual-core 7th-generation Intel Core i5 processor, Turbo Boost up to 3.2GHz, 8GB 1866MHz LPDDR3 memory, 512GB SSD storage1, Intel HD Graphics 615, Keyboard with second-generation butterfly mechanism",
  price_in_cents: "159000"
},
{
  name: "13-inch MacBook Pro Touch Bar and Touch ID 3.1GHz Processor 512GB Storage",
  image: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/bp/mbp13touch/gray/mbp13touch-gray-select-201610?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1495842447612",
  description: "3.1GHz dual-core 7th-generation Intel Core i5 processor, Turbo Boost up to 3.5GHz, 8GB 2133MHz LPDDR3 memory, 512GB SSD storage1, Intel Iris Plus Graphics 650, Four Thunderbolt 3 ports, Touch Bar and Touch ID",
  price_in_cents: "199900"
},
{
  name: "15-inch MacBook Pro Touch Bar and Touch ID 2.9GHz Processor 512GB Storage",
  image: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/bp/mbp15touch/gray/mbp15touch-gray-select-201610?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1496611018929",
  description: "2.9GHz quad-core 7th-generation Intel Core i7 processor, Turbo Boost up to 3.9GHz, 16GB 2133MHz LPDDR3 memory, 512GB SSD storage1, Radeon Pro 560 with 4GB memory, Four Thunderbolt 3 ports, Touch Bar and Touch ID",
  price_in_cents: "279900"
},
{
  name: "JanSport Digibreak Laptop Backpack",
  image: "https://images.jansport.com/is/image/JanSport/T50F_31Q_front?$236x204$",
  description: "The classic SuperBreak silhouette meets digital functionality with the JanSport Digibreak backpack. Features include 15 inch laptop sleeve, soft tricot lined tablet pocket and a dedicated phone pocket.",
  price_in_cents: "4200"
},
{
  name: "JanSport Wynwood Backpack",
  image: "https://images.jansport.com/is/image/JanSport/JS0A382D_3F6_front?$236x204$",
  description: "Integrated MoonLift Light suspension system makes carrying your gear a lot more comfortable while the Wynwood's slick style make you look good doing it. Features premium materials and bonded leather trim, 15 inch laptop sleeve and loft pocket for accessories.",
  price_in_cents: "7000"
},
{
  name: "Herschel Lawson Backpack",
  image: "https://herschel.com/content/dam/herschel/products/10179/10179-01352-OS_02.jpg.sthumbnails.680.680.jpg",
  description: "Black and white striped fabric liner, 15 inch laptop sleeve, Front storage pocket with Prusik cord key loop, Exposed gunmetal zippers and hardware, Custom stitch details and striped woven tab, Tonal classic woven label",
  price_in_cents: "8999"
},
{
  name: "H&M Hooded Sweatshirt Jacket",
  image: "http://lp.hm.com/hmprod?set=key[source],value[/model/2016/D00%200422106%20016%2074%200151.jpg]&set=key[rotate],value[]&set=key[width],value[]&set=key[height],value[]&set=key[x],value[]&set=key[y],value[]&set=key[type],value[STILL_LIFE_FRONT]&set=key[hmver],value[1]&call=url[file:/product/large]",
  description: "Sweatshirt jacket with a lined drawstring hood. Zip and pockets at front. Brushed inside.",
  price_in_cents: "1999"
},
{
  name: "L.L.Bean Double L Mixed-Cable Sweater, Zip-Front Hoodie",
  image: "https://cdn-img-3.wanelo.com/p/b30/5ec/206/917d5b87069b825ed8a984e/x354-q80.jpg",
  description: "Premium cotton sweater in a comfortable hooded style with a fresh mix of cables and stitchwork.",
  price_in_cents: "5995"
},
{
  name: "lyst Outerknown Men's Natural Outpost Pullover",
  image: "https://cdnd.lystit.com/520/650/n/photos/outerknown/2042-Natural-78b62223-.jpeg",
  description: "Inspired by Japanese textiles, this Outpost sweater from Outerknown will give your look a relaxed finish. Crafted from a beige alpaca and cotton-blend, this long-sleeve silhouette is striped with blue and features a drawstring pull at the hood.",
  price_in_cents: "29500"
},
{
  name: "FULTON Huntsman walking umbrella",
  image: "http://images.selfridges.com/is/image//selfridges/408-76003396-G813_BLACK_M?$PDP_M_ALL$",
  description: "Classically inspired walking umbrella with double strength frame",
  price_in_cents: "2550"
},
{
  name: "ShedRain Bubble Umbrella with Gray Trim - Clear",
  image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSzNZ31YI5d_pxPZeEIQIgkOpHxHk0xDr7bAnJiFrPq_37oxwla3bb2UJY2DaNHDZq0f8_VU01a&usqp=CAY",
  description: "Everything looks brighter from inside The Bubble...Cirra by ShedRain's clear winner. You can see out, but rain can't get in! Nothing protects you and your hair from wind and rain better than The Bubble.",
  price_in_cents: "1900"
},
{
  name: "Atom 39inch Drop Deck Longboard - Blue Triangles",
  image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSySTv_T6XRNczTriNeycYnMBogxdQlKVq19jDNrRDx1sFdR-VOVEc5JEo7fOXkOT_fu3K1PYMi&usqp=CAE",
  description: "Aggressive concave and foot pockets lock you in when you need it while the low deck height increases stability and makes pushing a breeze.",
  price_in_cents: "8299"
},
{
  name: "Quest Super Cruiser 44 Longboard Skateboard - Black/Wood",
  image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQYggGFMQd1l94b1xdbA_kooa2QnZI2yfCAmhS_Y6bWpSnf33NE0a0ujh0L5rCHQZ01TxTju5va&usqp=CAE",
  description: "7 Ply Super-Flex Bamboo and Hardwood Maple Deck, Durable 70x51mm 80A PU Wheels, Rugged & Lighweight 7 inch Aluminum Trucks, High Performance Reverse Kingpin Truck Configuration, Precision ABEC 7 Bearings and Hollow 4mm Risers, Wheel Wells to Prevent Wheel Bite on Extreme Turns",
  price_in_cents: "6599"
},
{
  name: "DiscBrake Shimano Road Bicycles Gravity Avenue D",
  image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS3SoGMxcZLwARR_8OVvAu9aCLD7CFyFP91AZIBg9LnNOyuQS_D4HoH-lmmMfSbgCeXeN-lIiPK&usqp=CAE",
  description: "The Gravity Avenue D is just the bike for the rider wanting powerful all-weather disc brakes, the performance of an aluminum frame, wide gearing, comfortable riding position and dealing with a budget. The Avenue frame is precision welded from specially shaped lightweight and strong aluminum tubing. The tubing is Gravity's own special R-Series tube-set. Look at the engineered, hydroformed top tube and bi-oval downtube. This is designed for a responsive performance while maintaining a comfortable ride quality. The frame is a semi-compact geometry which allows for a bit more comfortable and upright position yet is still aero-enough for some serious riding.",
  price_in_cents: "39995"
},
{
  name: "Aluminum Road Bicycles Windsor Wellington 2.0",
  image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSrFY-GZLtrpYGV2rMAvB6MSOAl54Mr8UIYSxsrrcGkzIgaYTo2mKcxDAK6-vBq-qg5hUcKArGs&usqp=CAE",
  description: "This is an affordable entry level 21 speed road bike and a best seller. It features a lightweight 6061 aluminum frame with an integrated headset and a Shimano drivetrain with A050 handlebar mounted shifters",
  price_in_cents: "29995"
},
{
  name: "Office Depot Brand Wirebound Notebook, Business, 7 1/4in. x 9 1/2in., 160 Pages (80 Sheets), Black",
  image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTBpeMU1mx9iJaNIXJI52fEHIMJ5nmP7LbC2I8bU1X0cDpA4PY&usqp=CAE",
  description: "One subject notebooks are wirebound to keep pages handy. Great for note-taking, writing reminders and more! 22-lb premium white paper features ruled lines so your writing remains neat and organized. 0.7-pt. chipboard backing offers a sturdy surface for writing when you're away from a desk or other flat surface.",
  price_in_cents: "699"
},
{
  name: "JAM Paper Black Hardcover Notebook with Elastic Closure",
  image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSUwXOoV4QjGQKC9n0oodfdw2-ydRO_pRDc1iqurCIPcYM5AnPG0irYQ5x7228AI_26e6Lnh9O4&usqp=CAY",
  description: "JAM Paper® Medium Black Hardcover Notebook with Elastic Band measures 5 x 7 inches in size and features a durable, hard plastic black cover! This journal is sold individually and contains 100 lined, high quality pages! To keep the journal closed while not in use, there is a black elastic band attached to the back cover on either end that wraps around the front cover. To help you keep track of your place among the pages, there is a strand of black, glossy ribbon attached to the inside top of the notebook's spine that functions as an elegant bookmark. Use this journal in your office, in your classrooms, or at home!",
  price_in_cents: "1099"
},
{
  name: "Sharpie Twin-Tip Permanent Markers, Fine Point and Ultra Fine Point, Black, 12/pk",
  image: "https://s7d1.scene7.com/is/image/officedepot/2202337_p?id=aouqC1&fmt=jpg&fit=constrain,1&wid=450&hei=386&op_sharpen=1&qlt=95",
  description: "Features a fine point for thin, detailed lines on one end and an ultra fine point for even more precise writing on the other end",
  price_in_cents: "299"
},
{
  name: "Pilot G2 Retractable Pens, Ultra Fine Point, Black - 5 pack",
  image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQzMlYxlQ1s-Q1FEAWwyFJHTy59wUWwtj-AatJlFxXWugXzZaWNNGg9elvjBROe95USTJ9Wc7Dh&usqp=CAE",
  description: "Black gel ink proven to last longer than the average of competitive gel ink brands",
  price_in_cents: "799"
},
{
  name: "Camel Cigarettes, Menthol, Regular, Crush - 20 cigarettes",
  image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTzfe6U5YjIXBRRwMplhwG3bY_IjLDCejiXR6Aehi8AIgD6nrf4n9M9ksc8nTrv01upD3q-g9g&usqp=CAE",
  description: "Bad for your health.",
  price_in_cents: "699"
},
{
  name: "Innokin Oceanus Scion Starter Kit - Black",
  image: "https://cdn3.volusion.com/pnhwe.bmygz/v/vspfiles/photos/INK-OCE20-2.jpg?1499253191",
  description: "Not as bad for your health.",
  price_in_cents: "6999"
},
{
  name: "Waylon Jennings Flying W Embroidery Beanies Knitted Hats",
  image: "https://i.ebayimg.com/00/s/MTAwMVg5OTI=/z/F4EAAOSwMmlZ31oi/$_58.JPG",
  description: "Confortable. One size fits all.",
  price_in_cents: "899"
},
{
  name: "Washington Nationals New Era Red Game Authentic Collection On-Field 59FIFTY Fitted Hat",
  image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSZsXOcL09w91DnPePVRIrofMsNZY6h5KdNBvCUaMfP_tPQJAZY48Z3GnSEnirjyZoAQeVtu-k&usqp=CAY",
  description: "Share your enthusiasm with everyone when you put on this W Authentic Collection Low Profile 59FIFTY fitted hat from New Era. The embroidered graphics will help cement your die-hard Wyncode fan status.",
  price_in_cents: "3500"
},
{
  name: "Stella Artois Lager, 12 Pk 22 Fl. Oz. Bottles",
  image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSgLMecXbfFK9K1ATBVS-049QYBkGdphTJA-_91iDmoPR3oUBVE1l_n2ncXTht7H1kciRSDoNBt&usqp=CAE",
  description: "Stella Artois is one of the world's best-selling beers and is enjoyed in more than 80 countries. Its full, characteristic flavour and high quality is assured through a superior brewing process and by using the finest ingredients available.",
  price_in_cents: "525"
},
{
  name: "Modelo Especial Beer - 12 pack, 12 fl oz cans",
  image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQjfmt2DI6Pi8xxNZTVSLJoFx0jK69gNZ48ehbJR4bHKb7zFNjdUlJD2ooPxsDxeIhYmRTiXrM&usqp=CAE",
  description: "Well-balanced taste, rich and full flavored pilsner-style lager, No. 3 selling import beer in the U.S., Imported from Mexico",
  price_in_cents: "1549"
},
{
  name: "Bud Light Beer - 6 pack, 12 fl oz cans",
  image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT5ITUapClmdT0jWUrUIYsmV2b-6ngXqFobzsh5G2ckL2YH2H2Q1IKT7e39W942vXjSbyVOqK8&usqp=CAE",
  description: "World's best-selling beer. Clean, crisp, smooth taste. Smooth and refreshing",
  price_in_cents: "460"
},
{
  name: "13-inch MacBook Air 1.8GHz Processor 256GB Storage",
  image: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/macbook/air/macbook-air-select-201706?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1505774671682",
  description: "1.8GHz dual-core Intel Core i5 processor, Turbo Boost up to 2.9GHz, 8GB 1600MHz LPDDR3 memory, 256GB SSD storage1, Intel HD Graphics 6000",
  price_in_cents: "119900"
},
{
  name: "Herschel Classic Backpack | Mid-Volume",
  image: "https://herschel.com/content/dam/herschel/products/10135/10135-01160-OS_02.jpg.sthumbnails.680.680.jpg",
  description: "Signature striped fabric liner, Front storage pocket, Prusik cord zipper pulls, Classic woven label",
  price_in_cents: "4499"
},
{
  name: "H&M Oversized Hooded Sweatshirt",
  image: "http://lp.hm.com/hmprod?set=key[source],value[/model/2017/F00%200484108%20008%2066%201952.jpg]&set=key[rotate],value[]&set=key[width],value[]&set=key[height],value[]&set=key[x],value[]&set=key[y],value[]&set=key[type],value[STILL_LIFE_FRONT]&set=key[hmver],value[1]&call=url[file:/product/large]",
  description: "Oversized, wide-cut sweatshirt fabric with a lined hood and ribbed hem. Dropped shoulders, kangaroo pocket at front, and long, wide sleeves with ribbing at cuffs.",
  price_in_cents: "2999"
}]

products.each do |product|
  Product.find_or_create_by(name: product[:name]) do |p|
    p.image = product[:image]
    p.description = product[:description]
    p.price_in_cents = product[:price_in_cents]
    p.save!
  end
end

p "Created #{Product.count} products."

Review.destroy_all

Review.create!([{
  comment: "I can't code without it. -Evan Spiegel",
  product_id: 465
},
{
  comment: "So stylish! -Elon Musk",
  product_id: 466
},
{
  comment: "So comfortable and keeps me warm. -Mark Zuckerberg",
  product_id: 467
}])

p "Created #{Review.count} reviews."
