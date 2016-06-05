entrees = Category.create(
  priority: 1,
  name: "stater",
  displayName: "Les Entrées",
  visibility: "weekday"
)

share = Category.create(
  priority: 1,
  name: "share",
  displayName: "À partager",
  visibility: "weekend"
)

main_course = Category.create(
  priority: 2,
  name: "main_course",
  displayName: "Les Plats",
  visibility: "allweek"
)

bread_cheese = Category.create(
  priority: 3,
  name: "bread_cheese",
  displayName: "Le pain et le fromage",
  visibility: "allweek"
)

desert = Category.create(
  priority: 4,
  name: "desert",
  displayName: "Les desserts",
  visibility: "allweek"
)

merchant = Merchant.create(
name: "Boucherie Sanzot",
img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/merchants/michel.jpg",
)

Product.create(
  title: "Radis de Chine",
  priority: 1,
  category_id: entrees.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/radis.jpg",
  price_cents: 150,
  desc: "Cultivés dans le Val d'Oise.",
  tip: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  expiry: "2 à 3 jours",
  portion: "portion de 300g",
  people: 1
)

Product.create(
  title: "Carottes Multicolores",
  priority: 2,
  category_id: entrees.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/carottes.jpg",
  price_cents:  100,
  desc: "Cultivés dans le Val d'Oise. Agriculture raisonnée",
  tip: "en batonnets ou râpées",
  expiry: "2 à 3 jours",
  portion: "portion de 240g",
  people: 1
)

Product.create(
  title: "Autres Carottes Multicolores",
  priority: 3,
  category_id: entrees.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/carottes.jpg",
  desc: "Cultivés dans le Val d'Oise. Agriculture raisonnée",
  tip: "en batonnets ou râpées",
  expiry: "2 à 3 jours",
  price_cents:  100,
  people: 1,
  portion: "portion de 240g"
)

Product.create(
  title: "Poireaux Bio",
  priority: 4,
  category_id: main_course.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/poireaux.jpg",
  desc: "Cultivés dans le Val d'Oise. Agriculture raisonnée",
  tip: "fondue de poireaux ou vinaigrette",
  expiry: "2 à 3 jours",
  price_cents:  180,
  people: 1,
  portion: "portion de 450g"
)

Product.create(
  title: "Coquilles Saint Jacques",
  priority: 5,
  category_id: main_course.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/saint_jacques.jpg",
  desc: "Pêchées dans les Iles Chausey(50)",
  tip: "faites les revenir dans un beurre noisette",
  expiry: "2 à 3 jours",
  price_cents:  720,
  people: 1,
  portion: "lot de 2 pièces"
)

Product.create(
  title: "Steack Hache",
  priority: 6,
  category_id: main_course.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/steak.jpg",
  desc: "Jeune vache Charolaise de 3 ans élevée dans le 71. Viande 1 mois de maturation. Agriculture vertueuse.",
  tip: "à la poêle, en boulette, en bolognaise...",
  expiry: "2 à 3 jours",
  price_cents:  280,
  people: 1,
  portion: "portion de 130g"
)

Product.create(
  title: "Chevre Cendre",
  priority: 7,
  category_id: bread_cheese.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/chevre_cendre.jpg",
  desc: "Lait de chèvre, Charentes-Poitou",
  tip: "",
  expiry: "2 à 3 jours",
  price_cents:  400,
  people: 2,
  portion: "A la pièce"
)

Product.create(
  title: "Comté 24 mois",
  priority: 8,
  category_id: bread_cheese.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/comte.jpg",
  desc: "Origine Franche Compté, lait de vache cru, pâte cuite.",
  tip: "à sortir du frigo 20 min avant dégustation",
  expiry: "2 à 3 jours",
  price_cents:  430,
  people: 4,
  portion: "A la pièce (200g)"
)

Product.create(
  title: "Pain du Nil Bio",
  priority: 9,
  category_id: bread_cheese.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/pain_nil.jpg",
  desc: "Pain avec des farines françaises biologiques issues de semences paysannes et adaptées au terroir de culture. Elles proviennent de moulins artisanaux qui utilisent des meules de pierre Astrié afin de ne pas altérer le grain et ses qualités nutritives.",
  tip: "",
  expiry: "2 à 3 jours",
  price_cents:  250,
  people: 3,
  portion: "A la pièce (1/2 miche) env. 230g"
)

Product.create(
  title: "Baguette Bio",
  priority: 10,
  category_id: bread_cheese.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/baguette.jpg",
  desc: "Pain avec des farines françaises biologiques issues de semences paysannes et adaptées au terroir de culture. Elles proviennent de moulins artisanaux qui utilisent des meules de pierre Astrié afin de ne pas altérer le grain et ses qualités nutritives.",
  tip: "",
  price_cents:  120,
  expiry: "2 à 3 jours",
  people: 3,
  portion: "A la pièce"
)

Product.create(
  title: "Pommes Bio Jubile",
  priority: 11,
  category_id: desert.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/pommes.jpg",
  desc: "Bio, cultivées en Seine et Marne (77)",
  tip: "",
  price_cents:  200,
  expiry: "2 à 3 jours",
  people: 4,
  portion: "4 pommes, portion de 650g"
)

Product.create(
  title: "Fromage Blanc Frais",
  priority: 12,
  category_id: bread_cheese.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/fromage_blanc.jpg",
  desc: "Fromage de lait battu, battu, 40% de M.G.",
  tip: "",
  price_cents:  180,
  expiry: "2 à 3 jours",
  people: 1,
  portion: "portion de 250g"
)

Product.create(
  title: "Barre Pralinée Noire",
  priority: 13,
  category_id: bread_cheese.id,
  merchant_id: merchant.id,
  img: "https://s3-eu-west-1.amazonaws.com/jaws-dev/products/chocolat.jpg",
  desc: "Délicieuse barre de chocolat noir au praliné fondant et croustillant.",
  tip: "",
  price_cents:  500,
  expiry: "2 à 3 jours",
  people: 1,
  portion: "A la pièce"
)
