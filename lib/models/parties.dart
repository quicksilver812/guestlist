class AllParties {
  String? name;
  String? imgPath;
  String? time;
  String? date;
  String? mainArtist;
  String? supportingArtist1;
  String? supportingArtist2;
  String? supportingArtist3;
  String? mainArtistPath;
  String? supportingArtist1Path;
  String? supportingArtist2Path;
  String? supportingArtist3Path;
  String? sponsors;
  String? venue;
  String? genre;
  String? subVenue;
  String? description;
  String? venuePath;
  int? price;

  AllParties({
    required this.name,
    required this.imgPath,
    required this.time,
    required this.date,
    required this.mainArtist,
    required this.supportingArtist1,
    required this.supportingArtist2,
    required this.supportingArtist3,
    required this.mainArtistPath,
    required this.supportingArtist1Path,
    required this.supportingArtist2Path,
    required this.supportingArtist3Path,
    required this.sponsors,
    required this.venue,
    required this.genre,
    required this.subVenue,
    required this.description,
    required this.venuePath,
    required this.price,
  });

  static List<AllParties> listOfParties() {
    return [
      AllParties(
          name: 'Techloop Arena',
          imgPath: 'assets/parties/hozho.jpeg',
          time: '5 P.M.',
          date: '24/12/2023',
          mainArtist: 'Hozho',
          supportingArtist1: "Blackhertz",
          supportingArtist2: null,
          supportingArtist3: null,
          mainArtistPath: 'assets/djs/hozho.jpeg',
          supportingArtist1Path: "assets/djs/blackhertz.jpeg",
          supportingArtist2Path: null,
          supportingArtist3Path: null,
          sponsors: 'Paradox, Techtales, Byg Brewski Brewing Company',
          venue: 'High Ultra Lounge',
          subVenue: 'World Trade Centre B, Bangalore, India',
          genre: 'Techno',
          venuePath: 'assets/locations/high_ultra_lounge.jpeg',
          price: 200,
          description:
              "Get ready for an electrifying night at Techloop Arena on December 24th, 2023, starting at 5 PM in Bangalore, India's High Ultra Lounge. Groove to the rhythms of techno maestros Hozho and Blackhertz amidst the vibrant atmosphere. Proudly sponsored by Paradox, Techtales, and Byg Brewski Brewing Company, it promises to be an unforgettable experience blending music, technology, and culture. Don't miss out on this immersive techno extravaganza!"),
      AllParties(
          name: 'Jashn-E-Rang',
          imgPath: 'assets/parties/holi.jpeg',
          time: '2 P.M.',
          date: '08/03/2024',
          mainArtist: "TBA",
          supportingArtist1: "TBA",
          supportingArtist2: null,
          supportingArtist3: null,
          mainArtistPath: 'assets/djs/notannounced.png',
          supportingArtist1Path: null,
          supportingArtist2Path: null,
          supportingArtist3Path: null,
          sponsors: 'Eclipse Media, Swiggy Steppin Out',
          venue: 'Jayamahal Palace',
          genre: 'Tech House',
          venuePath: 'assets/locations/jayamahal.png',
          price: 200,
          subVenue:
              '1, Jayamahal Main Rd, near Cantonment Railway Station Road, Nandi Durga Road Extension, Jayamahal, Bengaluru, Karnataka 560046',
          description:
              "Join the vibrant celebration of colors at Jashn-E-Rang on March 8th, 2024, starting at 2 PM, at Jayamahal Palace in Bengaluru, Karnataka. Sponsored by Eclipse Media and Swiggy Steppin Out, immerse yourself in the beats of Tech House amidst the festive atmosphere. Experience the joy of Holi like never before at this iconic venue."),
      AllParties(
          name: 'Kabuki Nights',
          imgPath: 'assets/parties/kabuki.jpeg',
          time: '9 P.M.',
          date: '14/10/2023',
          mainArtist: 'DJ Rohit',
          supportingArtist1: "Nahil",
          supportingArtist2: null,
          supportingArtist3: null,
          mainArtistPath: 'assets/djs/djrohit.jpeg',
          supportingArtist1Path: "assets/djs/nahil.jpeg",
          supportingArtist2Path: null,
          supportingArtist3Path: null,
          sponsors: 'Chivas, Corona Extra',
          venue: 'Taki Taki Bangalore',
          venuePath: 'assets/locations/taki_taki.jpeg',
          price: 200,
          subVenue:
              '10, Sankey Rd, next to BDA Head Office, Kumarapark West, Seshadripuram, Bengaluru, Karnataka - 560020',
          genre: 'Tech House',
          description:
              "Embark on a mesmerizing journey at Kabuki Nights on October 14th, 2023, starting at 9 PM in Taki Taki Bangalore, Bengaluru. Groove to the beats of DJ Rohit and Nahil in the enchanting realm of Tech House. Sponsored by Chivas and Corona Extra, it's a night of pulsating rhythms and vibrant energy not to be missed!"),
      AllParties(
          name: 'Troyboi: India Tour',
          imgPath: 'assets/parties/troyboi.jpeg',
          time: '5 P.M.',
          date: '17/06/2024',
          mainArtist: 'Troyboi',
          supportingArtist1: "GNDHI",
          supportingArtist2: null,
          supportingArtist3: null,
          mainArtistPath: 'assets/djs/troyboi.jpeg',
          supportingArtist1Path: "assets/djs/gndhi.png",
          supportingArtist2Path: null,
          supportingArtist3Path: null,
          sponsors: 'Envision, Swiggy SteppinOut',
          venue: 'Sunburn Union',
          venuePath: 'assets/locations/sunburn_union.jpeg',
          price: 200,
          subVenue:
              'Passport office, Mantri Avenue, next to Koramangala, KHB Games Village, Koramangala, Bengaluru, Karnataka 560047',
          genre: 'House, Future Bass',
          description:
              "Experience the electrifying beats of Troyboi and GNDHI at Sunburn Union on June 17th, 2024, starting at 5 PM in Koramangala, Bengaluru. Sponsored by Envision and Swiggy SteppinOut, immerse yourself in the fusion of House and Future Bass. Don't miss this epic India Tour for an unforgettable night of music and euphoria!"),
      AllParties(
          name: 'Solomun',
          imgPath: 'assets/parties/solomun.jpeg',
          time: '8 P.M.',
          date: '10/12/2024',
          mainArtist: 'Solomun',
          supportingArtist1: null,
          supportingArtist2: null,
          supportingArtist3: null,
          mainArtistPath: 'assets/djs/solomun.jpeg',
          supportingArtist1Path: null,
          supportingArtist2Path: null,
          supportingArtist3Path: null,
          sponsors: 'sLick!, Swiggy SteppinOut',
          venue: 'Embassy Riding School',
          venuePath: 'assets/locations/embassy_riding_school.jpeg',
          price: 200,
          subVenue:
              '149/223, Tarunhunse Village, next to Stone Hill International School, Bengaluru, Karnataka 562157',
          genre: 'Techno',
          description:
              "Embark on a techno odyssey with Solomun on December 10th, 2024, from 8 PM at Embassy International Riding School, Bengaluru. Sponsored by sLick! and Swiggy SteppinOut, surrender to the pulsating beats in the tranquil expanse near Stone Hill International School. Join the immersive experience and let Solomun's rhythms ignite your soul in this unforgettable techno journey.")
    ];
  }
}
