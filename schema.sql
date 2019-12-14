DROP DATABASE IF EXISTS Image_View;

CREATE DATABASE Image_View;

USE Image_View;
SET character_set_client=utf8, character_set_connection=utf8, character_set_database=utf8, character_set_results=utf8, character_set_server=utf8;

CREATE TABLE Products (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  images int NOT NULL,
  videoEmbed VARCHAR(100),
  videoThumb VARCHAR(100),
  description VARCHAR(150),
  PRIMARY KEY (ID)
);


-- source /Users/mfuechec/Desktop/hr/mark_image-view/schema.sql
/*  Execute this file from the command line by typing:
 *    mysql -u root < schema.sql -p
 *  to create the database and the tables.*/

 /*
 First 20
 */

 INSERT INTO Products VALUES (
   id,
   'ANTILOP',
   6,
   null,
   null,
   'High chair with tray, white silver color, silver color'
 );
  INSERT INTO Products VALUES (
   id,
   'TOBIAS',
   3,
   null,
   null,
   'Chair, clear, chrome plated'
 );
  INSERT INTO Products VALUES (
   id,
   'HAVSTEN',
   8,
   'https://www.youtube.com/embed/gnHDOmifrfA?enablejsapi=1',
   'https://img.youtube.com/vi/gnHDOmifrfA/0.jpg',
   'Chair, in/outdoor, beige, 32 5/8x37x35 3/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'GLENN',
   7,
   null,
   null,
   'Bar stool, white, chrome plated, 26 "'
 );
  INSERT INTO Products VALUES (
   id,
   'FRANKLIN',
   6,
   null,
   null,
   'Bar stool with backrest, foldable, white, white, 24 3/4 "'
 );
  INSERT INTO Products VALUES (
   id,
   'JULES',
   7,
   null,
   null,
   'Childs desk chair, white'
 );
  INSERT INTO Products VALUES (
   id,
   'ÖRFJÄLL',
   7,
   null,
   null,
   'Swivel chair, white, Vissle blue'
 );
  INSERT INTO Products VALUES (
   id,
   'GRÖNADAL',
   7,
   null,
   null,
   'Rocking chair, gray, natural'
 );
  INSERT INTO Products VALUES (
   id,
   'VÅGSBERG / SPORREN',
   7,
   null,
   null,
   'Swivel chair, black'
 );
  INSERT INTO Products VALUES (
   id,
   'DIETMAR',
   1,
   null,
   null,
   'Underframe for armchair, chrome plated'
 );
  INSERT INTO Products VALUES (
   id,
   'LANGUR',
   2,
   null,
   null,
   'High chair tray, white'
 );
  INSERT INTO Products VALUES (
   id,
   'JOKKMOKK',
   5,
   null,
   null,
   'Table and 4 chairs, antique stain'
 );
  INSERT INTO Products VALUES (
   id,
   'STEFAN',
   7,
   null,
   null,
   'Chair, brown-black'
 );
  INSERT INTO Products VALUES (
   id,
   'BALTSAR',
   6,
   null,
   null,
   'Chair, black-blue, brown'
 );
  INSERT INTO Products VALUES (
   id,
   'HARRY',
   5,
   null,
   null,
   'Chair, black, Knisa light gray'
 );
  INSERT INTO Products VALUES (
   id,
   'MARIUS',
   7,
   null,
   null,
   'Stool, black'
 );
  INSERT INTO Products VALUES (
   id,
   'MARTIN',
   5,
   null,
   null,
   'Chair, black, black'
 );
  INSERT INTO Products VALUES (
   id,
   'TROLLBERGET',
   6,
   'https://www.youtube.com/embed/4sexn7JH5_s?enablejsapi=1',
   'https://img.youtube.com/vi/4sexn7JH5_s/0.jpg',
   'Sit/stand support, Glose black'
 );
  INSERT INTO Products VALUES (
   id,
   'KOLON',
   2,
   null,
   null,
   'Floor protector, 47 1/4x39 3/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'MALINDA',
   3,
   null,
   null,
   'Chair pad, light beige, 16/14x15x3 "'
 );

 /*
 Second 20
 */

  INSERT INTO Products VALUES (
   id,
   'GONATT',
   8,
   null,
   null,
   'Crib, light gray, 27 1/2x52 "'
 );
  INSERT INTO Products VALUES (
   id,
   'NORDLI',
   8,
   null,
   null,
   'Bed with headboard and storage, white, King'
 );
  INSERT INTO Products VALUES (
   id,
   'SAGSTUA',
   8,
   null,
   null,
   'Bed frame, black, Full'
 );
  INSERT INTO Products VALUES (
   id,
   'GODFJORD',
   5,
   null,
   null,
   'Bed frame, gray, Queen'
 );
  INSERT INTO Products VALUES (
   id,
   'SONGESAND',
   6,
   null,
   null,
   'Bed frame with 4 storage boxes, brown, Full/Double'
 );
  INSERT INTO Products VALUES (
   id,
   'DELAKTIG',
   5,
   null,
   null,
   'Bed frame/headboard/2 side tables, aluminum, rattan, Queen'
 );
  INSERT INTO Products VALUES (
   id,
   'HEMNES',
   4,
   null,
   null,
   'Bed frame with 4 storage boxes, dark gray stained, Leirsund, Queen'
 );
  INSERT INTO Products VALUES (
   id,
   'ESPEVÄR',
   2,
   null,
   null,
   'Divan bed, Mausund medium firm, natural, Queen'
 );
  INSERT INTO Products VALUES (
   id,
   'UTÅKER',
   8,
   null,
   null,
   'Stackable bed with 2 mattresses, pine, Husvika, Twin'
 );
  INSERT INTO Products VALUES (
   id,
   'KVALFJORD',
   5,
   null,
   null,
   'Bed frame, Risane natural, Luröy, Queen'
 );
  INSERT INTO Products VALUES (
   id,
   'NEIDEN',
   7,
   null,
   null,
   'Bed frame, pine birch, Luröy, Full'
 );
  INSERT INTO Products VALUES (
   id,
   'HEMMAHOS',
   2,
   null,
   null,
   'Childrens tent, caravan'
 );
  INSERT INTO Products VALUES (
   id,
   'LÖVA',
   3,
   null,
   null,
   'Bed canopy, green'
 );
  INSERT INTO Products VALUES (
   id,
   'MINNEN',
   8,
   null,
   null,
   'Ext bed frame with slatted bed base, white, 38 1/4x74 3/4 "'
 );
  INSERT INTO Products VALUES (
   id,
   'SLÄKT',
   8,
   null,
   null,
   'Bed frame w/storage+slatted bedbase, white, Twin'
 );
  INSERT INTO Products VALUES (
   id,
   'VITVAL',
   8,
   null,
   null,
   'Loft bed frame with desk top, white, light gray, Twin'
 );
  INSERT INTO Products VALUES (
   id,
   'TUFFING',
   5,
   null,
   null,
   'Bunk bed frame, dark gray, Twin'
 );
  INSERT INTO Products VALUES (
   id,
   'NORDDAL',
   3,
   null,
   null,
   'Bunk bed frame, black-brown, Twin'
 );
  INSERT INTO Products VALUES (
   id,
   'MYDAL',
   5,
   null,
   null,
   'Bunk Bed, pine, twin'
 );
  INSERT INTO Products VALUES (
   id,
   'ALLEMANSRÄTTEN',
   5,
   null,
   null,
   'Meatballs, frozen, 84% meat content'
 );

 /*
 Third 20
 */

  INSERT INTO Products VALUES (
   id,
   'HAMNSKÄR',
   7,
   null,
   null,
   'Bronze Faucet'
 );
  INSERT INTO Products VALUES (
   id,
   'LILLSVAN',
   5,
   null,
   null,
   'chrome plated faucet'
 );
  INSERT INTO Products VALUES (
   id,
   'VOXNAN',
   6,
   null,
   null,
   'tall chrome faucet'
 );
  INSERT INTO Products VALUES (
   id,
   'RUNSKÄR',
   6,
   null,
   null,
   'chrome faucet, two knobs'
 );
  INSERT INTO Products VALUES (
   id,
   'STOCKHOLM',
   3,
   null,
   null,
   'Mirror, walnut veneer, 23 5/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'ISFJORDEN',
   3,
   null,
   null,
   'Floor mirror, black-brown stain,'
 );
  INSERT INTO Products VALUES (
   id,
   'KAITUM',
   3,
   null,
   null,
   'Mirror with built-in light, battery operated'
 );
  INSERT INTO Products VALUES (
   id,
   'IKORNNES',
   8,
   null,
   null,
   'Table mirror, ash'
 );
  INSERT INTO Products VALUES (
   id,
   'GODMORGON',
   3,
   null,
   null,
   'Box with lid, set of 5, smoked'
 );
  INSERT INTO Products VALUES (
   id,
   'SAXBORGA',
   6,
   null,
   null,
   'Jar with lid and tray, set of 5'
 );
  INSERT INTO Products VALUES (
   id,
   'SKÅDIS',
   2,
   null,
   null,
   'Pegboard combination, white,'
 );
  INSERT INTO Products VALUES (
   id,
   'LOCKIG',
   4,
   null,
   null,
   'Childrens potty, white green, green'
 );
  INSERT INTO Products VALUES (
   id,
   'SAXBORGA',
   8,
   null,
   null,
   'Storage box with mirrored lid, plastic cork'
 );
  INSERT INTO Products VALUES (
   id,
   'LÅDDAN',
   7,
   null,
   null,
   '6-piece storage board set, with suction cups, mixed colors assorted colors'
 );
  INSERT INTO Products VALUES (
   id,
   'DOPPA',
   5,
   null,
   null,
   'Bathtub mat, light gray, 13x33'
 );
  INSERT INTO Products VALUES (
   id,
   'TISKEN',
   8,
   null,
   null,
   'Basket with suction cup, white'
 );
  INSERT INTO Products VALUES (
   id,
   'LILLÅNGEN',
   7,
   null,
   null,
   'Sink, white, 16 1/8x16x5 1/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'GUTVIKEN',
   4,
   null,
   null,
   'Countertop sink, white'
 );
  INSERT INTO Products VALUES (
   id,
   'TÖRNVIKEN',
   5,
   null,
   null,
   'Countertop sink, white, 17 3/4 "'
 );
  INSERT INTO Products VALUES (
   id,
   'ODENSVIK',
   4,
   null,
   null,
   'Double bowl sink, 40 1/2x19 1/4x2 3/8 "'
 );

 /*
 Fourth 20
 */

   INSERT INTO Products VALUES (
   id,
   'DUKTIG',
   2,
   null,
   null,
   'kids cooking set'
 );
  INSERT INTO Products VALUES (
   id,
   'LILLABO',
   4,
   null,
   null,
   'toy trainset'
 );
  INSERT INTO Products VALUES (
   id,
   'STORABO',
   7,
   null,
   null,
   'play carpet'
 );
  INSERT INTO Products VALUES (
   id,
   'VURM',
   4,
   null,
   null,
   'wine rack'
 );
  INSERT INTO Products VALUES (
   id,
   'KUNGSFORS',
   4,
   null,
   null,
   'dish drainer'
 );
  INSERT INTO Products VALUES (
   id,
   'ORDNING',
   5,
   null,
   null,
   'utensil holder'
 );
  INSERT INTO Products VALUES (
   id,
   'TORKAD',
   3,
   null,
   null,
   'paper towel holder'
 );
  INSERT INTO Products VALUES (
   id,
   'IDEALISK',
   3,
   null,
   null,
   'corkscrew'
 );
  INSERT INTO Products VALUES (
   id,
   'JAMFORA',
   4,
   null,
   null,
   '3-piece knife set'
 );
  INSERT INTO Products VALUES (
   id,
   'ANDLIG',
   5,
   null,
   null,
   '3-piece knife set'
 );
  INSERT INTO Products VALUES (
   id,
   'FÖRDUBBLA',
   2,
   null,
   null,
   '2-piece knife set'
 );
  INSERT INTO Products VALUES (
   id,
   'FÖRSLAG',
   3,
   null,
   null,
   '3-piece knife set'
 );
  INSERT INTO Products VALUES (
   id,
   'VÖRDA',
   2,
   null,
   null,
   '3-piece knife set'
 );
  INSERT INTO Products VALUES (
   id,
   'DRAGON',
   6,
   null,
   null,
   '20-piece flatware set'
 );
  INSERT INTO Products VALUES (
   id,
   'MATLUST',
   2,
   null,
   null,
   'chopping board'
 );
  INSERT INTO Products VALUES (
   id,
   'SKYDD',
   4,
   null,
   null,
   'wood treatmeant oil, indoor use'
 );
  INSERT INTO Products VALUES (
   id,
   'APTITLIG',
   5,
   null,
   null,
   'butcher block'
 );
  INSERT INTO Products VALUES (
   id,
   'GRUNKA',
   6,
   null,
   null,
   '4-piece cooking utensil set'
 );
  INSERT INTO Products VALUES (
   id,
   'GUBBRÖRA',
   4,
   null,
   null,
   'rubber spatula'
 );
  INSERT INTO Products VALUES (
   id,
   'JÄMFÖRLIG',
   5,
   null,
   null,
   'handheld whisk'
 );

 /*
 Fifth 20
 */

   INSERT INTO Products VALUES (
   id,
   'KÖTTBULLAR',
   1,
   null,
   null,
   'Meatballs, frozen'
 );
  INSERT INTO Products VALUES (
   id,
   'FANBYN',
   3,
   null,
   null,
   'Bar table and 4 bar stools, white, white'
 );
  INSERT INTO Products VALUES (
   id,
   'FANBYN',
   1,
   null,
   null,
   'Bar stool with backrest, white, 25 1/4 "'
 );
  INSERT INTO Products VALUES (
   id,
   'FRÖSÖN/DUVHOLMEN',
   3,
   null,
   null,
   'Seat pad, outdoor, beige, 24 3/8x24 3/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'ÄPPLARÖ',
   7,
   null,
   null,
   'Drop-leaf table, outdoor, brown stained brown, 55 1/8/78 3/4/102 3/8x30 3/4 "'
 );
  INSERT INTO Products VALUES (
   id,
   'ÄPPLARÖ',
   2,
   null,
   null,
   'Bench, outdoor, brown stained brown, 44 7/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'ÄPPLARÖ',
   8,
   null,
   null,
   'Chaise, brown stained brown'
 );
  INSERT INTO Products VALUES (
   id,
   'ÄPPLARÖ',
   6,
   null,
   null,
   'Reclining chair, outdoor, brown foldable brown stained brown'
 );
  INSERT INTO Products VALUES (
   id,
   'FRÖSÖN/DUVHOLMEN',
   3,
   null,
   null,
   'Back cushion, outdoor, beige, 24 3/8x17 3/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'HAVSTEN',
   7,
   'https://www.youtube.com/embed/gnHDOmifrfA?enablejsapi=1',
   'https://img.youtube.com/vi/gnHDOmifrfA/0.jpg',
   'Loveseat, in/outdoor, without armrests with open end, beige, 64 5/8x37x35 3/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'BROMMÖ',
   5,
   null,
   null,
   'Chaise, outdoor, brown stained black, brown'
 );
  INSERT INTO Products VALUES (
   id,
   'ÄPPLARÖ',
   3,
   null,
   null,
   'Armchair, outdoor, brown stained brown'
 );
  INSERT INTO Products VALUES (
   id,
   'HÅLLÖ',
   4,
   null,
   null,
   'Seat pad, outdoor, black, 24x24 "'
 );
  INSERT INTO Products VALUES (
   id,
   'SOLLERÖN',
   8,
   null,
   null,
   '3-seat modular sofa, outdoor, with footstool brown brown, Frösön/Duvholmen beige, 87 3/4x56 3/4x34 5/8 "'
 );
  INSERT INTO Products VALUES (
   id,
   'ÄPPLARÖ',
   4,
   null,
   null,
   'Table+2 benches, outdoor, brown stained'
 );
  INSERT INTO Products VALUES (
   id,
   'TÄRNÖ',
   5,
   null,
   null,
   'Chair, outdoor, foldable acacia black, gray-brown stained steel light brown stained'
 );
  INSERT INTO Products VALUES (
   id,
   'TOSTERÖ',
   5,
   null,
   null,
   'Cover for outdoor furniture, sofa, black, 102 3/8x65 "'
 );
  INSERT INTO Products VALUES (
   id,
   'KLÖVEN',
   2,
   null,
   null,
   '4-seat conversation set, outdoor, brown stained, Frösön/Duvholmen beige'
 );
  INSERT INTO Products VALUES (
   id,
   'SOLLERÖN',
   5,
   null,
   null,
   '4-seat conversation set, outdoor, dark gray, Frösön/Duvholmen beige'
 );
  INSERT INTO Products VALUES (
   id,
   'OTTERÖN / INNERSKÄR',
   6,
   null,
   null,
   'Pouffe, in/outdoor, blue, 18 7/8 "'
 );
