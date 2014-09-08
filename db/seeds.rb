# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  { 
    email: "jillian@example.com",
    fname: "Jillian",
    lname: "Jansen",
    dog_name: "Mosby",
    bio: "Hi, I’m Mosby and this is my mom Jillian. She’s Italian and she’s a great cook. I love it when she makes chicken picatta or lasagne bolognese and forgets to clear the table. I usually never have to eat dry food out of a bag. I am a happy dog.",
    password: "password",
    password_confirmation: "password",
    profile_pic: File.open("https://photos-6.dropbox.com/t/0/AAClj1NeyuW-3ezvLtvyM2blqe2So6WfVqWanKN_Fk5uog/12/25441638/jpeg/32x32/3/_/1/2/1-140306161319C4.jpg/JSWrMu4zRHb5-7a5nxwDwJF7RWIndSqtzbEzHtc52Is?size=1024x768")
  } #,
  # { 
  #   email: "laurie@example.com",
  #   fname: "Laurie",
  #   lname: "Landen",
  #   dog_name: "Theodore",
  #   bio: "Hello, I’m Theodore and this is my mom Laurie. We live in Chicago and love to go on walks when the leaves are changing. We also like flag football, wine and secretly can’t get enough of those home makeover shows.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/3af4aa8a8145ad66449b7e5b12acf9b2.jpg")
  # },
  # { 
  #   email: "taylor@example.com",
  #   fname: "Taylor",
  #   lname: "Thompson",
  #   dog_name: "Franklin",
  #   bio: "Hi, I’m Franklin and this is my dad, Taylor. He travels a lot, so when he’s home we love to run on the beach, go hiking and watch football. Looking to meet other nice (non crazy) dog friends, to join in on all our fun!",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/3bf65052931d11e2a4fb22000a1f97ec_7.jpg")
  # },
  # { 
  #   email: "clara@example.com",
  #   fname: "Clara",
  #   lname: "Claymore",
  #   dog_name: "Muffin",
  #   bio: "Hi, I’m Muffin, and this is my mom Clara. As you can see from the photo, Clara is a very happy human, and it is my serious and solemn duty to protect her always. She thinks I need to make some new dog friends so I will lighten up. We go to the beach a lot. Hope to see you there. (She made me say that last part.)",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/8-Julia-Stegner-Benny-Horne-instagram-dogs-perros.jpg")
  # },
  # { 
  #   email: "perdita@example.com",
  #   fname: "Perdita",
  #   lname: "Paltrow",
  #   dog_name: "Pretty",
  #   bio: "Hi, I am Pretty and this is my mom Perdita. We live in Bel Air, and like to shop, get our nails done, and do great charity work from our home office, which overlooks our infinity pool.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/83a21a6c7ac111e3960112f844e5466b_8.jpg")
  # },
  # { 
  #   email: "paris@example.com",
  #   fname: "Paris",
  #   lname: "Chilton",
  #   dog_name: "Posey, Rocky",
  #   bio: "Hi, I’m Posey (and I’m Rocky!) and we love our mom. She gives us so much love, and so many cute outfits. We love to play in the backyard while she sunbathes and we enjoy brunching on the weekends. The Ivy is our favorite. Hope to see you there soon!",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/130fde0caaff11e2952122000a1fbf2e_7.jpg")
  # },
  # { 
  #   email: "lena@example.com",
  #   fname: "Lena",
  #   lname: "Stunham",
  #   dog_name: "Hunter",
  #   bio: "Hi, I’m Hunter and his is my human Lena. We enjoy marathons of That 70’s show, and intellectual conversations about how feminism is represented in todays artistic expression. Also, I like milk bones.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/980x.jpg")
  # },
  # { 
  #   email: "aaron@example.com",
  #   fname: "Aaron",
  #   lname: "Arnold",
  #   dog_name: "Magoo",
  #   bio: "Hi, I’m Magoo, and his is my dad Aaron. Aaron is a firefighter and so I worry about him a lot when he goes out in the field. I love hanging at the fire house though, and am great at making new friends. When we’re not at work, you can find us cooking dinner in our Venice apartment or jogging on the beach.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/10375758_669194146483973_537718263_n.jpg")
  # },
  # { 
  #   email: "fiona@example.com",
  #   fname: "Fiona",
  #   lname: "Farkle",
  #   dog_name: "Pepper",
  #   bio: "My name is Pepper and this is my mom Fiona. We travel to NYC and LA constantly and I love having two homes. We enjoy reading books, knitting and swimming. We are currently residing primarily in Los Angeles.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Alessandra-Ambrosio-cuddled-her-dog-check-out-those-tiny.jpg")
  # },
  # { 
  #   email: "tracy@example.com",
  #   fname: "Tracy",
  #   lname: "Tarkington",
  #   dog_name: "Garland",
  #   bio: "Hey there, I’m Garland, and this is my mom Tracy. My mom is so great, but I feel like she needs to get out in the world more and she is too scared to join Tinder. So, I’m joining this to make new dog friends that hopefully have kind, charming, funny, male dog owners. Tracy likes to cook, do yoga and loves most shows on HBO. I love eating her leftovers, and cuddling while she watches those weird shows.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Amanda-Seyfried-her-dog-Finn.jpg")
  # },
  # { 
  #   email: "lisa@example.com",
  #   fname: "Lisa",
  #   lname: "Lawrence",
  #   dog_name: "Scooter",
  #   bio: "Hello, I’m Scooter and this is my mom Lisa. We love to hike, walk around the neighborhood at dusk, and go on road trip adventures. My favorite was to Big Bear where we did some impromptu skiing. Life is short! You know, YOLO, and all that…",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Amanda-Seyfried-her-dog-have-similar-laughing-faces.jpg")
  # },
  # { 
  #   email: "allison@example.com",
  #   fname: "Allison",
  #   lname: "Ambrose",
  #   dog_name: "Ferguson",
  #   bio: "Hi, I’m Ferguson but you can call me Fergie. This is my mom Allison. We live in Miami and love to hang out by the beach, do yoga and take Sunday afternoon naps. Excited to make some new friends!",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/anja-dog.jpg")
  # },
  # { 
  #   email: "vera@example.com",
  #   fname: "Vera",
  #   lname: "Vicente",
  #   dog_name: "Pixie",
  #   bio: "Hi! I’m Pixie and this is my mom Vera. Vera and I are great at the NYT crossword, we enjoy slam poetry, and while Vera works on her dissertation for her PhD, I like to keep her company by sleeping at her feet. (I’m pretty great.)",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/article-2605476-1D21E0ED00000578-630_634x579.jpg")
  # },
  # { 
  #   email: "Courtney@example.com",
  #   fname: "Courtney",
  #   lname: "Clabberstone",
  #   dog_name: "Tootsie",
  #   bio: "Hi, I’m Tootsie and this is my mom Courtney. We love to cuddle and watch old black and white movies. Well, she likes the black and white movies. I’d prefer to watch some Disney Pixar flicks. Those are legit awesome. When we’re not watching movies, you can find us brunching about town, taking walks and hanging out with our friends.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/ashley_tisdale_instagram_hund.jpg")
  # },
  # { 
  #   email: "bella@example.com",
  #   fname: "Bella",
  #   lname: "Brantwell",
  #   dog_name: "Margie",
  #   bio: "Hi! I’m Margie and this is my mom Bella. We love to hang out together- she comes with me wherever I go. Usually you can find us drinking artisan coffee and perusing instagram, designing jewelry for our Etsy page, or meditating in our zen garden.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/bella-thorne-instagram-funny-dog-lead.jpg")
  # },
  # { 
  #   email: "hector@example.com",
  #   fname: "Hector",
  #   lname: "Hartwell",
  #   dog_name: "Elonzo",
  #   bio: "Hi I’m Elonzo and this is my dad Hector. We live in San Clemente and LOVE the beach. Practically live there. We love to play frisbie, surf, and end the night with good friends and a big bonfire.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/blake-michael-mick-dog-with-a-blog-oct-7-2013.jpg")
  # },
  # { 
  #   email: "steve@example.com",
  #   fname: "Steve",
  #   lname: "Stegner",
  #   dog_name: "Frank",
  #   bio: "Hi. My name is Frank. This is my human companion, Steve. I’ve done my best to create a good life for Steve, but I think it’s time he finds another human to love as well. Hoping to meet some nice dogs who have attractive, kind, single female owners. (He’s too shy for that Tinder thing. Too much of a gentleman.) We love making brunch on Sundays, exploring towns along the coast, and laughing.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/buzz20-01-257.jpg")
  # },
  # { 
  #   email: "liam@example.com",
  #   fname: "Liam",
  #   lname: "Larson",
  #   dog_name: "Charlie",
  #   bio: "Hi! I’m Charlie and this is Liam my best friend in the whole world. Liam is a dancer and takes me everywhere he goes. We travel a lot and I am great at flying and love being carried in a bag. When we’re home in NYC though, we like to make new friends. You can find us at Central Park, reading in the grass, in pilates class or walking to the nearest Ethiopian restaurant for our favorite take out!",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/caf75560-dec9-0131-6cb4-0aa0f90d87b4.jpeg")
  # },
  # { 
  #   email: "regan@example.com",
  #   fname: "Regan",
  #   lname: "Reynolds",
  #   dog_name: "Toby",
  #   bio: "Hellllo, I’m Toby and this is my mom Regan. We are still in school, so Regan wants me to make some friends because she feels bad when she leaves me to go to class. (I don’t mind- it gives me time to sift through the trash can that she forgets to put the lid on!) When Regan isn’t in class, we like to watch movies, see improv shows and cuddle.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Caption-this-cute-sleeping-dog-yorkie.jpg")
  # },
  # { 
  #   email: "josh@example.com",
  #   fname: "Josh",
  #   lname: "Jones",
  #   dog_name: "Pax, Maddox",
  #   bio: "Hi, we’re Pax and Maddox, and our dad Josh is pretty upset that his ex-girlfriend named us after Angelina and Brad’s two sons. But this is all we answer to now, so there’s no going back. Our dad loves us so much, and likes to take us to the park, to the beach and if we’re lucky, makes us homemade ice-cream. (It’s a secret family recipe!)",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/ccc08fa2a72711e3903e1230df506265_8.jpg")
  # },
  # { 
  #   email: "jenny@example.com",
  #   fname: "Jenny",
  #   lname: "Jamner",
  #   dog_name: "Butter",
  #   bio: "Hi, I’m Butter and this is my mom Jenny. Jenny just adopted me from a rescue and I love my new home and my new mom. She thinks I should meet some new friends because I’m so lovable (and so is she!) We like to go to the park, eat sushi and love seeing live music.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Celebrities-Pets-I-April-2014.jpg")
  # },
  # { 
  #   email: "eleanor@example.com",
  #   fname: "Eleanor",
  #   lname: "Ekkelburger",
  #   dog_name: "Paco",
  #   bio: "Hi, I’m Paco, and this is my mom Eleanor. Eleanor and I are best friends and it’s so much fun being her dog. We enjoy home decorating, cooking shows and our greatest dream is to go on an African safari.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/celebrity-pets-zooey-deschanel-dog-instagram-photo-jpg_131839.jpg")
  # },
  # { 
  #   email: "sophie@example.com",
  #   fname: "Sophie",
  #   lname: "Sanders",
  #   dog_name: "Baxter",
  #   bio: "Hi, I’m Baxter and this is my mom Sophie. Sophie and I are super into computer programming, writing code, and designing apps that people didn’t even know they needed, but can’t live without. We’re pretty upset we didn’t come up with Fetch and make millions. But there are always new ideas! We like to brainstorm over a green juice from our local juciery, or while we’re jogging at Runyon. See you there!",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Chrissy-Teigen-shared-cute-snap-her-dog-Puddy.jpg")
  # },
  # { 
  #   email: "julie@example.com",
  #   fname: "Julie",
  #   lname: "Jaxson",
  #   dog_name: "Sasafrass",
  #   bio: "Hi, I’m Sasafrass and this is my mom Julie. Julie and I are from Texas but just moved out to LA to be actors and are excited to make new friends! You can find us at the gym, in our acting class, or sneaking into matinee movies during the week.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/chrissy-teigen.jpg")
  # },
  # { 
  #   email: "ted@example.com",
  #   fname: "Ted",
  #   lname: "Thomas",
  #   dog_name: "Garson",
  #   bio: "Hi, I’m Garson, (pronounced Gar-sawn) and this is my dad Ted. Ted and I have been together forever and we have a great life. We’re super into fantasy football, Shakespeare in the Park, and are in the midst of writing the next great American novel. Also, we love to watch The Vampire Diaries. (I know. We’re embarrassed for ourselves too.)",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/david-gandy-dog-instagram.png")
  # },
  # { 
  #   email: "alvaro@example.com",
  #   fname: "Alvaro",
  #   lname: "Anson",
  #   dog_name: "Underdog",
  #   bio: "Howdy pups! My name is Underdog and my human's name is Alvaro. Alvaro is a renowned Food service manager. Food truck paleo single-origin coffee, dreamcatcher literally gastropub American Apparel mlkshk whatever asymmetrical before they sold out pickled PBR. Schlitz quinoa brunch leggings iPhone four loko plaid Cosby sweater normcore fingerstache, ennui church-key.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/dogsofinstagram.jpg")
  # },
  # { 
  #   email: "Agnes@example.com",
  #   fname: "Agnes",
  #   lname: "Appleton",
  #   dog_name: "Ranger",
  #   bio: "Howdy pups! My name is Ranger and my human's name is Agnes. Agnes is a renowned Radiation therapist.Food truck paleo single-origin coffee, dreamcatcher literally gastropub American Apparel mlkshk whatever asymmetrical before they sold out pickled PBR. Schlitz quinoa brunch leggings iPhone four loko plaid Cosby sweater normcore fingerstache, ennui church-key.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/dt.common.streams.StreamServer.jpeg")
  # },
  # { 
  #   email: "Brenda@example.com",
  #   fname: "Brenda",
  #   lname: "Branson",
  #   dog_name: "Charlotte",
  #   bio: "Howdy pups! My name is Charlotte and my human's name is Brenda. Brenda is a renowned Dyeing machine operator.Tousled Cosby sweater sustainable, flannel Austin readymade mlkshk Shoreditch. Synth Vice photo booth Wes Anderson.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Emmy-Rossum-enjoyed-some-downtime-her-adorable-dog.jpg")
  # },
  # { 
  #   email: "Diana@example.com",
  #   fname: "Diana",
  #   lname: "Doppler",
  #   dog_name: "Munchkin",
  #   bio: "Hi! My name is Munchkin and my human's name is Diana. Diana is a likeable Extruding and forming machine setter.Tousled Cosby sweater sustainable, flannel Austin readymade mlkshk Shoreditch. Synth Vice photo booth Wes Anderson.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/funny-dog-pictures-for-instagram-84.jpg")
  # },
  # { 
  #   email: "Christopher@example.com",
  #   fname: "Christopher",
  #   lname: "Crosby",
  #   dog_name: "Frannie",
  #   bio: "Howdy pups! My name is Frannie and my human's name is Christopher. Christopher is a renowned Management assistant.Food truck paleo single-origin coffee, dreamcatcher literally gastropub American Apparel mlkshk whatever asymmetrical before they sold out pickled PBR. Schlitz quinoa brunch leggings iPhone four loko plaid Cosby sweater normcore fingerstache, ennui church-key.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/ian-harding-kisses-a-dog-named-alfie.jpg")
  # },
  # { 
  #   email: "Anthony@example.com",
  #   fname: "Anthony",
  #   lname: "Ackley",
  #   dog_name: "Buzz",
  #   bio: "Howdy pups! My name is Buzz and my human's name is Anthony. Anthony is a renowned Essayist.Actually tousled Shoreditch trust fund +1 deep v lomo. Ethnic actually 8-bit Bushwick, deep v vinyl occupy cliche synth keytar salvia whatever beard Banksy.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/ian-somerhalder.png")
  # },
  # { 
  #   email: "Cinda@example.com",
  #   fname: "Cinda",
  #   lname: "Ciambrone",
  #   dog_name: "Carrie",
  #   bio: "Howdy pups! My name is Carrie and my human's name is Cinda. Cinda is a renowned Bulldozer operator.Tousled Cosby sweater sustainable, flannel Austin readymade mlkshk Shoreditch. Synth Vice photo booth Wes Anderson.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/img_2365.jpg")
  # },
  # { 
  #   email: "Antonio@example.com",
  #   fname: "Antonio",
  #   lname: "Alvarez",
  #   dog_name: "Brigadier",
  #   bio: "Howdy pups! My name is Brigadier and my human's name is Antonio. Antonio is a renowned Credit checker.Gentrify fingerstache meh deep v, squid brunch quinoa 90's single-origin coffee PBR.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/INSTAGRAM-CHRIS-WITH-DOGS.jpg")
  # },
  # { 
  #   email: "Carrie@example.com",
  #   fname: "Carrie",
  #   lname: "Cantor",
  #   dog_name: "Augustus",
  #   bio: "Howdy pups! My name is Augustus and my human's name is Carrie. Carrie is a renowned Heavy vehicle and mobile equipment service technician.Food truck paleo single-origin coffee, dreamcatcher literally gastropub American Apparel mlkshk whatever asymmetrical before they sold out pickled PBR. Schlitz quinoa brunch leggings iPhone four loko plaid Cosby sweater normcore fingerstache, ennui church-key.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/iPnwaZ2-7z_l.jpg")
  # },
  # { 
  #   email: "Hollie@example.com",
  #   fname: "Hollie",
  #   lname: "Hansen",
  #   dog_name: "Boss",
  #   bio: "Hi! My name is Boss and my human's name is Hollie. Hollie is a likeable Homemaker.Gentrify fingerstache meh deep v, squid brunch quinoa 90's single-origin coffee PBR.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/izabel_620.jpg")
  # },
  # {
  #   email: "Arlene1@example.com",
  #   fname: "Arlene",
  #   lname: "Benz",
  #   dog_name: "Mr Kiss",
  #   bio: "Howdy pups! My name is Mr Kiss and my human's name is Arlene. Arlene is a renowned Recruiter. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Jake-Gyllenhaal-girlfriend-Sports-Illustrated-model-Alyssa-Miller.jpg")
  # },
  # {
  #   email: "Azucena1@example.com",
  #   fname: "Azucena",
  #   lname: "Giese",
  #   dog_name: "Bronson",
  #   bio: "Howdy pups! My name is Bronson and my human's name is Azucena. Azucena is a renowned Aerospace engineering and operations technician. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Jessica-Hart-relaxed-her-dog-her-Paris-hotel-room.jpg")
  # },
  # {
  #   email: "Benjamin1@example.com",
  #   fname: "Benjamin",
  #   lname: "Mattox",
  #   dog_name: "Gold Baby",
  #   bio: "Howdy pups! My name is Gold Baby and my human's name is Benjamin. Benjamin is a renowned Trauma nurse. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/John-Mayer-played-fetch-his-dog-snow.jpg")
  # },
  # {
  #   email: "Carmen1@example.com",
  #   fname: "Carmen",
  #   lname: "Moon",
  #   dog_name: "Ivory Mouser",
  #   bio: "Howdy pups! My name is Ivory Mouser and my human's name is Carmen. Carmen is a renowned Legislator. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Lady-Gaga-french-bulldog-Asia.jpg")
  # },
  # {
  #   email: "Barbara1@example.com",
  #   fname: "Barbara",
  #   lname: "Palmer",
  #   dog_name: "Lassie",
  #   bio: "Howdy pups! My name is Lassie and my human's name is Barbara. Barbara is a renowned Mobile heavy equipment service technician. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/lara-dog.jpg")
  # },
  # {
  #   email: "Clarice1@example.com",
  #   fname: "Clarice",
  #   lname: "Hunter",
  #   dog_name: "Pinky",
  #   bio: "Howdy pups! My name is Pinky and my human's name is Clarice. Clarice is a renowned Street vendor. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/large.jpg")
  # },
  # {
  #   email: "Cristy1@example.com",
  #   fname: "Cristy",
  #   lname: "Cavender",
  #   dog_name: "Porkchop",
  #   bio: "Howdy pups! My name is Porkchop and my human's name is Cristy. Cristy is a renowned Truck driver. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/lena-dunham-dog-2_0.jpg")
  # },
  # {
  #   email: "Cynthia1@example.com",
  #   fname: "Cynthia",
  #   lname: "Soto",
  #   dog_name: "Sir-Barks-Alot",
  #   bio: "Howdy pups! My name is Sir-Barks-Alot and my human's name is Cynthia. Cynthia is a renowned Electrical drafter. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/ley-Olsen-7-Seven-Stylish-Shots-of-Ashley-With-Her-Dogs-Instagram-Dachshund-Wiener-Dog.jpg")
  # },
  # {
  #   email: "Deborah1@example.com",
  #   fname: "Deborah",
  #   lname: "Evans",
  #   dog_name: "Killer",
  #   bio: "Hi! My name is Killer and my human's name is Deborah. Deborah is a likeable Security and fire alarm systems installer. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/miley-cyrus-floyd-coyote-attack-instagram__oPt.jpg")
  # },
  # {
  #   email: "Erin1@example.com",
  #   fname: "Erin",
  #   lname: "West",
  #   dog_name: "Bully",
  #   bio: "Hi! My name is Bully and my human's name is Erin. Erin is a likeable Magistrate. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/miley-cyrus-shows-new-dog.jpg")
  # },
  # {
  #   email: "Brian1@example.com",
  #   fname: "Brian",
  #   lname: "Covarrubias",
  #   dog_name: "White Duke",
  #   bio: "Howdy pups! My name is White Duke and my human's name is Brian. Brian is a renowned Greeter. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/photo_2.JPG")
  # },
  # {
  #   email: "Dana1@example.com",
  #   fname: "Dana",
  #   lname: "Burkes",
  #   dog_name: "Atlas",
  #   bio: "Howdy pups! My name is Atlas and my human's name is Dana. Dana is a renowned Electronic equipment installer. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Rosie-Huntington-Whiteley-snuggled-bed-her-dog.jpg")
  # },
  # {
  #   email: "Gail1@example.com",
  #   fname: "Gail",
  #   lname: "Mathis",
  #   dog_name: "Captain",
  #   bio: "Hi! My name is Captain and my human's name is Gail. Gail is a likeable Commercial pilot. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/rosie-hw-and-pet-dog-in-bed.jpg")
  # },
  # {
  #   email: "Cecil1@example.com",
  #   fname: "Cecil",
  #   lname: "Duncan",
  #   dog_name: "Churchill",
  #   bio: "Howdy pups! My name is Churchill and my human's name is Cecil. Cecil is a renowned Aerospace engineering and operations technician. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/rs_600x600-130903165154-600.Marc-Jacobs-Dog.mh.090313.jpg")
  # },
  # {
  #   email: "Georgia1@example.com",
  #   fname: "Georgia",
  #   lname: "Baker",
  #   dog_name: "Snookie (Suki)",
  #   bio: "Hi! My name is Snookie (Suki) and my human's name is Georgia. Georgia is a likeable Web publications designer. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/sammi-hanratty-meeting-tuna-melts-my-heart.png")
  # },
  # {
  #   email: "Haley1@example.com",
  #   fname: "Haley",
  #   lname: "Behan",
  #   dog_name: "Tumbler",
  #   bio: "Hi! My name is Tumbler and my human's name is Haley. Haley is a likeable Paratransit driver. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/samsungstickingouttongueandmandystadtmiller.jpg")
  # },
  # {
  #   email: "Eugene1@example.com",
  #   fname: "Eugene",
  #   lname: "Crew",
  #   dog_name: "Evy",
  #   bio: "Hi! My name is Evy and my human's name is Eugene. Eugene is a likeable General clerk. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Screen-Shot-2014-08-08-at-12.01.09-AM.png")
  # },
  # {
  #   email: "Holly1@example.com",
  #   fname: "Holly",
  #   lname: "Fleming",
  #   dog_name: "Slink",
  #   bio: "Hi! My name is Slink and my human's name is Holly. Holly is a likeable Train dispatcher. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/So-Sweet.jpg")
  # },
  # {
  #   email: "Joyce1@example.com",
  #   fname: "Joyce",
  #   lname: "Garcia",
  #   dog_name: "Monet",
  #   bio: "Hi! My name is Monet and my human's name is Joyce. Joyce is a likeable Assistant cook. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/sophie_simmons_instagram_dog_2_UQPwJxea.sized.jpg")
  # },
  # {
  #   email: "Katherine1@example.com",
  #   fname: "Katherine",
  #   lname: "Bohl",
  #   dog_name: "Clover Fast",
  #   bio: "Hi! My name is Clover Fast and my human's name is Katherine. Katherine is a likeable Land acquisition specialist. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Stars+shine+on+social+networks+noE71g_HozEl.jpg")
  # },
  # {
  #   email: "Joseph1@example.com",
  #   fname: "Joseph",
  #   lname: "Zullo",
  #   dog_name: "Spud",
  #   bio: "Hi! My name is Spud and my human's name is Joseph. Joseph is a likeable Reporter. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Sweet-dreams-Brad-Goreski-his-dog-caught-some-well-deserved-Zs.jpg")
  # },
  # {
  #   email: "Reece1@example.com",
  #   fname: "Reece",
  #   lname: "Barber",
  #   dog_name: "Miss Munchie",
  #   bio: "Hi! My name is Miss Munchie and my human's name is Reece. Reece is a likeable Collision repair and refinish technician. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/T3yHSbZ7RV_l.jpg")
  # },
  # {
  #   email: "Kimberly1@example.com",
  #   fname: "Kimberly",
  #   lname: "Hall",
  #   dog_name: "Kit",
  #   bio: "Greetings. My name is Kit and my human's name is Kimberly. Kimberly is a superlative Recruiter. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/TAJOzE_7fc30444701611a7cf364608b200e6ee12957040.jpg")
  # },
  # {
  #   email: "Jason1@example.com",
  #   fname: "Jason",
  #   lname: "Wilson",
  #   dog_name: "Cobra",
  #   bio: "Hi! My name is Cobra and my human's name is Jason. Jason is a likeable Forensic nurse. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/tumblr_inline_n327fpSjYx1qzr1f9.jpg")
  # },
  # {
  #   email: "Linda1@example.com",
  #   fname: "Linda",
  #   lname: "Taylor",
  #   dog_name: "Hamlet",
  #   bio: "Greetings. My name is Hamlet and my human's name is Linda. Linda is a superlative Health information technician. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/tumblr_m8w0z9MFvk1rcu9wuo1_500.jpg")
  # },
  # {
  #   email: "Kevin1@example.com",
  #   fname: "Kevin",
  #   lname: "George",
  #   dog_name: "Lucy Lu",
  #   bio: "Hi! My name is Lucy Lu and my human's name is Kevin. Kevin is a likeable Painter. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/tumblr_mcimszyBkK1qlnm34o1_500.jpg")
  # },
  # {
  #   email: "Kristopher1@example.com",
  #   fname: "Kristopher",
  #   lname: "Howard",
  #   dog_name: "Python",
  #   bio: "Greetings. My name is Python and my human's name is Kristopher. Kristopher is a superlative Administrative manager. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/tumblr_mkwi67T0bz1qjp2c6o1_500.jpg")
  # },
  # {
  #   email: "Lora1@example.com",
  #   fname: "Lora",
  #   lname: "McCullough",
  #   dog_name: "Rose (Rosie)",
  #   bio: "Greetings. My name is Rose (Rosie) and my human's name is Lora. Lora is a superlative Job development specialist. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/Victoria-Justice-cuddled-giant-fluffy-dog.jpg")
  # },
  # {
  #   email: "Maggie1@example.com",
  #   fname: "Maggie",
  #   lname: "Connelly",
  #   dog_name: "Miley",
  #   bio: "Greetings. My name is Miley and my human's name is Maggie. Maggie is a superlative Web developer. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/vV0dhLE-8GCl.jpg")
  # },
  # {
  #   email: "Margaret1@example.com",
  #   fname: "Margaret",
  #   lname: "Wright",
  #   dog_name: "Coco",
  #   bio: "Greetings. My name is Coco and my human's name is Margaret. Margaret is a superlative Radio operator. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/who-to-follow-on-instagram-dudes-marc-jacobs-dog-550x555.png")
  # },
  # {
  #   email: "Molly1@example.com",
  #   fname: "Molly",
  #   lname: "Rogers",
  #   dog_name: "Lancelot",
  #   bio: "Greetings. My name is Lancelot and my human's name is Molly. Molly is a superlative Gaming dealer. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/zooey-deschanel-dogs.jpg")
  # },
  # {
  #   email: "Nancy1@example.com",
  #   fname: "Nancy",
  #   lname: "Martinez",
  #   dog_name: "Pluto",
  #   bio: "Greetings. My name is Pluto and my human's name is Nancy. Nancy is a superlative Osteopathic physician. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/0d773440-f3ab-11e3-8b68-a9f47df85ff6_RITA-ORA.jpg")
  # },
  # {
  #   email: "Mike1@example.com",
  #   fname: "Mike",
  #   lname: "Glover",
  #   dog_name: "Little Baby Invader",
  #   bio: "Greetings. My name is Little Baby Invader and my human's name is Mike. Mike is a superlative Full-charge bookkeeper. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/1-140306161319C4.jpg")
  # },
  # {
  #   email: "Mildred1@example.com",
  #   fname: "Mildred",
  #   lname: "Wiley",
  #   dog_name: "Bullseye",
  #   bio: "Greetings. My name is Bullseye and my human's name is Mildred. Mildred is a superlative Management assistant. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/0221-katy-dog-sub-instagram-6.jpg")
  # },
  # {
  #   email: "Max1@example.com",
  #   fname: "Max",
  #   lname: "Keith",
  #   dog_name: "Deanna",
  #   bio: "Greetings. My name is Deanna and my human's name is Max. Max is a superlative Personnel services specialist. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/031214_18_AE.jpg")
  # },
  # {
  #   email: "Patty1@example.com",
  #   fname: "Patty",
  #   lname: "Mueller",
  #   dog_name: "Mr Yada",
  #   bio: "Greetings. My name is Mr Yada and my human's name is Patty. Patty is a superlative Gas furnace installer. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/914701-06d6a258-a9a3-11e3-9dd3-54db44ed2f71.jpg")
  # },
  # {
  #   email: "Patricia1@example.com",
  #   fname: "Patricia",
  #   lname: "Becnel",
  #   dog_name: "Ruthless Mrs Honey",
  #   bio: "Greetings. My name is Ruthless Mrs Honey and my human's name is Patricia. Patricia is a superlative Transplant nurse. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/915483-30c296ee-a9a3-11e3-9dd3-54db44ed2f71.jpg")
  # },
  # {
  #   email: "Paulina1@example.com",
  #   fname: "Paulina",
  #   lname: "Shepherd",
  #   dog_name: "Squirt",
  #   bio: "Greetings. My name is Squirt and my human's name is Paulina. Paulina is a superlative Payroll and timekeeping clerk. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/915509-d3d773f4-a99e-11e3-9dd3-54db44ed2f71.jpg")
  # },
  # {
  #   email: "Pearl1@example.com",
  #   fname: "Pearl",
  #   lname: "Wilson",
  #   dog_name: "Rachel",
  #   bio: "Greetings. My name is Rachel and my human's name is Pearl. Pearl is a superlative Respiratory care practitioner. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/5382041841_d507e3ec18_b.jpg")
  # },
  # {
  #   email: "Nan1@example.com",
  #   fname: "Nan",
  #   lname: "Scott",
  #   dog_name: "Quinn (Quin)",
  #   bio: "Greetings. My name is Quinn (Quin) and my human's name is Nan. Nan is a superlative Nurse informaticist. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/5455052659_3fb3e09c52_b.jpg")
  # },
  # {
  #   email: "Robin1@example.com",
  #   fname: "Robin",
  #   lname: "Meadows",
  #   dog_name: "Mister Screaming King",
  #   bio: "Hello! My name is Mister Screaming King and my human's name is Robin. Robin is a fun-loving Facility manager. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/14175955598_3a3137b9ab_b.jpg")
  # },
  # {
  #   email: "Rufina1@example.com",
  #   fname: "Rufina",
  #   lname: "Wheeler",
  #   dog_name: "Macbeth",
  #   bio: "Hello! My name is Macbeth and my human's name is Rufina. Rufina is a fun-loving Full-charge bookkeeper. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/14176109517_1f14ab99a5_b.jpg")
  # },
  # {
  #   email: "Amanda1@example.com",
  #   fname: "Amanda",
  #   lname: "Williamson",
  #   dog_name: "Fabio",
  #   bio: "Hello! My name is Fa   bio and my human's name is Amanda. Amanda is a fun-loving Treatment plant and system operator. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/amanda(kilo).jpg")
  # },
  # {
  #   email: "Sarah1@example.com",
  #   fname: "Sarah",
  #   lname: "Coleman",
  #   dog_name: "Patty",
  #   bio: "Hello! My name is Patty and my human's name is Sarah. Sarah is a fun-loving Esthetician. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/angelina.jpg")
  # },
  # {
  #   email: "Robert1@example.com",
  #   fname: "Robert",
  #   lname: "Miller",
  #   dog_name: "Blue Martini",
  #   bio: "Hello! My name is Blue Martini and my human's name is Robert. Robert is a fun-loving Personal and home care aide. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/article-2144035-1313EA8E000005DC-850_634x470.jpg")
  # },
  # {
  #   email: "Brian1@example.com",
  #   fname: "Brian",
  #   lname: "McMillin",
  #   dog_name: "Stinky",
  #   bio: "Greetings. My name is Stinky and my human's name is Brian. Brian is a superlative Civil drafter. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/brian(kilo).jpg")
  # },
  # {
  #   email: "Nathan1@example.com",
  #   fname: "Nathan",
  #   lname: "Harris",
  #   dog_name: "Clint",
  #   bio: "Greetings. My name is Clint and my human's name is Nathan. Nathan is a superlative Medical technologist. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/c818b83c474ab9290fd70c587a291.jpg")
  # },
  # {
  #   email: "Sharon1@example.com",
  #   fname: "Sharon",
  #   lname: "Sanders",
  #   dog_name: "Bear",
  #   bio: "Hello! My name is Bear and my human's name is Sharon. Sharon is a fun-loving Private household cook. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/cameron-diaz.jpg")
  # },
  # {
  #   email: "Hope1@example.com",
  #   fname: "Hope",
  #   lname: "Chambers",
  #   dog_name: "Bud",
  #   bio: "Hello! My name is Bud and my human's name is Hope. Hope is a fun-loving Tow truck dispatcher. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/chadd.jpg")
  # },
  # {
  #   email: "Stella1@example.com",
  #   fname: "Stella",
  #   lname: "Walker",
  #   dog_name: "Tumbler",
  #   bio: "Hello! My name is Tumbler and my human's name is Stella. Stella is a fun-loving Job training specialist. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/courtney-dasher-tunajpg-c043dfa5c9106930.jpg")
  # },
  # {
  #   email: "Emily1@example.com",
  #   fname: "Emily",
  #   lname: "Rein",
  #   dog_name: "Daisy",
  #   bio: "Hello! My name is Daisy and my human's name is Emily. Emily is a fun-loving Home care aide. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/emily(harvey).JPG")
  # },
  # {
  #   email: "Scott1@example.com",
  #   fname: "Scott",
  #   lname: "Howe",
  #   dog_name: "Ninja",
  #   bio: "Hello! My name is Ninja and my human's name is Scott. Scott is a fun-loving Rooms manager. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/enhanced-buzz-25061-1376602931-20.jpg")
  # },
  # {
  #   email: "Andrew1@example.com",
  #   fname: "Andrew",
  #   lname: "Martin",
  #   dog_name: "Boomer, Biscuit",
  #   bio: "Hello! Our names are Boomer and Biscuit and our human's name is Andrew. Andrew is a fun-loving Mining and geological engineer. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/img_1187.jpg")
  # },
  # {
  #   email: "Katie1@example.com",
  #   fname: "Katie",
  #   lname: "Ross",
  #   dog_name: "Alf-Alfa",
  #   bio: "Hello! My name is Alf-Alfa and my human's name is Katie. Katie is a fun-loving Disc jockey. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/img_1188.jpg")
  # },
  # {
  #   email: "Jessica1@example.com",
  #   fname: "Jessica",
  #   lname: "Greene",
  #   dog_name: "Edgar",
  #   bio: "Hello! My name is Edgar and my human's name is Jessica. Jessica is a fun-loving Computer chip processor. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/jessica(edgar).jpg")
  # },
  # {
  #   email: "Katie1@example.com",
  #   fname: "Katie",
  #   lname: "Greene",
  #   dog_name: "Harvey",
  #   bio: "Hi, I'm Harvey and this is my mom, Katie. I am thoughtful and funny and like cuddling, live music and the occasional vegan meal despite being a carnivore. While I love living in SoCal, I'm also an honorary Texan, as that's where my mom grew up.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/katie2(harvey).jpg")
  # },
  # {
  #   email: "Sandy1@example.com",
  #   fname: "Sandy",
  #   lname: "Klapper",
  #   dog_name: "Mrs. Natasha",
  #   bio: "Howdy pups! My name is Mrs. Natasha and my human's name is Sandy. Sandy is a renowned Photojournalist. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/katie3(butch).jpg")
  # },
  # {
  #   email: "Erica1@example.com",
  #   fname: "Erica",
  #   lname: "Johnson",
  #   dog_name: "Mister Sir",
  #   bio: "Hi! My name is Mister Sir and my human's name is Erica. Erica is a likeable Textile bleaching and dyeing machine operator. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/katie4(oscar).jpg")
  # },
  # {
  #   email: "Kevin1@example.com",
  #   fname: "Kevin",
  #   lname: "Garcia",
  #   dog_name: "Bandit",
  #   bio: "Hi! My name is Bandit and my human's name is Kevin. Kevin is a likeable Event planner. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/kevin(edgar).jpg")
  # },
  # {
  #   email: "Kyle1@example.com",
  #   fname: "Kyle",
  #   lname: "Green",
  #   dog_name: "Jackson",
  #   bio: "Hi! My name is Jackson and my human's name is Kyle. Kyle is a likeable Enlisted personnel. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/kyle(jackson).jpg")
  # },
  # {
  #   email: "Levani@example.com",
  #   fname: "Levani",
  #   lname: "Cuevas",
  #   dog_name: "Rogue",
  #   bio: "Hi! My name is Rogue and my human's name is Levani. Levani is a likeable Data processing equipment repairer. Bushwick 8-bit swag, dreamcatcher raw denim organic YOLO crucifix. Fanny pack Portland whatever cred. Organic Portland bitters, Shoreditch shabby chic mustache wolf authentic meh fanny pack tousled.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/levani.jpg")
  # },
  # {
  #   email: "Lorin@example.com",
  #   fname: "Lorin",
  #   lname: "Taylor",
  #   dog_name: "Meadow, Barkley",
  #   bio: "Howdy pups! Our names are Meadow and Barkley and our human's name is Lorin. Lorin is a renowned Web developer. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/lorin.jpg")
  # },
  # {
  #   email: "Cassandra1@example.com",
  #   fname: "Cassandra",
  #   lname: "Dial",
  #   dog_name: "Wallace",
  #   bio: "Hi! My name is Wallace and my human's name is Cassandra. Cassandra is a likeable Mail processor. Selfies deep v American Apparel, fixie Blue Bottle pug mlkshk mustache tattooed occupy authentic. Wayfarers gluten-free narwhal kitsch.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/mark(wallace).JPG")
  # },
  # {
  #   email: "Sarah41@example.com",
  #   fname: "Sarah",
  #   lname: "Carrera",
  #   dog_name: "Dobby",
  #   bio: "Hi, I’m Dobby and this is my mom Sara! She named me after the Harry Potter character, in case you were wondering. I am sassy and quirky, just like my mom. We both love improv, coffee, and YA fiction trilogies.",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/sarah(dobby).jpg")
  # },
  # {
  #   email: "Mark1@example.com",
  #   fname: "Mark",
  #   lname: "Muckerberg",
  #   dog_name: "Quixote",
  #   bio: "Hi! My name is Quixote and my human's name is Mark. Mark is a likeable Two-stroke engine mechanic. Echo Park authentic ethical post-ironic, Godard before they sold out swag pour-over scenester plaid. Tofu yr cliche viral, four loko Cosby sweater plaid VHS. ",
  #   password: "password",
  #   password_confirmation: "password",
  #   profile_pic: File.open("/Users/shawnrodriguez/WDI/fetch_profile_pics/social-media-most-famous-dogs-zuckerberg.jpg")
  # }
])

