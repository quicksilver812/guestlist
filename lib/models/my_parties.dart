class MyParties {
  String? name;
  String? imgPath;
  String? time;
  String? date;
  String? mainArtist;
  String? supportingArtists;
  String? sponsors;
  String? venue;
  String? subVenue;
  String? genre;
  String? totalAmt;
  String? passCount;

  MyParties(
      {required this.name,
      required this.imgPath,
      required this.time,
      required this.date,
      required this.mainArtist,
      required this.supportingArtists,
      required this.sponsors,
      required this.venue,
      required this.genre,
      required this.passCount,
      required this.totalAmt,
      required this.subVenue});

  static List<MyParties> listOfParties() {
    return [
      MyParties(
          name: 'Techloop Arena',
          imgPath: 'assets/parties/hozho.jpeg',
          time: '5 P.M.',
          date: '24/12/2024',
          mainArtist: 'Hozho',
          supportingArtists: 'Blackhertz',
          sponsors: 'Paradox, Techtales, Byg Brewski Brewing Company',
          venue: 'High Ultra Lounge',
          subVenue: 'World Trade Centre B, Bangalore, India',
          genre: 'Techno',
          passCount: '2',
          totalAmt: '780'),
      MyParties(
          name: 'Kabuki Nights',
          imgPath: 'assets/parties/kabuki.jpeg',
          time: '9 P.M.',
          date: '14/10/2024',
          mainArtist: 'DJ Rohit',
          supportingArtists: 'Nahil',
          sponsors: 'Chivas, Corona Extra',
          venue: 'Taki Taki Bangalore',
          subVenue:
              '10, Sankey Rd, next to BDA Head Office, Kumarapark West, Seshadripuram, Bengaluru, Karnataka - 560020',
          genre: 'Tech House',
          passCount: '3',
          totalAmt: '1280'),
      MyParties(
          name: 'Jashn-E-Rang',
          imgPath: 'assets/parties/holi.jpeg',
          time: '2 P.M.',
          date: '08/03/2024',
          mainArtist: null,
          supportingArtists: null,
          sponsors: 'Eclipse Media, Swiggy Steppin Out',
          venue: 'Jayamahal Palace',
          genre: 'Bollywood, House',
          subVenue:
              '1, Jayamahal Main Rd, near Cantonment Railway Station Road, Nandi Durga Road Extension, Jayamahal, Bengaluru, Karnataka 560046',
          passCount: '4',
          totalAmt: '1150'),
      MyParties(
          name: 'Troyboi: India Tour',
          imgPath: 'assets/parties/troyboi.jpeg',
          time: '5 P.M.',
          date: '17/06/2024',
          mainArtist: 'Troyboi',
          supportingArtists: 'GNDHI',
          sponsors: 'Envision, Swiggy SteppinOut',
          venue: 'Sunburn Union',
          subVenue:
              'Passport office, Mantri Avenue, next to Koramangala, KHB Games Village, Koramangala, Bengaluru, Karnataka 560047',
          genre: 'House, Future Bass',
          passCount: '1',
          totalAmt: '1200'),
      MyParties(
          name: 'Solomun',
          imgPath: 'assets/parties/solomun.jpeg',
          time: '8 P.M.',
          date: '10/12/2024',
          mainArtist: 'Solomun',
          supportingArtists: null,
          sponsors: 'sLick!, Swiggy SteppinOut',
          venue: 'Embassy International Riding School',
          subVenue:
              '149/223, Tarunhunse Village, next to Stone Hill International School, Bengaluru, Karnataka 562157',
          genre: 'Techno',
          passCount: '1',
          totalAmt: '1300'),
    ];
  }
}
