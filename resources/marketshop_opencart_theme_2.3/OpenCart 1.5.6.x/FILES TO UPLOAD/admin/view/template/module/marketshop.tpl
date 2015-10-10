<?php echo $header; ?>
<?php /* regular and Google fonts array*/
	
	$fonts = array(
		''                         => '- Default -',
		'Arial'                    => 'Arial',
	'Georgia'                  => 'Georgia',
	'Helvetica'                => 'Helvetica',
	'Lucida Grande'            => 'Lucida Grande',    
	'Lucida Sans Unicode'      => 'Lucida Sans Unicode',
 	'Segoe UI'                 => 'Segoe UI',   
	'Tahoma'                   => 'Tahoma',
	'Times New Roman'          => 'Times New Roman',
	'Trebuchet MS'             => 'Trebuchet MS',    
	'Verdana'                  => 'Verdana',   
	'Abel'                     => 'Abel',
	'Abril+Fatface'            => 'Abril Fatface',
	'Aclonica'                 => 'Aclonica',
	'Acme'                     => 'Acme',
	'Actor'                    => 'Actor',
	'Adamina'                  => 'Adamina',
	'Advent+Pro'               => 'Advent Pro',
	'Aguafina+Script'          => 'Aguafina Script',    
	'Aladin'                   => 'Aladin',
	'Aldrich'                  => 'Aldrich',
	'Alegreya'                 => 'Alegreya',
	'Alegreya+SC'              => 'Alegreya SC',
	'Alex+Brush'               => 'Alex Brush',
	'Alfa+Slab+One'            => 'Alfa Slab One',
	'Alice'                    => 'Alice',
	'Alike'                    => 'Alike',
	'Alike+Angular'            => 'Alike Angular',
	'Allan'                    => 'Allan',
	'Allerta'                  => 'Allerta',
	'Allerta+Stencil'          => 'Allerta Stencil',
	'Allura'                   => 'Allura',
	'Almendra'                 => 'Almendra',
	'Almendra+SC'              => 'Almendra SC',
	'Amaranth'                 => 'Amaranth',
	'Amatic+SC'                => 'Amatic SC',
	'Amethysta'                => 'Amethysta',
	'Andada'                   => 'Andada',
	'Andika'                   => 'Andika',
	'Angkor'                   => 'Angkor',    
	'Annie+Use+Your+Telescope' => 'Annie Use Your Telescope',
	'Anonymous+Pro'            => 'Anonymous Pro',
	'Antic'                    => 'Antic',
	'Antic+Didone'             => 'Antic Didone',
	'Antic+Slab'               => 'Antic Slab',        
	'Anton'                    => 'Anton',
	'Arapey'                   => 'Arapey',
	'Arbutus'                  => 'Arbutus',    
	'Architects+Daughter'      => 'Architects Daughter',
	'Arimo'                    => 'Arimo',
	'Arizonia'                 => 'Arizonia',    
	'Armata'                   => 'Armata',
	'Artifika'                 => 'Artifika',
	'Arvo'                     => 'Arvo',
	'Asap'                     => 'Asap',
	'Asset'                    => 'Asset',
	'Astloch'                  => 'Astloch',
	'Asul'                     => 'Asul',
	'Atomic+Age'               => 'Atomic Age',
	'Aubrey'                   => 'Aubrey',
	'Audiowide'                => 'Audiowide', 
	'Average'                  => 'Average',
	'Averia+Gruesa+Libre'      => 'Averia Gruesa Libre',
	'Averia+Libre'             => 'Averia Libre',
	'Averia+Sans+Libre'        => 'Averia Sans Libre',
	'Averia+Serif+Libre'       => 'Averia Serif Libre',                       
	'Bad+Script'               => 'Bad Script',
	'Balthazar'                => 'Balthazar',
	'Bangers'                  => 'Bangers',
	'Basic'                    => 'Basic',
	'Battambang'               => 'Battambang',
	'Baumans'                  => 'Baumans',
	'Bayon'                    => 'Bayon',
	'Belgrano'                 => 'Belgrano',
	'Belleza'                  => 'Belleza',    
	'Bentham'                  => 'Bentham',
	'Berkshire+Swash'          => 'Berkshire Swash',    
	'Bevan'                    => 'Bevan',
	'Bigshot+One'              => 'Bigshot One',
	'Bilbo'                    => 'Bilbo',
	'Bilbo+Swash+Caps'         => 'Bilbo Swash Caps',
	'Bitter'                   => 'Bitter',
	'Black+Ops+One'            => 'Black Ops One',
	'Bokor'                    => 'Bokor',
	'Bonbon'                   => 'Bonbon',
	'Boogaloo'                 => 'Boogaloo',
	'Bowlby+One'               => 'Bowlby One',
	'Bowlby+One+SC'            => 'Bowlby One SC',
	'Brawler'                  => 'Brawler',
	'Bree+Serif'               => 'Bree Serif',
	'Bubblegum+Sans'           => 'Bubblegum Sans',
	'Buda'                     => 'Buda',
	'Buenard'                  => 'Buenard',
	'Butcherman'               => 'Butcherman',
	'Butterfly+Kids'           => 'Butterfly Kids',
	'Cabin'                    => 'Cabin',
	'Cabin+Condensed'          => 'Cabin Condensed',
	'Cabin+Sketch'             => 'Cabin Sketch',
	'Caesar+Dressing'          => 'Caesar Dressing',
	'Cagliostro'               => 'Cagliostro',
	'Calligraffitti'           => 'Calligraffitti',
	'Cambo'                    => 'Cambo',
	'Candal'                   => 'Candal',
	'Cantarell'                => 'Cantarell',
	'Cantata+One'              => 'Cantata One',
	'Cardo'                    => 'Cardo',
	'Carme'                    => 'Carme',
	'Carter+One'               => 'Carter One',
	'Caudex'                   => 'Caudex',    
	'Cedarville Cursive'       => 'Cedarville Cursive',
	'Ceviche+One'              => 'Ceviche One',    
	'Changa+One'               => 'Changa One',
	'Chango'                   => 'Chango',
	'Chau+Philomene+One'       => 'Chau Philomene One',    
	'Chelsea+Market'           => 'Chelsea Market',
	'Chenla'                   => 'Chenla',    
	'Cherry+Cream+Soda'        => 'Cherry Cream Soda',
	'Chewy'                    => 'Chewy',
	'Chicle'                   => 'Chicle',
	'Chivo'                    => 'Chivo',    

	'Coda'                     => 'Coda',
	'Coda+Caption'             => 'Coda Caption',
	'Codystar'                 => 'Codystar',
	'Comfortaa'                => 'Comfortaa',
	'Coming+Soon'              => 'Coming Soon',
	'Concert+One'              => 'Concert One',    
	'Condiment'                => 'Condiment',
	'Content'                  => 'Content',    
	'Contrail+One'             => 'Contrail One',
	'Convergence'              => 'Convergence',
	'Cookie'                   => 'Cookie',
	'Copse'                    => 'Copse',
	'Corben'                   => 'Corben',
	'Cousine'                  => 'Cousine',
	'Coustard'                 => 'Coustard',
	'Covered+By+Your+Grace'    => 'Covered By Your Grace',
	'Crafty+Girls'             => 'Crafty Girls',
	'Creepster'                => 'Creepster',        
	'Crete+Round'              => 'Crete Round',
	'Crimson+Text'             => 'Crimson Text',
	'Crushed'                  => 'Crushed',
	'Cuprum'                   => 'Cuprum',
	'Cutive'                   => 'Cutive', 
	'Damion'                   => 'Damion',
	'Dancing+Script'           => 'Dancing Script',
	'Dangrek'                  => 'Dangrek',
	'Dawning+Of+A+New+Day'     => 'Dawning of a New Day',
	'Days+One'                 => 'Days One',        
	'Delius'                   => 'Delius',
	'Delius+Swash+Caps'        => 'Delius Swash Caps',
	'Delius+Unicase'           => 'Delius Unicase',
	'Della+Respira'            => 'Della Respira',
	'Devonshire'               => 'Devonshire',
	'Didact+Gothic'            => 'Didact Gothic',
	'Diplomata'                => 'Diplomata',
	'Diplomata+SC'             => 'Diplomata SC',
	'Doppio+One'               => 'Doppio One',
	'Dorsa'                    => 'Dorsa',
	'Dosis'                    => 'Dosis',    
	'Dr+Sugiyama'              => 'Dr Sugiyama',
	'Droid+Sans'               => 'Droid Sans',
	'Droid+Sans+Mono'          => 'Droid Sans Mono',
	'Droid+Serif'              => 'Droid Serif',
	'Duru+Sans'                => 'Duru Sans',
	'Dynalight'                => 'Dynalight',
	'Eater'                    => 'Eater',
	'EB+Garamond'              => 'EB Garamond',
	'Economica'                => 'Economica',
	'Electrolize'              => 'Electrolize',
	'Emblema+One'              => 'Emblema One',
	'Emilys+Candy'             => 'Emilys Candy',    
	'Engagement'               => 'Engagement',
	'Enriqueta'                => 'Enriqueta',
	'Erica+One'                => 'Erica One',
	'Esteban'                  => 'Esteban',
	'Euphoria+Script'          => 'Euphoria Script',
	'Ewert'                    => 'Ewert',    
	'Exo'                      => 'Exo',
    'Exo 2'                    => 'Exo+2',
	'Expletus+Sans'            => 'Expletus Sans',
	'Fanwood+Text'             => 'Fanwood Text',
	'Fascinate'                => 'Fascinate',
	'Fascinate+Inline'         => 'Fascinate Inline',
	'Federant'                 => 'Federant',
	'Federo'                   => 'Federo',
	'Felipa'                   => 'Felipa',
	'Fjord+One'                => 'Fjord One',
	'Flamenco'                 => 'Flamenco',
	'Flavors'                  => 'Flavors',
	'Fondamento'               => 'Fondamento',
	'Fontdiner+Swanky'         => 'Fontdiner Swanky',
	'Forum'                    => 'Forum',
	'Francois+One'             => 'Francois One',
	'Fredericka+The+Great'     => 'Fredericka the Great',   
    'Fredoka+One'              => 'Fredoka One',
    'Freehand'                 => 'Freehand', 
	'Fresca'                   => 'Fresca',
	'Frijole'                  => 'Frijole',
	'Fugaz+One'                => 'Fugaz One',
	'Galdeano'                 => 'Galdeano',
	'Gentium+Basic'            => 'Gentium Basic',
	'Gentium+Book+Basic'       => 'Gentium Book Basic',
	'Geo'                      => 'Geo',
	'Geostar'                  => 'Geostar',
	'Geostar+Fill'             => 'Geostar Fill',
	'Germania+One'             => 'Germania One',
	'GFS+Didot'                => 'GFS Didot',
	'GFS+Neohellenic'          => 'GFS Neohellenic',
	'Give+You+Glory'           => 'Give You Glory',
	'Glass+Antiqua'            => 'Glass Antiqua',
	'Glegoo'                   => 'Glegoo',
	'Gloria+Hallelujah'        => 'Gloria Hallelujah',
	'Goblin+One'               => 'Goblin One',
	'Gochi+Hand'               => 'Gochi Hand',
	'Gorditas'                 => 'Gorditas',
	'Goudy+Bookletter+1911'    => 'Goudy Bookletter 1911',
	'Graduate'                 => 'Graduate',
	'Gravitas+One'             => 'Gravitas One',
	'Great Vibes'              => 'Great Vibes',
	'Gruppo'                   => 'Gruppo',
	'Gudea'                    => 'Gudea',
	'Habibi'                   => 'Habibi',
	'Hammersmith+One'          => 'Hammersmith One',
	'Handlee'                  => 'Handlee',
	'Hanuman'                  => 'Hanuman',
	'Happy+Monkey'             => 'Happy Monkey',
	'Henny+Penny'              => 'Henny Penny',
	'Herr+Von+Muellerhoff'     => 'Herr Von Muellerhoff',
	'Holtwood+One+SC'          => 'Holtwood One SC',
	'Homemade+Apple'           => 'Homemade Apple',    
	'Homenaje'                 => 'Homenaje',
	'Iceberg'                  => 'Iceberg',
	'Iceland'                  => 'Iceland',
	'IM+Fell+Double+Pica'      => 'IM Fell Double Pica',
	'IM+Fell+Double+Pica+SC'   => 'IM Fell Double Pica SC',
	'IM+Fell+DW+Pica'          => 'IM Fell DW Pica',    
	'IM+Fell+DW+Pica+SC'       => 'IM Fell DW Pica SC',
	'IM+Fell+English'          => 'IM Fell English',
	'IM+Fell+English+SC'       => 'IM Fell English SC',
	'IM+Fell+French+Canon'     => 'IM Fell French Canon',
	'IM+Fell+French+Canon+SC'  => 'IM Fell French Canon SC',
	'IM+Fell+Great+Primer'     => 'IM Fell Great Primer',
	'IM+Fell+Great+Primer+SC'  => 'IM Fell Great Primer SC',
	'Imprima'                  => 'Imprima',
	'Inconsolata'              => 'Inconsolata',
	'Inder'                    => 'Inder',
	'Indie+Flower'             => 'Indie Flower',
	'Inika'                    => 'Inika',
	'Irish+Grover'             => 'Irish Grover',
	'Istok+Web'                => 'Istok Web',
	'Italiana'                 => 'Italiana',
	'Italianno'                => 'Italianno',
	'Jim+Nightshade'           => 'Jim Nightshade',
	'Jockey+One'               => 'Jockey One',
	'Jolly Lodger'             => 'Jolly Lodger',
	'Josefin+Sans'             => 'Josefin Sans',
	'Josefin+Slab'             => 'Josefin Slab',
	'Judson'                   => 'Judson',
	'Julee'                    => 'Julee',
	'Junge'                    => 'Junge',
	'Jura'                     => 'Jura',
	'Just+Another+Hand'        => 'Just Another Hand',
	'Just+Me+Again+Down+Here'  => 'Just Me Again Down Here',
	'Kameron'                  => 'Kameron',
	'Karla'                    => 'Karla',
	'Kaushan+Script'           => 'Kaushan Script',
	'Kelly+Slab'               => 'Kelly Slab',
	'Kenia'                    => 'Kenia',
	'Khmer'                    => 'Khmer',
	'Knewave'                  => 'Knewave',
	'Kotta+One'                => 'Kotta One',
	'Koulen'                   => 'Koulen',
	'Kranky'                   => 'Kranky',
	'Kreon'                    => 'Kreon',
	'Kristi'                   => 'Kristi',
	'Krona+One'                => 'Krona One',
	'La+Belle+Aurore'          => 'La Belle Aurore',
	'Lancelot'                 => 'Lancelot',
	'Lato'                     => 'Lato',
	'League+Script'            => 'League Script',
	'Leckerli+One'             => 'Leckerli One',
	'Ledger'                   => 'Ledger',
	'Lekton'                   => 'Lekton',
	'Lemon'                    => 'Lemon',
	'Lilita+One'               => 'Lilita One',
	'Limelight'                => 'Limelight',
	'Linden+Hill'              => 'Linden Hill',
	'Lobster'                  => 'Lobster',
	'Lobster+Two'              => 'Lobster Two',
	'Londrina+Outline'         => 'Londrina Outline',
	'Londrina+Shadow'          => 'Londrina Shadow',
	'Londrina+Sketch'          => 'Londrina Sketch',
	'Londrina+Solid'           => 'Londrina Solid',
	'Lora'                     => 'Lora',
	'Love+Ya+Like+A+Sister'    => 'Love Ya Like A Sister',
	'Loved+By+The+King'        => 'Loved by the King',
	'Lovers+Quarrel'           => 'Lovers Quarrel',
	'Luckiest+Guy'             => 'Luckiest Guy',
	'Lusitana'                 => 'Lusitana',
	'Lustria'                  => 'Lustria',
	'Macondo'                  => 'Macondo',
	'Macondo+Swash+Caps'       => 'Macondo Swash Caps',
	'Magra'                    => 'Magra',
	'Maiden+Orange'            => 'Maiden Orange',
	'Mako'                     => 'Mako',
	'Marck+Script'             => 'Marck Script',
	'Marko+One'                => 'Marko One',
	'Marmelad'                 => 'Marmelad',
	'Marvel'                   => 'Marvel',
	'Mate'                     => 'Mate',
	'Mate+SC'                  => 'Mate SC',
	'Maven+Pro'                => 'Maven Pro',    
	'Meddon'                   => 'Meddon',
	'MedievalSharp'            => 'MedievalSharp',
	'Medula+One'               => 'Medula One',
	'Megrim'                   => 'Megrim',
	'Merienda+One'             => 'Merienda One',
	'Merriweather'             => 'Merriweather',
	'Metal'                    => 'Metal',
	'Metamorphous'             => 'Metamorphous',
	'Metrophobic'              => 'Metrophobic',
	'Michroma'                 => 'Michroma',
	'Miltonian'                => 'Miltonian',
	'Miltonian+Tattoo'         => 'Miltonian Tattoo',
	'Miniver'                  => 'Miniver',
	'Miss+Fajardose'           => 'Miss Fajardose',
	'Modern+Antiqua'           => 'Modern Antiqua',
	'Molengo'                  => 'Molengo',
	'Monofett'                 => 'Monofett',
	'Monoton'                  => 'Monoton',
	'Monsieur+La+Doulaise'     => 'Monsieur La Doulaise',
	'Montaga'                  => 'Montaga',
	'Montez'                   => 'Montez',
	'Montserrat'               => 'Montserrat',
	'Moul'                     => 'Moul',
	'Moulpali'                 => 'Moulpali',
	'Mountains+of+Christmas'   => 'Mountains of Christmas',
	'Mr+Bedfort'               => 'Mr Bedfort',
	'Mr+Dafoe'                 => 'Mr Dafoe',
	'Mr+De+Haviland'           => 'Mr De Haviland',
	'Mrs+Saint+Delafield'      => 'Mrs Saint Delafield',
	'Mrs+Sheppards'            => 'Mrs Sheppards',
	'Muli'                     => 'Muli',
	'Mystery+Quest'            => 'Mystery Quest',
	'Neucha'                   => 'Neucha',
	'Neuton'                   => 'Neuton',
	'News+Cycle'               => 'News Cycle',
	'Niconne'                  => 'Niconne',
	'Nixie+One'                => 'Nixie One',
	'Nobile'                   => 'Nobile',
	'Nokora'                   => 'Nokora',
	'Norican'                  => 'Norican',
	'Nosifer'                  => 'Nosifer',
	'Nothing+You+Could+Do'     => 'Nothing You Could Do',
	'Noticia+Text'             => 'Noticia Text',
	'Nova+Cut'                 => 'Nova Cut',
	'Nova+Flat'                => 'Nova Flat',
	'Nova+Mono'                => 'Nova Mono',
	'Nova+Oval'                => 'Nova Oval',
	'Nova+Round'               => 'Nova Round',
	'Nova+Script'              => 'Nova Script',
	'Nova+Slim'                => 'Nova Slim',
	'Nova+Square'              => 'Nova Square',
	'Numans'                   => 'Numans',
	'Nunito'                   => 'Nunito',
	'Odor+Mean+Chey'           => 'Odor Mean Chey',
	'Old+Standard+TT'          => 'Old Standard TT',
	'Oldenburg'                => 'Oldenburg',
	'Oleo+Script'              => 'Oleo Script',
	'Open+Sans'                => 'Open Sans',
	'Open+Sans+Condensed'      => 'Open Sans Condensed',
	'Orbitron'                 => 'Orbitron',
	'Original+Surfer'          => 'Original Surfer',
	'Oswald'                   => 'Oswald',
	'Over+the+Rainbow'         => 'Over the Rainbow',
	'Overlock'                 => 'Overlock',
	'Overlock+SC'              => 'Overlock SC',
	'Ovo'                      => 'Ovo',
	'Oxygen'                   => 'Oxygen',
	'Pacifico'                 => 'Pacifico',
	'Parisienne'               => 'Parisienne',
	'Passero+One'              => 'Passero One',
	'Passion+One'              => 'Passion One',
	'Patrick+Hand'             => 'Patrick Hand',
	'Patua+One'                => 'Patua One',
	'Paytone+One'              => 'Paytone One',
	'Permanent+Marker'         => 'Permanent Marker',
	'Petrona'                  => 'Petrona',
	'Philosopher'              => 'Philosopher',
	'Piedra'                   => 'Piedra',
	'Pinyon+Script'            => 'Pinyon Script',
	'Plaster'                  => 'Plaster',
	'Play'                     => 'Play',
	'Playball'                 => 'Playball',
	'Playfair+Display'         => 'Playfair Display',
	'Podkova'                  => 'Podkova',
	'Poiret+One'               => 'Poiret One',
	'Poller+One'               => 'Poller One',
	'Poly'                     => 'Poly',
	'Pompiere'                 => 'Pompiere',
	'Pontano+Sans'             => 'Pontano Sans',
	'Port+Lligat+Sans'         => 'Port Lligat Sans',
	'Port+Lligat+Slab'         => 'Port Lligat Slab',
	'Prata'                    => 'Prata',
	'Preahvihear'              => 'Preahvihear',
	'Press+Start+2P'           => 'Press Start 2P',
	'Princess+Sofia'           => 'Princess Sofia',
	'Prociono'                 => 'Prociono',
	'Prosto+One'               => 'Prosto One',
	'PT+Mono'                  => 'PT Mono',
	'PT+Sans'                  => 'PT Sans',
	'PT+Sans+Caption'          => 'PT Sans Caption',
	'PT+Sans+Narrow'           => 'PT Sans Narrow',
	'PT+Serif'                 => 'PT Serif',
	'PT+Serif+Caption'         => 'PT Serif Caption',
	'Puritan'                  => 'Puritan',
	'Quantico'                 => 'Quantico',
	'Quattrocento'             => 'Quattrocento',
	'Quattrocento+Sans'        => 'Quattrocento Sans',
	'Questrial'                => 'Questrial',
	'Quicksand'                => 'Quicksand',
	'Qwigley'                  => 'Qwigley',
	'Radley'                   => 'Radley',
	'Raleway'                  => 'Raleway',
	'Rammetto+One'             => 'Rammetto One',
	'Rancho'                   => 'Rancho',
	'Rationale'                => 'Rationale',
	'Redressed'                => 'Redressed',
	'Reenie+Beanie'            => 'Reenie Beanie',
	'Revalia'                  => 'Revalia',
	'Ribeye'                   => 'Ribeye',
	'Ribeye+Marrow'            => 'Ribeye Marrow',
	'Righteous'                => 'Righteous',
	'Rochester'                => 'Rochester',
	'Rock+Salt'                => 'Rock Salt',
	'Rokkitt'                  => 'Rokkitt',
	'Ropa+Sans'                => 'Ropa Sans',
	'Rosario'                  => 'Rosario',
	'Rosarivo'                 => 'Rosarivo',
	'Rouge+Script'             => 'Rouge Script',
	'Ruda'                     => 'Ruda',
	'Ruge+Boogie'              => 'Ruge Boogie',
	'Ruluko'                   => 'Ruluko',
	'Ruslan+Display'           => 'Ruslan Display',
	'Russo+One'                => 'Russo One',
	'Ruthie'                   => 'Ruthie',
	'Sail'                     => 'Sail',
	'Salsa'                    => 'Salsa',
	'Sancreek'                 => 'Sancreek',
	'Sansita+One'              => 'Sansita One',
	'Sarina'                   => 'Sarina',
	'Satisfy'                  => 'Satisfy',
	'Schoolbell'               => 'Schoolbell',
	'Seaweed+Script'           => 'Seaweed Script',
	'Sevillana'                => 'Sevillana',
	'Shadows+Into+Light'       => 'Shadows Into Light',
	'Shadows+Into+Light+Two'   => 'Shadows Into Light Two',
	'Shanti'                   => 'Shanti',
	'Share'                    => 'Share',
	'Shojumaru'                => 'Shojumaru',
	'Short+Stack'              => 'Short Stack',
	'Siemreap'                 => 'Siemreap',
	'Sigmar+One'               => 'Sigmar One',
	'Signika'                  => 'Signika',
	'Signika+Negative'         => 'Signika Negative',
	'Simonetta'                => 'Simonetta',
	'Sirin+Stencil'            => 'Sirin Stencil',
	'Six+Caps'                 => 'Six Caps',
	'Slackey'                  => 'Slackey',
	'Smokum'                   => 'Smokum',
	'Smythe'                   => 'Smythe',
	'Sniglet'                  => 'Sniglet',
	'Snippet'                  => 'Snippet',
	'Sofia'                    => 'Sofia',
	'Sonsie+One'               => 'Sonsie One',
	'Sorts+Mill+Goudy'         => 'Sorts Mill Goudy',
	'Special+Elite'            => 'Special Elite',
	'Spicy+Rice'               => 'Spicy Rice',
	'Spinnaker'                => 'Spinnaker',
	'Spirax'                   => 'Spirax',
	'Squada+One'               => 'Squada One',
	'Stardos+Stencil'          => 'Stardos Stencil',
	'Stint+Ultra+Condensed'    => 'Stint Ultra Condensed',
	'Stint+Ultra+Expanded'     => 'Stint Ultra Expanded',
	'Stoke'                    => 'Stoke',
	'Sue+Ellen+Francisco'      => 'Sue Ellen Francisco',
	'Sunshiney'                => 'Sunshiney',
	'Supermercado+One'         => 'Supermercado One',
	'Suwannaphum'              => 'Suwannaphum',
	'Swanky+And+Moo+Moo'       => 'Swanky and Moo Moo',
	'Syncopate'                => 'Syncopate',
	'Tangerine'                => 'Tangerine',
	'Taprom'                   => 'Taprom',
	'Telex'                    => 'Telex',
	'Tenor+Sans'               => 'Tenor Sans',
	'Terminal+Dosis'           => 'Terminal Dosis',
	'The+Girl+Next+Door'       => 'The Girl Next Door',
	'Tienne'                   => 'Tienne',
	'Tinos'                    => 'Tinos',
	'Titan+One'                => 'Titan One',
	'Trade+Winds'              => 'Trade Winds',
	'Trocchi'                  => 'Trocchi',
	'Trochut'                  => 'Trochut',
	'Trykker'                  => 'Trykker',
	'Tulpen+One'               => 'Tulpen One',
	'Ubuntu'                   => 'Ubuntu',
	'Ubuntu+Condensed'         => 'Ubuntu Condensed',
	'Ubuntu+Mono'              => 'Ubuntu Mono',
	'Ultra'                    => 'Ultra',
	'Uncial+Antiqua'           => 'Uncial Antiqua',
	'UnifrakturCook'           => 'UnifrakturCook',
	'UnifrakturMaguntia'       => 'UnifrakturMaguntia',
	'Unkempt'                  => 'Unkempt',
	'Unlock'                   => 'Unlock',
	'Unna'                     => 'Unna',
	'Varela'                   => 'Varela',
	'Varela+Round'             => 'Varela Round',
	'Vast+Shadow'              => 'Vast Shadow',
	'Vibur'                    => 'Vibur',
	'Vidaloka'                 => 'Vidaloka',
	'Viga'                     => 'Viga',
	'Voces'                    => 'Voces',
	'Volkhov'                  => 'Volkhov',
	'Vollkorn'                 => 'Vollkorn',
	'Voltaire'                 => 'Voltaire',
	'VT323'                    => 'VT323',
	'Waiting+for+the+Sunrise'  => 'Waiting for the Sunrise',
	'Wallpoet'                 => 'Wallpoet',
	'Walter+Turncoat'          => 'Walter Turncoat',
	'Wellfleet'                => 'Wellfleet',
	'Wire+One'                 => 'Wire One',
	'Yanone+Kaffeesatz'        => 'Yanone Kaffeesatz',
	'Yellowtail'               => 'Yellowtail',
	'Yeseva+One'               => 'Yeseva One',
	'Yesteryear'               => 'Yesteryear',
	'Zeyada'                   => 'Zeyada',
		);
        
// Default values

foreach ($languages as $language) { 
    if(empty($marketshop_menu_categories_title[$language["language_id"]])){$marketshop_menu_categories_title[$language["language_id"]] ="Categories";}
    if(empty($marketshop_menu_brands_title[$language["language_id"]])){$marketshop_menu_brands_title[$language["language_id"]] ="Brands";}
    if(empty($marketshop_cloud_zoom_gallery_text[$language["language_id"]])){$marketshop_cloud_zoom_gallery_text[$language["language_id"]] ="Click image for Gallery";}
    if(empty($marketshop_powered[$language["language_id"]])){$marketshop_powered[$language["language_id"]] ="Marketshop Theme &copy; 2015, Theme By Harnish Design";}
    if(empty($marketshop_mobile_menu_title[$language["language_id"]])){$marketshop_mobile_menu_title[$language["language_id"]] ="Menu";}
    
    if(empty($marketshop_top_bar_contact[$language["language_id"]])){$marketshop_top_bar_contact[$language["language_id"]] ="+91 98989898";}
    if(empty($marketshop_top_bar_email[$language["language_id"]])){$marketshop_top_bar_email[$language["language_id"]] ="support@marketshop.com";}
        
    
    if(empty($marketshop_feature_box1_title[$language["language_id"]])){$marketshop_feature_box1_title[$language["language_id"]] ="Free Shipping";}
    if(empty($marketshop_feature_box1_subtitle[$language["language_id"]])){$marketshop_feature_box1_subtitle[$language["language_id"]] ="Free shipping on order over $1000";}
    
    if(empty($marketshop_feature_box2_title[$language["language_id"]])){$marketshop_feature_box2_title[$language["language_id"]] ="Free Return";}
    if(empty($marketshop_feature_box2_subtitle[$language["language_id"]])){$marketshop_feature_box2_subtitle[$language["language_id"]] ="Free return in 24 hour after purchasing";}
    
    if(empty($marketshop_feature_box3_title[$language["language_id"]])){$marketshop_feature_box3_title[$language["language_id"]] ="Gift Cards";}
    if(empty($marketshop_feature_box3_subtitle[$language["language_id"]])){$marketshop_feature_box3_subtitle[$language["language_id"]] ="Give the special perfect gift";}
    
    if(empty($marketshop_feature_box4_title[$language["language_id"]])){$marketshop_feature_box4_title[$language["language_id"]] ="Reward Points";}
    if(empty($marketshop_feature_box4_subtitle[$language["language_id"]])){$marketshop_feature_box4_subtitle[$language["language_id"]] ="Earn and spend with ease";}
}


?>
<style type="text/css">
input { margin:2px; }
.color { border:1px solid #ccc; padding:3px 6px!important; }
.info-help { color: #666; font-size:0.9em; }
small { color:#666; text-transform:none; }
.img-patt { width:45px; display: inline-block; text-align: center; }
.box > .content h2 { font-size:13px; color:#003A88; text-transform:capitalize; margin:0; text-align:left; border:none; }
table.form > tbody > tr > td:first-child { text-align:right; }
.form_bg { background:#f6f6f6; width:100%; }
.marketshop_help { width:20px; height:20px; line-height:20px; border-radius:50%; font-size:13px; font-weight:bold; background:#b7cdd8; display:inline-block; text-align:center; color:#FFF!important; text-decoration:none; margin-left:8px; }
#contact_about_tabs { height:37px; }
#contact_about_tabs a { padding:10px 80px; position:relative; }
#contact_about_tabs a.selected { padding-bottom:11px; }
#contact_about_tabs > a.contact_or:after { display: block; content: " OR "; clear: both; width:15px; height:15px; line-height:15px; text-align:center; background:#fff; padding:6px; border-radius:50%; position:absolute; font-size:12px; right:-15px; top:-14px; border:1px solid #ddd; z-index:1; }
.vtabs a { padding:9px 14px 9px 15px; margin-bottom:-1px; }
</style>
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <div style="margin:10px 0 20px">
        <label><?php echo $entry_status; ?></label>
        <select name="marketshop_status" class="on_off">
          <?php if ($marketshop_status) { ?>
          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
          <option value="0"><?php echo $text_disabled; ?></option>
          <?php } else { ?>
          <option value="1"><?php echo $text_enabled; ?></option>
          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
          <?php } ?>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>Skin:</label>
        <select name="marketshop_skin" class="form-control">
                        <option value="1"<?php if($marketshop_skin == '1') echo ' selected="selected"';?>>MarketShop 1</option>
                        <option value="2"<?php if($marketshop_skin == '2') echo ' selected="selected"';?>>MarketShop 2</option>
                        <option value="3"<?php if($marketshop_skin == '3') echo ' selected="selected"';?>>MarketShop 3</option>
                        <option value="4"<?php if($marketshop_skin == '4') echo ' selected="selected"';?>>MarketShop 4</option>
                      </select> <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_41.jpg">?</a>
      </div>
      <div id="tabs" class="htabs"> <a href="#tab_general">General Options</a> <a href="#tab_footer"><?php echo $entry_footer; ?></a> <a href="#tab_side_blocks">Side Blocks</a> <a href="#tab_background">Background Image</a> <a href="#tab_colors">Colors and Style</a> <a href="#tab_fonts"><?php echo $entry_fonts_sub; ?></a> <a href="#tab_custom_css"><?php echo $entry_custom_css; ?></a> </div>
      <div id="tab_general">
        <div id="general_tabs" class="vtabs"> <a href="#tab_general2"><?php echo $entry_general; ?></a> <a href="#tab_layout">Layout</a> <a href="#tab_top_menu">Header</a> <a href="#tab_main_menu"><?php echo $entry_main_menu; ?></a> <a href="#feature_box">Feature Box</a> <a href="#tab_product_grid"><?php echo $entry_product_grid; ?></a> <a href="#tab_category_page"><?php echo $entry_category_page; ?></a> <a href="#tab_product_page">Product Page</a> </div>
        <div id="tab_general2" class="vtabs-content">
          <table class="form">
            <tr>
              <td>Search Auto-Complete:</td>
              <td><select name="marketshop_search_auto_complete" class="on_off">
                  <option value="1"<?php if($marketshop_search_auto_complete == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_search_auto_complete == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_1.jpg">?</a></td>
            </tr>
            <tr>
              <td>Mobile Main Menu Title:</td>
              <td><div style="width:160px; float:left;">
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_mobile_menu_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_mobile_menu_title[$language['language_id']]) ? $marketshop_mobile_menu_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </div>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_2.jpg">?</a></td>
            </tr>
            <tr>
              <td>Slideshow</td>
              <td><select name="marketshop_homepage_slideshow" class="form-control">
                  <option value="1"<?php if($marketshop_homepage_slideshow == '1') echo ' selected="selected"';?>>Default OpenCart Slider</option>
                  <option value="2"<?php if($marketshop_homepage_slideshow == '2') echo ' selected="selected"';?>>OwlCarousel Slider</option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_30.jpg">?</a></td>
            </tr>
            <tr>
              <td><?php echo $entry_percentage_discount_badge; ?></td>
              <td><select name="marketshop_percentage_discount_badge" class="on_off">
                  <option value="1"<?php if($marketshop_percentage_discount_badge == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_percentage_discount_badge == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_31.jpg">?</a></td>
            </tr>
            <tr>
              <td>Affiliate Link:<br />
                <small>(in Footer)</small></td>
              <td><select name="marketshop_affiliate_status" class="on_off">
                  <option value="1"<?php if($marketshop_affiliate_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_affiliate_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_5.jpg">?</a></td>
            </tr>
            <tr>
              <td>Scroll to Top Button:</td>
              <td><select name="marketshop_back_to_top" class="on_off">
                  <option value="1"<?php if($marketshop_back_to_top == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_back_to_top == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_6.jpg">?</a></td>
            </tr>
          </table>
        </div>
        <div id="tab_layout" class="vtabs-content">
          <table class="form">
            <!--<tr>
            <td>Responsive Design: </td>
            <td><select name="marketshop_responsive_design" class="on_off">
            <option value="1"<?php if($marketshop_responsive_design == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                <option value="2"<?php if($marketshop_responsive_design == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
              </select><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_7.jpg">?</a></td>
          </tr> -->
            <tr>
              <td>Layout Style:</td>
              <td><select name="marketshop_layout_style" class="on_off">
                  <option value="1"<?php if($marketshop_layout_style == '1') echo ' selected="selected"';?>>Full width</option>
                  <option value="2"<?php if($marketshop_layout_style == '2') echo ' selected="selected"';?>>Boxed</option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_8.jpg">?</a></td>
            </tr>
            <tr>
              <td>Main Menu Style:</td>
              <td><select name="marketshop_main_menu_style" class="on_off">
                  <option value="1"<?php if($marketshop_main_menu_style == '1') echo ' selected="selected"';?>>Full width</option>
                  <option value="2"<?php if($marketshop_main_menu_style == '2') echo ' selected="selected"';?>>Boxed</option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_32.jpg">?</a></td>
            </tr>
          </table>
        </div>
        <div id="tab_top_menu" class="vtabs-content">
          <table class="form form_bg">
            <tr>
              <td><h2>Header Style</h2></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Style :</td>
              <td><select name="marketshop_header_style">
                  <option value="1"<?php if($marketshop_header_style == '1') echo ' selected="selected"';?>>Style1 - ( Logo Left & Search Right )</option>
                  <option value="2"<?php if($marketshop_header_style == '2') echo ' selected="selected"';?>>Style2 - ( Logo Center & Search Right )</option>
                  <option value="3"<?php if($marketshop_header_style == '3') echo ' selected="selected"';?>>Style3 - ( Logo Left & Search Center )</option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_9.jpg">?</a></td>
            </tr>
            <tr>
                      <td>Margin<br /><small>Top &amp; bottom</small></td>
                      <td><select name="marketshop_header_margin">
                      	  <option value=""<?php if($marketshop_header_margin == '1') echo ' selected="selected"';?>>Default</option>
                          <option value="5"<?php if($marketshop_header_margin == '5') echo ' selected="selected"';?>>5px</option>
                          <option value="10"<?php if($marketshop_header_margin == '10') echo ' selected="selected"';?>>10px</option>
                          <option value="15"<?php if($marketshop_header_margin == '15') echo ' selected="selected"';?>>15px</option>
                          <option value="20"<?php if($marketshop_header_margin == '20') echo ' selected="selected"';?>>20px</option>
                          <option value="25"<?php if($marketshop_header_margin == '25') echo ' selected="selected"';?>>25px</option>
                          <option value="30"<?php if($marketshop_header_margin == '30') echo ' selected="selected"';?>>30px</option>
                          <option value="35"<?php if($marketshop_header_margin == '35') echo ' selected="selected"';?>>35px</option>
                          <option value="40"<?php if($marketshop_header_margin == '40') echo ' selected="selected"';?>>40px</option>
                        </select>
                        <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_40.jpg">?</a>
                        </td>
                    </tr>
          </table>
          <h2>Top Bar</h2>
          <table class="form">
            <tr>
              <td>Telephone No:
                <select name="marketshop_top_bar_contact_status">
                  <option value="0"<?php if($marketshop_top_bar_contact_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_top_bar_contact_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
              <td><?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_top_bar_contact[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_top_bar_contact[$language['language_id']]) ? $marketshop_top_bar_contact[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
            </tr>
            <tr>
              <td>Email Id:
                <select name="marketshop_top_bar_email_status">
                  <option value="0"<?php if($marketshop_top_bar_email_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_top_bar_email_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
              <td><table>
                  <tr>
                    <td><?php foreach ($languages as $language) { ?>
                      <input type="text" name="marketshop_top_bar_email[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_top_bar_email[$language['language_id']]) ? $marketshop_top_bar_email[$language['language_id']] : ''; ?>" />
                      <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                      <?php } ?></td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td>Wishlist Link:</td>
              <td><select name="marketshop_wishlist_top_link" class="on_off">
                  <option value="1"<?php if($marketshop_wishlist_top_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_wishlist_top_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
            </tr>
            <tr>
              <td>My Account Link:</td>
              <td><select name="marketshop_account_top_link" class="on_off">
                  <option value="1"<?php if($marketshop_account_top_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_account_top_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
            </tr>
            <tr>
              <td>Checkout Link:</td>
              <td><select name="marketshop_checkout_top_link" class="on_off">
                  <option value="1"<?php if($marketshop_checkout_top_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_checkout_top_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
            </tr>
            <tr>
              <td>Language/Currency Title:</td>
              <td><select name="marketshop_language_currency_title" class="on_off">
                  <option value="1"<?php if($marketshop_language_currency_title == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_language_currency_title == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_11.jpg">?</a></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_links; ?> &nbsp;<small>(in Top Bar)</small><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_12.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_link1; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link1_top"<?php if($marketshop_custom_link1_top == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link1_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link1_top_title[$language['language_id']]) ? $marketshop_custom_link1_top_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link1_top_url" value="<?php echo $marketshop_custom_link1_top_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link1_top">
                  <option value="_self"<?php if($marketshop_target_link1_top == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link1_top == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link1_top == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_link2; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link2_top"<?php if($marketshop_custom_link2_top == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link2_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link2_top_title[$language['language_id']]) ? $marketshop_custom_link2_top_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link2_top_url" value="<?php echo $marketshop_custom_link2_top_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link2_top">
                  <option value="_self"<?php if($marketshop_target_link2_top == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link2_top == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link2_top == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_link3; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link3_top"<?php if($marketshop_custom_link3_top == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link3_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link3_top_title[$language['language_id']]) ? $marketshop_custom_link3_top_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link3_top_url" value="<?php echo $marketshop_custom_link3_top_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link3_top">
                  <option value="_self"<?php if($marketshop_target_link3_top == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link3_top == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link3_top == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 1 &nbsp;<small>(in Top Bar)</small><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_13.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_custom_block_top_status">
                  <option value="0"<?php if($marketshop_custom_block_top_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_block_top_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <div id="language8" class="htabs" style="padding-left:165px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab8-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab8-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><input type="text" name="marketshop_custom_block_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block_top_title[$language['language_id']]) ? $marketshop_custom_block_top_title[$language['language_id']] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_block_top_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block_top_content[$language['language_id']]) ? $marketshop_custom_block_top_content[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
          <table class="form">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 2 &nbsp;<small>(in Top Bar)</small><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_13.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_custom_block2_top_status">
                  <option value="0"<?php if($marketshop_custom_block2_top_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_block2_top_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <div id="language9" class="htabs" style="padding-left:165px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab9-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab9-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><input type="text" name="marketshop_custom_block2_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block2_top_title[$language['language_id']]) ? $marketshop_custom_block2_top_title[$language['language_id']] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_block2_top_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block2_top_content[$language['language_id']]) ? $marketshop_custom_block2_top_content[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </div>
        <div id="tab_main_menu" class="vtabs-content">
        <table class="form form_bg">
        <tr>
              <td colspan="2"><h2>Align</h2></td>
            </tr>
            <tr>
              <td>Text Align:</td>
              <td><select name="marketshop_main_menu_align" class="form-control">
                      <option value="1"<?php if($marketshop_main_menu_align == '1') echo ' selected="selected"';?>>Left</option>
                      <option value="2"<?php if($marketshop_main_menu_align == '2') echo ' selected="selected"';?>>Center</option>
                    </select>
                    <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_39.jpg">?</a>
                    </td>
            </tr>
                </table>
          <table class="form">
          
                
            <tr>
              <td colspan="2"><h2><?php echo $entry_home_page_link; ?></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_home_page_link" class="on_off">
                  <option value="1"<?php if($marketshop_home_page_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_home_page_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_14.jpg">?</a></td>
            </tr>
            <tr>
              <td>Style</td>
              <td><select name="marketshop_home_page_link_icon" class="on_off">
                  <option value="1"<?php if($marketshop_home_page_link_icon == '1') echo ' selected="selected"';?>>Text</option>
                  <option value="2"<?php if($marketshop_home_page_link_icon == '2') echo ' selected="selected"';?>>Icon</option>
                </select></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2><?php echo $entry_categories; ?></h2></td>
            </tr>
            <tr>
              <td>Categories Style</td>
              <td><select name="marketshop_top_menu">
                  <option value="1"<?php if($marketshop_top_menu == '1') echo ' selected="selected"';?>><?php echo $entry_opencart; ?></option>
                  <option value="2"<?php if($marketshop_top_menu == '2') echo ' selected="selected"';?>><?php echo $entry_vertical; ?></option>
                  <option value="3"<?php if($marketshop_top_menu == '3') echo ' selected="selected"';?>><?php echo $entry_horizontal; ?></option>
                  <option value="4"<?php if($marketshop_top_menu == '4') echo ' selected="selected"';?>><?php echo $entry_horizontal2; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_15.jpg">?</a></td>
            </tr>
            <tr>
              <td><?php echo $entry_title_label; ?><br />
                <small>(Only For Vertical &amp; Horizontal Style)</small></td>
              <td><div style="width:160px; float:left;">
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_menu_categories_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_menu_categories_title[$language['language_id']]) ? $marketshop_menu_categories_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </div>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_16.jpg">?</a></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="5"><h2>Brands<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_17.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_menu_brands">
                  <option value="0"<?php if($marketshop_menu_brands == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_menu_brands == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_title_label; ?></td>
              <td><?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_menu_brands_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_menu_brands_title[$language['language_id']]) ? $marketshop_menu_brands_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
            </tr>
            <tr>
              <td>Brands Display Style:</td>
              <td><select name="marketshop_brands_display_style">
                  <option value="1"<?php if($marketshop_brands_display_style == '1') echo ' selected="selected"';?>>Name</option>
                  <option value="2"<?php if($marketshop_brands_display_style == '2') echo ' selected="selected"';?>>Logo</option>
                  <option value="3"<?php if($marketshop_brands_display_style == '3') echo ' selected="selected"';?>>Logo with Name</option>
                </select></td>
            </tr>
          </table>
          
          
          <table class="form form_bg">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_links; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_20.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_link1; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link1"<?php if($marketshop_custom_link1 == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link1_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link1_title[$language['language_id']]) ? $marketshop_custom_link1_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link1_url" value="<?php echo $marketshop_custom_link1_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link1">
                  <option value="_self"<?php if($marketshop_target_link1 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link1 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link1 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_link2; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link2"<?php if($marketshop_custom_link2 == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link2_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link2_title[$language['language_id']]) ? $marketshop_custom_link2_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link2_url" value="<?php echo $marketshop_custom_link2_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link2">
                  <option value="_self"<?php if($marketshop_target_link2 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link2 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link2 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_link3; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link3"<?php if($marketshop_custom_link3 == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link3_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link3_title[$language['language_id']]) ? $marketshop_custom_link3_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link3_url" value="<?php echo $marketshop_custom_link3_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link3">
                  <option value="_self"<?php if($marketshop_target_link3 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link3 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link3 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_link4; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link4"<?php if($marketshop_custom_link4 == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link4_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link4_title[$language['language_id']]) ? $marketshop_custom_link4_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link4_url" value="<?php echo $marketshop_custom_link4_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link4">
                  <option value="_self"<?php if($marketshop_target_link4 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link4 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link4 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_link5; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link5"<?php if($marketshop_custom_link5 == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link5_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link5_title[$language['language_id']]) ? $marketshop_custom_link5_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link5_url" value="<?php echo $marketshop_custom_link5_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_target_link5">
                  <option value="_self"<?php if($marketshop_target_link5 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link5 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_target_link5 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 1<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_21.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_custom_block_status">
                  <option value="0"<?php if($marketshop_custom_block_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_block_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <div id="language2" class="htabs" style="padding-left:165px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab2-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab2-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><input type="text" name="marketshop_custom_block_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block_title[$language['language_id']]) ? $marketshop_custom_block_title[$language['language_id']] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_block_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block_content[$language['language_id']]) ? $marketshop_custom_block_content[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
          <table class="form">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 2<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_21.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_custom_block2_status">
                  <option value="0"<?php if($marketshop_custom_block2_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_block2_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <div id="language4" class="htabs" style="padding-left:165px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab4-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab4-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><input type="text" name="marketshop_custom_block2_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block2_title[$language['language_id']]) ? $marketshop_custom_block2_title[$language['language_id']] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_block2_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block2_content[$language['language_id']]) ? $marketshop_custom_block2_content[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
          <table class="form">
            <tr>
              <td colspan="5"><h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 3<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_21.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_custom_block3_status">
                  <option value="0"<?php if($marketshop_custom_block3_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_block3_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <div id="language5" class="htabs" style="padding-left:165px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab5-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab5-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><input type="text" name="marketshop_custom_block3_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block3_title[$language['language_id']]) ? $marketshop_custom_block3_title[$language['language_id']] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_block3_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block3_content[$language['language_id']]) ? $marketshop_custom_block3_content[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
          <table class="form form_bg">
            <tr>
              <td colspan="5"><h2><?php echo $entry_information_pages; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_18.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_information_page">
                  <option value="0"<?php if($marketshop_information_page == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_information_page == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="5"><h2><?php echo $entry_my_account; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_19.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_my_account">
                  <option value="0"<?php if($marketshop_my_account == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_my_account == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="5"><h2><?php echo $entry_contact_us; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_22.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_contact_us">
                  <option value="0"<?php if($marketshop_contact_us == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_contact_us == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="5"><h2>Custom Link for Right Side <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_33.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_link1; ?></td>
              <td><input type="checkbox" value="1" name="marketshop_custom_link_right"<?php if($marketshop_custom_link_right == '1') echo ' checked="checked"';?> /></td>
              <td><?php echo $entry_title_label; ?><br />
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_custom_link_right_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link_right_title[$language['language_id']]) ? $marketshop_custom_link_right_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
              <td><?php echo $entry_url; ?><br />
                <input type="text" name="marketshop_custom_link_right_url" value="<?php echo $marketshop_custom_link_right_url; ?>" /></td>
              <td><?php echo $entry_open; ?><br />
                <select name="marketshop_custom_link_right_target">
                  <option value="_self"<?php if($marketshop_custom_link_right_target == '_self') echo ' selected="selected"';?><?php if($marketshop_custom_link_right_target == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                  <option value="_blank"<?php if($marketshop_custom_link_right_target == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                </select></td>
            </tr>
          </table>
        </div>
        <div id="feature_box" class="vtabs-content"> <br />
          <h2>Feature Box <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_34.jpg">?</a></h2>
          <br />
          <table class="form form_bg">
            <tr>
              <td>Position:</td>
              <td><select name="marketshop_feature_box_show_header_footer">
                  <option value="1"<?php if($marketshop_feature_box_show_header_footer == '1') echo ' selected="selected"';?>>In Header</option>
                  <option value="2"<?php if($marketshop_feature_box_show_header_footer == '2') echo ' selected="selected"';?>>In Footer</option>
                </select></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Layout:</td>
              <td><select name="marketshop_feature_box_homepage_only">
                  <option value="1"<?php if($marketshop_feature_box_homepage_only == '1') echo ' selected="selected"';?>>Only HomePage</option>
                  <option value="2"<?php if($marketshop_feature_box_homepage_only == '2') echo ' selected="selected"';?>>All Pages</option>
                </select></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Box in Row:</td>
              <td><select name="marketshop_feature_box_per_row">
                  <option value="pr1"<?php if($marketshop_feature_box_per_row == 'pr1') echo ' selected="selected"';?>>1</option>
                  <option value="pr2"<?php if($marketshop_feature_box_per_row == 'pr2') echo ' selected="selected"';?>>2</option>
                  <option value="pr3"<?php if($marketshop_feature_box_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                  <option value="pr4"<?php if($marketshop_feature_box_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                </select></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><?php echo $entry_title_label; ?></td>
              <td>Font Size:
                <select name="marketshop_feature_box_title_font_size">
                  <option value=""<?php if($marketshop_feature_box_title_font_size == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="11px"<?php if($marketshop_feature_box_title_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                  <option value="12px"<?php if($marketshop_feature_box_title_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                  <option value="13px"<?php if($marketshop_feature_box_title_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                  <option value="14px"<?php if($marketshop_feature_box_title_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                  <option value="15px"<?php if($marketshop_feature_box_title_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                  <option value="16px"<?php if($marketshop_feature_box_title_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                  <option value="17px"<?php if($marketshop_feature_box_title_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                  <option value="18px"<?php if($marketshop_feature_box_title_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                  <option value="19px"<?php if($marketshop_feature_box_title_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                  <option value="20px"<?php if($marketshop_feature_box_title_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                  <option value="21px"<?php if($marketshop_feature_box_title_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                  <option value="22px"<?php if($marketshop_feature_box_title_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                  <option value="23px"<?php if($marketshop_feature_box_title_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                  <option value="24px"<?php if($marketshop_feature_box_title_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                  <option value="25px"<?php if($marketshop_feature_box_title_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                  <option value="26px"<?php if($marketshop_feature_box_title_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                  <option value="27px"<?php if($marketshop_feature_box_title_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                  <option value="28px"<?php if($marketshop_feature_box_title_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                  <option value="29px"<?php if($marketshop_feature_box_title_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                  <option value="30px"<?php if($marketshop_feature_box_title_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                  <option value="31px"<?php if($marketshop_feature_box_title_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                  <option value="32px"<?php if($marketshop_feature_box_title_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                  <option value="33px"<?php if($marketshop_feature_box_title_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                  <option value="34px"<?php if($marketshop_feature_box_title_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                  <option value="35px"<?php if($marketshop_feature_box_title_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                  <option value="36px"<?php if($marketshop_feature_box_title_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                  <option value="37px"<?php if($marketshop_feature_box_title_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                  <option value="38px"<?php if($marketshop_feature_box_title_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                  <option value="39px"<?php if($marketshop_feature_box_title_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                  <option value="40px"<?php if($marketshop_feature_box_title_font_size == '40px') echo ' selected="selected"';?>>40px</option>
                </select></td>
              <td>Weight:
                <select name="marketshop_feature_box_title_font_weight">
                  <option value=""<?php if($marketshop_feature_box_title_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_feature_box_title_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_feature_box_title_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td>Text Transform:
                <select name="marketshop_feature_box_title_font_transform">
                  <option value=""<?php if($marketshop_feature_box_title_font_transform == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_feature_box_title_font_transform == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_feature_box_title_font_transform == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
            <tr>
              <td>Sub<?php echo $entry_title_label; ?></td>
              <td>Font Size:
                <select name="marketshop_feature_box_subtitle_font_size">
                  <option value=""<?php if($marketshop_feature_box_subtitle_font_size == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="11px"<?php if($marketshop_feature_box_subtitle_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                  <option value="12px"<?php if($marketshop_feature_box_subtitle_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                  <option value="13px"<?php if($marketshop_feature_box_subtitle_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                  <option value="14px"<?php if($marketshop_feature_box_subtitle_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                  <option value="15px"<?php if($marketshop_feature_box_subtitle_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                  <option value="16px"<?php if($marketshop_feature_box_subtitle_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                  <option value="17px"<?php if($marketshop_feature_box_subtitle_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                  <option value="18px"<?php if($marketshop_feature_box_subtitle_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                  <option value="19px"<?php if($marketshop_feature_box_subtitle_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                  <option value="20px"<?php if($marketshop_feature_box_subtitle_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                  <option value="21px"<?php if($marketshop_feature_box_subtitle_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                  <option value="22px"<?php if($marketshop_feature_box_subtitle_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                  <option value="23px"<?php if($marketshop_feature_box_subtitle_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                  <option value="24px"<?php if($marketshop_feature_box_subtitle_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                  <option value="25px"<?php if($marketshop_feature_box_subtitle_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                  <option value="26px"<?php if($marketshop_feature_box_subtitle_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                  <option value="27px"<?php if($marketshop_feature_box_subtitle_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                  <option value="28px"<?php if($marketshop_feature_box_subtitle_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                  <option value="29px"<?php if($marketshop_feature_box_subtitle_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                  <option value="30px"<?php if($marketshop_feature_box_subtitle_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                  <option value="31px"<?php if($marketshop_feature_box_subtitle_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                  <option value="32px"<?php if($marketshop_feature_box_subtitle_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                  <option value="33px"<?php if($marketshop_feature_box_subtitle_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                  <option value="34px"<?php if($marketshop_feature_box_subtitle_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                  <option value="35px"<?php if($marketshop_feature_box_subtitle_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                  <option value="36px"<?php if($marketshop_feature_box_subtitle_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                  <option value="37px"<?php if($marketshop_feature_box_subtitle_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                  <option value="38px"<?php if($marketshop_feature_box_subtitle_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                  <option value="39px"<?php if($marketshop_feature_box_subtitle_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                  <option value="40px"<?php if($marketshop_feature_box_subtitle_font_size == '40px') echo ' selected="selected"';?>>40px</option>
                </select></td>
              <td>Weight:
                <select name="marketshop_feature_box_subtitle_font_weight">
                  <option value=""<?php if($marketshop_feature_box_subtitle_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_feature_box_subtitle_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_feature_box_subtitle_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td>Text Transform:
                <select name="marketshop_feature_box_subtitle_font_transform">
                  <option value=""<?php if($marketshop_feature_box_subtitle_font_transform == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_feature_box_subtitle_font_transform == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_feature_box_subtitle_font_transform == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
          </table>
          <div id="custom_feature_box" class="htabs"> <a href="#feature_box_1">Feature Box 1</a> <a href="#feature_box_2">Feature Box 2</a> <a href="#feature_box_3">Feature Box 3</a> <a href="#feature_box_4">Feature Box 4</a> </div>
          <div id="feature_box_1">
            <table class="form">
              <tr>
                <td><?php echo $entry_status; ?></td>
                <td><select name="marketshop_feature_box1_status">
                    <option value="0"<?php if($marketshop_feature_box1_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_feature_box1_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
              </tr>
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box1_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box1_title[$language['language_id']]) ? $marketshop_feature_box1_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
              <tr>
                <td>Sub<?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box1_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box1_subtitle[$language['language_id']]) ? $marketshop_feature_box1_subtitle[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
            </table>
          </div>
          <div id="feature_box_2">
            <table class="form">
              <tr>
                <td><?php echo $entry_status; ?></td>
                <td><select name="marketshop_feature_box2_status">
                    <option value="0"<?php if($marketshop_feature_box2_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_feature_box2_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
              </tr>
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box2_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box2_title[$language['language_id']]) ? $marketshop_feature_box2_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
              <tr>
                <td>Sub<?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box2_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box2_subtitle[$language['language_id']]) ? $marketshop_feature_box2_subtitle[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
            </table>
          </div>
          <div id="feature_box_3">
            <table class="form">
              <tr>
                <td><?php echo $entry_status; ?></td>
                <td><select name="marketshop_feature_box3_status">
                    <option value="0"<?php if($marketshop_feature_box3_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_feature_box3_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
              </tr>
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box3_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box3_title[$language['language_id']]) ? $marketshop_feature_box3_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
              <tr>
                <td>Sub<?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box3_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box3_subtitle[$language['language_id']]) ? $marketshop_feature_box3_subtitle[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
            </table>
          </div>
          <div id="feature_box_4">
            <table class="form">
              <tr>
                <td><?php echo $entry_status; ?></td>
                <td><select name="marketshop_feature_box4_status">
                    <option value="0"<?php if($marketshop_feature_box4_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_feature_box4_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
              </tr>
              <tr>
                <td><?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box4_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box4_title[$language['language_id']]) ? $marketshop_feature_box4_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
              <tr>
                <td>Sub<?php echo $entry_title_label; ?></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_feature_box4_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box4_subtitle[$language['language_id']]) ? $marketshop_feature_box4_subtitle[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
            </table>
          </div>
        </div>
        <div id="tab_category_page" class="vtabs-content">
          <table class="form">
            <tr>
              <td>Refined Categories:</td>
              <td><select name="marketshop_refine_categories" class="on_off">
                  <option value="1"<?php if($marketshop_refine_categories == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_refine_categories == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_3.jpg">?</a></td>
            </tr>
            <tr>
              <td>Refined Categories Images:</td>
              <td><select name="marketshop_refine_categories_images" class="on_off">
                  <option value="1"<?php if($marketshop_refine_categories_images == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_refine_categories_images == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_4.jpg">?</a></td>
            </tr>
          </table>
        </div>
        <div id="tab_product_grid" class="vtabs-content"> <br />
          <h2><?php echo $entry_slider_products_in_a_row; ?> <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_35.jpg">?</a></h2>
          <table class="form list" style="width:auto;">
            <thead>
              <tr>
                <td class="left">&nbsp;</td>
                <td class="left"><?php echo $entry_in_a_row; ?></td>
              </tr>
            </thead>
            <tr>
              <td><?php echo $entry_featured_pr; ?></td>
              <td><select name="marketshop_featured_slider_product_per_row">
                  <option value="3"<?php if($marketshop_featured_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_featured_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_featured_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_featured_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_latest_pr; ?></td>
              <td><select name="marketshop_latest_slider_product_per_row">
                  <option value="3"<?php if($marketshop_latest_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_latest_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_latest_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_latest_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_bestsellers_pr; ?></td>
              <td><select name="marketshop_bestsellers_slider_product_per_row">
                  <option value="3"<?php if($marketshop_bestsellers_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_bestsellers_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_bestsellers_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_bestsellers_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_specials_pr; ?></td>
              <td><select name="marketshop_specials_slider_product_per_row">
                  <option value="3"<?php if($marketshop_specials_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_specials_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_specials_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_specials_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_product_tab_pr; ?></td>
              <td><select name="marketshop_product_tab_slider_product_per_row">
                  <option value="3"<?php if($marketshop_product_tab_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_product_tab_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_product_tab_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_product_tab_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_lpbc_pr; ?></td>
              <td><select name="marketshop_lpbc_slider_product_per_row">
                  <option value="3"<?php if($marketshop_lpbc_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_lpbc_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_lpbc_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_lpbc_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_lpbb_pr; ?></td>
              <td><select name="marketshop_latest_product_brand_per_row">
                  <option value="3"<?php if($marketshop_latest_product_brand_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_latest_product_brand_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_latest_product_brand_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_latest_product_brand_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_related_products_pr; ?><br />
                <small><?php echo $entry_in_product_page; ?></small></td>
              <td><select name="marketshop_related_slider_product_per_row">
                  <option value="3"<?php if($marketshop_related_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_related_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                  <option value="5"<?php if($marketshop_related_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                  <option value="6"<?php if($marketshop_related_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
          </table>
          <h2><?php echo $entry_pages_pr; ?> <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_35.jpg">?</a></h2>
          <table class="form form_bg list" style="width:auto;">
            <thead>
              <tr>
                <td class="left">&nbsp;</td>
                <td class="left"><?php echo $entry_in_a_row; ?></td>
              </tr>
            </thead>
            <tr>
              <td><?php echo $entry_category_page_pr; ?></td>
              <td><select name="marketshop_category_product_per_row" class="on_off">
                  <option value="pr3"<?php if($marketshop_category_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                  <option value="pr4"<?php if($marketshop_category_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                  <option value="pr5"<?php if($marketshop_category_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                  <option value="pr6"<?php if($marketshop_category_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_search_page_pr; ?></td>
              <td><select name="marketshop_search_product_per_row" class="on_off">
                  <option value="pr3"<?php if($marketshop_search_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                  <option value="pr4"<?php if($marketshop_search_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                  <option value="pr5"<?php if($marketshop_search_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                  <option value="pr6"<?php if($marketshop_search_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_special_page_pr; ?></td>
              <td><select name="marketshop_special_product_per_row" class="on_off">
                  <option value="pr3"<?php if($marketshop_special_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                  <option value="pr4"<?php if($marketshop_special_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                  <option value="pr5"<?php if($marketshop_special_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                  <option value="pr6"<?php if($marketshop_special_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_brands_page_pr; ?></td>
              <td><select name="marketshop_manufacturer_product_per_row" class="on_off">
                  <option value="pr3"<?php if($marketshop_manufacturer_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                  <option value="pr4"<?php if($marketshop_manufacturer_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                  <option value="pr5"<?php if($marketshop_manufacturer_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                  <option value="pr6"<?php if($marketshop_manufacturer_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                </select></td>
            </tr>
          </table>
        </div>
        <div id="tab_product_page" class="vtabs-content">
          <table class="form">
            <tr>
              <td><h2><?php echo $entry_cloud_zoom; ?></h2></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_cloud_zoom" class="on_off">
                  <option value="1"<?php if($marketshop_cloud_zoom == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_cloud_zoom == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                &nbsp;&nbsp;&nbsp;<small>If, You will Disable Cloud Zoom. So, Active default OpenCart Lightbox.</small></td>
            </tr>
            <tr>
              <td><?php echo $entry_cloud_zoom_style; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_36.jpg">?</a></td>
              <td><select name="marketshop_cloud_zoom_inner" class="on_off">
                  <option value="1"<?php if($marketshop_cloud_zoom_inner == '1') echo ' selected="selected"';?>>Inner</option>
                  <option value="2"<?php if($marketshop_cloud_zoom_inner == '2') echo ' selected="selected"';?>>Outer</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_product_gallery; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_37.jpg">?</a></td>
              <td><select name="marketshop_cloud_zoom_gallery" class="on_off">
                  <option value="1"<?php if($marketshop_cloud_zoom_gallery == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_cloud_zoom_gallery == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_product_gallery_text; ?></td>
              <td><div style="width:160px; float:left;">
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_cloud_zoom_gallery_text[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_cloud_zoom_gallery_text[$language['language_id']]) ? $marketshop_cloud_zoom_gallery_text[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </div></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td><h2><?php echo $entry_addthis_plugin; ?></h2></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_share_plugin" class="on_off">
                  <option value="1"<?php if($marketshop_share_plugin == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_share_plugin == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_addthis_plugin_style; ?> <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_38.jpg">?</a></td>
              <td><select name="marketshop_share_plugin_style" class="on_off">
                  <option value="1"<?php if($marketshop_share_plugin_style == '1') echo ' selected="selected"';?>>Style 1</option>
                  <option value="2"<?php if($marketshop_share_plugin_style == '2') echo ' selected="selected"';?>>Style 2</option>
                  <option value="3"<?php if($marketshop_share_plugin_style == '3') echo ' selected="selected"';?>>Style 3</option>
                </select></td>
            </tr>
          </table>
        </div>
      </div>
      <div id="tab_footer">
        <div id="option_tabs" class="vtabs"> <a href="#tab_contact"><?php echo $entry_contact_title; ?></a> <a href="#tab_follow"><?php echo $entry_follow_title; ?></a> <a href="#tab_powered"><?php echo $entry_powered; ?></a> <a href="#tab_custom_column_footer">Custom Column</a> <a href="#tab_payments"><?php echo $entry_payments_title; ?></a> </div>
        <div id="tab_contact" class="vtabs-content"> <br />
          <h2><?php echo $entry_contact_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_23.jpg">?</a><br />
            <small>Note: Here, You can add Contact Details Otherwise About Details. You can choose any one from both.</small></h2>
          <br />
          <table class="form form_bg">
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_about_contact_details">
                  <option value="1"<?php if($marketshop_about_contact_details == '1') echo ' selected="selected"';?>>Contact Details</option>
                  <option value="0"<?php if($marketshop_about_contact_details == '0') echo ' selected="selected"';?>>About Details</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_title_label; ?> &nbsp;&nbsp;&nbsp;
                <select name="marketshop_contact_status">
                  <option value="0"<?php if($marketshop_contact_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_contact_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
              <td><?php foreach ($languages as $language) { ?>
                <input type="text" name="marketshop_contact[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_contact[$language['language_id']]) ? $marketshop_contact[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?></td>
            </tr>
          </table>
          <div id="contact_about_tabs" class="htabs"> <a class="contact_or" href="#contact_details"><?php echo $entry_contact_details; ?></a> <a href="#about_details"><?php echo $entry_about_details; ?></a> </div>
          <div id="contact_details">
            <table class="form">
              <tr>
                <td><?php echo $entry_address; ?>&nbsp;&nbsp;&nbsp;
                  <select name="marketshop_address_status">
                    <option value="0"<?php if($marketshop_address_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_address_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_address[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_address[$language['language_id']]) ? $marketshop_address[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
              <tr>
                <td><?php echo $entry_mobile; ?>&nbsp;&nbsp;&nbsp;
                  <select name="marketshop_mobile_status">
                    <option value="0"<?php if($marketshop_mobile_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_mobile_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_mobile[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_mobile[$language['language_id']]) ? $marketshop_mobile[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
              <tr>
                <td><?php echo $entry_email; ?>&nbsp;&nbsp;&nbsp;
                  <select name="marketshop_email_status">
                    <option value="0"<?php if($marketshop_email_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    <option value="1"<?php if($marketshop_email_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  </select></td>
                <td><?php foreach ($languages as $language) { ?>
                  <input type="text" name="marketshop_email[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_email[$language['language_id']]) ? $marketshop_email[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?></td>
              </tr>
            </table>
          </div>
          <div id="about_details">
            <div id="language10" class="htabs" style="padding-left:230px;">
              <?php foreach ($languages as $language) { ?>
              <a href="#tab10-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
              <?php } ?>
            </div>
            <?php foreach ($languages as $language) { ?>
            <div id="tab10-language-<?php echo $language['language_id']; ?>">
              <table class="form">
                <tr>
                  <td><?php echo $entry_custom_column; ?></td>
                  <td><textarea name="marketshop_about_details[<?php echo $language['language_id']; ?>]" cols="50" rows="8" id="marketshop_about_details[<?php echo $language['language_id']; ?>]"><?php echo isset($marketshop_about_details[$language['language_id']]) ? $marketshop_about_details[$language['language_id']] : ''; ?></textarea></td>
                </tr>
              </table>
            </div>
            <?php } ?>
          </div>
        </div>
        <div id="tab_follow" class="vtabs-content"> <br />
          <h2><?php echo $entry_follow_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_24.jpg">?</a></h2>
          <div class="info-help" style="text-align: left;">Note: Don't forget http:// before link.</div>
          <br />
          <table class="form list">
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/facebook.png" alt=""><?php echo $entry_facebook_url; ?></td>
              <td><input type="text" name="marketshop_facebook_id" value="<?php echo $marketshop_facebook_id; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/twitter.png" alt=""><?php echo $entry_twitter_username; ?></td>
              <td><input type="text" name="marketshop_twitter_username" value="<?php echo $marketshop_twitter_username; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/google_plus.png" alt="+"><?php echo $entry_gplus_id; ?></td>
              <td><input type="text" name="marketshop_gplus_id" value="<?php echo $marketshop_gplus_id; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/pinterest.png" alt=""><?php echo $entry_pint_id; ?></td>
              <td><input type="text" name="marketshop_pint_id" value="<?php echo $marketshop_pint_id; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/rss.png" alt=""><?php echo $entry_RSS; ?></td>
              <td><input type="text" name="marketshop_rss" value="<?php echo $marketshop_rss; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/blogger.png" alt=""><?php echo $entry_blogger; ?></td>
              <td><input type="text" name="marketshop_blogger" value="<?php echo $marketshop_blogger; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/myspace.png" alt=""><?php echo $entry_myspace; ?></td>
              <td><input type="text" name="marketshop_myspace" value="<?php echo $marketshop_myspace; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/linkedin.png" alt=""><?php echo $entry_linkedin; ?></td>
              <td><input type="text" name="marketshop_linkedin" value="<?php echo $marketshop_linkedin; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/evernote.png" alt=""><?php echo $entry_evernote; ?></td>
              <td><input type="text" name="marketshop_evernote" value="<?php echo $marketshop_evernote; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/dopplr.png" alt=""><?php echo $entry_dopplr; ?></td>
              <td><input type="text" name="marketshop_dopplr" value="<?php echo $marketshop_dopplr; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/ember.png" alt=""><?php echo $entry_ember; ?></td>
              <td><input type="text" name="marketshop_ember" value="<?php echo $marketshop_ember; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/flickr.png" alt=""><?php echo $entry_flickr; ?></td>
              <td><input type="text" name="marketshop_flickr" value="<?php echo $marketshop_vimeo; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/picasa.png" alt=""><?php echo $entry_picasa_web; ?></td>
              <td><input type="text" name="marketshop_picasa_web" value="<?php echo $marketshop_picasa_web; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/youtube.png" alt=""><?php echo $entry_youtube; ?></td>
              <td><input type="text" name="marketshop_youtube" value="<?php echo $marketshop_youtube; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/technorati.png" alt=""><?php echo $entry_technorati; ?></td>
              <td><input type="text" name="marketshop_technorati" value="<?php echo $marketshop_technorati; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/grooveshark.png" alt=""><?php echo $entry_grooveshark; ?></td>
              <td><input type="text" name="marketshop_grooveshark" value="<?php echo $marketshop_grooveshark; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/vimeo.png" alt=""><?php echo $entry_vimeo; ?></td>
              <td><input type="text" name="marketshop_vimeo" value="<?php echo $marketshop_vimeo; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/sharethis.png" alt=""><?php echo $entry_sharethis; ?></td>
              <td><input type="text" name="marketshop_sharethis" value="<?php echo $marketshop_sharethis; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/yahoobuzz.png" alt=""><?php echo $entry_yahoobuzz; ?></td>
              <td><input type="text" name="marketshop_yahoobuzz" value="<?php echo $marketshop_yahoobuzz; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/viddler.png" alt=""><?php echo $entry_viddler; ?></td>
              <td><input type="text" name="marketshop_viddler" value="<?php echo $marketshop_viddler; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/skype.png" alt=""><?php echo $entry_skype; ?></td>
              <td><input type="text" name="marketshop_skype" value="<?php echo $marketshop_skype; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/googletalk.png" alt=""><?php echo $entry_google_googletalk; ?></td>
              <td><input type="text" name="marketshop_google_googletalk" value="<?php echo $marketshop_google_googletalk; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/digg.png" alt=""><?php echo $entry_digg; ?></td>
              <td><input type="text" name="marketshop_digg" value="<?php echo $marketshop_digg; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/reddit.png" alt=""><?php echo $entry_reddit; ?></td>
              <td><input type="text" name="marketshop_reddit" value="<?php echo $marketshop_reddit; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/delicious.png" alt=""><?php echo $entry_delicious; ?></td>
              <td><input type="text" name="marketshop_delicious" value="<?php echo $marketshop_delicious; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/stumbleupon.png" alt=""><?php echo $entry_stumbleupon; ?></td>
              <td><input type="text" name="marketshop_stumbleupon" value="<?php echo $marketshop_stumbleupon; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/friendfeed.png" alt=""><?php echo $entry_friendfeed; ?></td>
              <td><input type="text" name="marketshop_friendfeed" value="<?php echo $marketshop_friendfeed; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/tumblr.png" alt=""><?php echo $entry_tumblr; ?></td>
              <td><input type="text" name="marketshop_tumblr" value="<?php echo $marketshop_tumblr; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/yelp.png" alt=""><?php echo $entry_yelp; ?></td>
              <td><input type="text" name="marketshop_yelp" value="<?php echo $marketshop_yelp; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/posterous.png" alt=""><?php echo $entry_posterous; ?></td>
              <td><input type="text" name="marketshop_posterous" value="<?php echo $marketshop_posterous; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/bebo.png" alt=""><?php echo $entry_bebo; ?></td>
              <td><input type="text" name="marketshop_bebo" value="<?php echo $marketshop_bebo; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/virb.png" alt=""><?php echo $entry_virb; ?></td>
              <td><input type="text" name="marketshop_virb" value="<?php echo $marketshop_virb; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/lastfm.png" alt=""><?php echo $entry_last_fm; ?></td>
              <td><input type="text" name="marketshop_last_fm" value="<?php echo $marketshop_last_fm; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/pandora.png" alt=""><?php echo $entry_pandora; ?></td>
              <td><input type="text" name="marketshop_pandora" value="<?php echo $marketshop_pandora; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/mixx.png" alt=""><?php echo $entry_mixx; ?></td>
              <td><input type="text" name="marketshop_mixx" value="<?php echo $marketshop_mixx; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/newsvine.png" alt=""><?php echo $entry_newsvine; ?></td>
              <td><input type="text" name="marketshop_newsvine" value="<?php echo $marketshop_newsvine; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/openid.png" alt=""><?php echo $entry_openid; ?></td>
              <td><input type="text" name="marketshop_openid" value="<?php echo $marketshop_openid; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/readernaut.png" alt=""><?php echo $entry_readernaut; ?></td>
              <td><input type="text" name="marketshop_readernaut" value="<?php echo $marketshop_readernaut; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/xing.png" alt=""><?php echo $entry_xing_me; ?></td>
              <td><input type="text" name="marketshop_xing_me" value="<?php echo $marketshop_xing_me; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/instagram.png" alt=""><?php echo $entry_instagram; ?></td>
              <td><input type="text" name="marketshop_instagram" value="<?php echo $marketshop_instagram; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/spotify.png" alt=""><?php echo $entry_spotify; ?></td>
              <td><input type="text" name="marketshop_spotify" value="<?php echo $marketshop_spotify; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/forrst.png" alt=""><?php echo $entry_forrst; ?></td>
              <td><input type="text" name="marketshop_forrst" value="<?php echo $marketshop_forrst; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/viadeo.png" alt=""><?php echo $entry_viadeo; ?></td>
              <td><input type="text" name="marketshop_viadeo" value="<?php echo $marketshop_viadeo; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/socialicons/vk.png" alt=""><?php echo $entry_vk_com; ?></td>
              <td><input type="text" name="marketshop_vk_com" value="<?php echo $marketshop_vk_com; ?>" /></td>
            </tr>
          </table>
        </div>
        <div id="tab_powered" class="vtabs-content">
          <table class="form">
            <tr>
              <td><h2><?php echo $entry_powered; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_25.jpg">?</a></h2></td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <div id="language7" class="htabs" style="padding-left:230px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab7-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab7-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_powered[<?php echo $language['language_id']; ?>]" cols="50" rows="8" id="marketshop_powered[<?php echo $language['language_id']; ?>]"><?php echo isset($marketshop_powered[$language['language_id']]) ? $marketshop_powered[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </div>
        <div id="tab_custom_column_footer" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="5"><h2><?php echo $entry_custom_column_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_26.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="marketshop_custom_column_footer_status">
                  <option value="0"<?php if($marketshop_custom_column_footer_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_column_footer_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
          </table>
          <div id="language3" class="htabs" style="padding-left:230px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab3-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab3-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_column_footer[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_column_footer[$language['language_id']]) ? $marketshop_custom_column_footer[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </div>
        <div id="tab_payments" class="vtabs-content"> <br />
          <h2><?php echo $entry_payments_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_27.jpg">?</a></h2>
          <br />
          <table class="form form_bg">
            <tr>
              <td>Upload your Custom payment image:</td>
              <td><input type="checkbox" name="marketshop_custom_payment_image_status"<?php if ($marketshop_custom_payment_image_status) echo 'checked="checked"';?>></td>
              <td><input type="hidden" name="marketshop_custom_payment_image" value="<?php echo $marketshop_custom_payment_image; ?>" id="marketshop_custom_payment_image" />
                <img src="<?php echo $marketshop_custom_payment_image_preview; ?>" alt="" id="marketshop_custom_payment_image_preview" /> <br />
                <a onclick="image_upload('marketshop_custom_payment_image', 'marketshop_custom_payment_image_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a onclick="$('#marketshop_custom_payment_image_preview').attr('src', '<?php echo $no_image; ?>'); $('#marketshop_custom_payment_image').attr('value', '');"><?php echo $text_clear; ?></a></td>
              <td>URL:
                <input type="text" name="marketshop_custom_payment_image_url" value="<?php echo $marketshop_custom_payment_image_url; ?>" /></td>
            </tr>
          </table>
          <h2>Marketshop Payment Images:</h2>
          <br />
          <table class="form list">
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_paypal.png" alt="paypal" title="PayPal"><?php echo $entry_paypal; ?></td>
              <td><input type="checkbox" name="marketshop_paypal"<?php if ($marketshop_paypal) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_paypal_url" value="<?php echo $marketshop_paypal_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_american.png" alt="american-express" title="American Express"><?php echo $entry_american; ?></td>
              <td><input type="checkbox" name="marketshop_american"<?php if ($marketshop_american) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_american_url" value="<?php echo $marketshop_american_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_2checkout.png" alt="2checkout" title="2checkout"><?php echo $entry_2checkout; ?></td>
              <td><input type="checkbox" name="marketshop_2checkout"<?php if ($marketshop_2checkout) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_2checkout_url" value="<?php echo $marketshop_2checkout_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_maestro.png" alt="maestro" title="Maestro"><?php echo $entry_maestro; ?></td>
              <td><input type="checkbox" name="marketshop_maestro"<?php if ($marketshop_maestro) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_maestro_url" value="<?php echo $marketshop_maestro_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_discover.png" alt="discover" title="Discover"><?php echo $entry_discover; ?></td>
              <td><input type="checkbox" name="marketshop_discover"<?php if ($marketshop_discover) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_discover_url" value="<?php echo $marketshop_discover_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_mastercard.png" alt="mastercard" title="MasterCard"><?php echo $entry_mastercard; ?></td>
              <td><input type="checkbox" name="marketshop_mastercard"<?php if ($marketshop_mastercard) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_mastercard_url" value="<?php echo $marketshop_mastercard_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_visa.png" alt="visa" title="Visa"><?php echo $entry_visa; ?></td>
              <td><input type="checkbox" name="marketshop_visa"<?php if ($marketshop_visa) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_visa_url" value="<?php echo $marketshop_visa_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img  style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_sagepay.png" alt="sagepay" title="sagepay"><?php echo $entry_sagepay; ?></td>
              <td><input type="checkbox" name="marketshop_sagepay"<?php if ($marketshop_sagepay) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_sagepay_url" value="<?php echo $marketshop_sagepay_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;"  src="../catalog/view/theme/marketshop/image/payment_moneybookers.png" alt="moneybookers" title="Moneybookers"><?php echo $entry_moneybookers; ?></td>
              <td><input type="checkbox" name="marketshop_moneybookers"<?php if ($marketshop_moneybookers) echo 'checked="checked"';?>>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_moneybookers_url" value="<?php echo $marketshop_moneybookers_url; ?>" /></td>
              </td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_cirrus.png" alt="cirrus" title="Cirrus"><?php echo $entry_cirrus; ?></td>
              <td><input type="checkbox" name="marketshop_cirrus"<?php if ($marketshop_cirrus) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_cirrus_url" value="<?php echo $marketshop_cirrus_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_delta.png" alt="delta" title="Delta"><?php echo $entry_delta; ?></td>
              <td><input type="checkbox" name="marketshop_delta"<?php if ($marketshop_delta) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_delta_url" value="<?php echo $marketshop_delta_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_direct.png" alt="direct" title="direct"><?php echo $entry_direct; ?></td>
              <td><input type="checkbox" name="marketshop_direct"<?php if ($marketshop_direct) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_direct_url" value="<?php echo $marketshop_direct_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_google.png" alt="google" title="google"><?php echo $entry_google; ?></td>
              <td><input type="checkbox" name="marketshop_google"<?php if ($marketshop_google) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_google_url" value="<?php echo $marketshop_google_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_solo.png" alt="solo" title="solo"><?php echo $entry_solo; ?></td>
              <td><input type="checkbox" name="marketshop_solo"<?php if ($marketshop_solo) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_solo_url" value="<?php echo $marketshop_solo_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_switch.png" alt="switch" title="switch"><?php echo $entry_switch; ?></td>
              <td><input type="checkbox" name="marketshop_switch"<?php if ($marketshop_switch) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_switch_url" value="<?php echo $marketshop_switch_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_western_union.png" alt="western_union" title="western union"><?php echo $entry_western_union; ?></td>
              <td><input type="checkbox" name="marketshop_western_union"<?php if ($marketshop_western_union) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_western_union_url" value="<?php echo $marketshop_western_union_url; ?>" /></td>
            </tr>
            <tr style="line-height:26px;">
              <td><img style="margin-left:10px; float:right;" src="../catalog/view/theme/marketshop/image/payment_ebay.png" alt="ebay" title="ebay"><?php echo $entry_ebay; ?></td>
              <td><input type="checkbox" name="marketshop_ebay"<?php if ($marketshop_ebay) echo 'checked="checked"';?>></td>
              <td><?php echo $entry_url; ?>
                <input type="text" name="marketshop_ebay_url" value="<?php echo $marketshop_ebay_url; ?>" /></td>
            </tr>
          </table>
        </div>
      </div>
      <div id="tab_side_blocks">
        <div id="side_blocks_tabs" class="vtabs"> <a href="#tab_facebook_box"><?php echo $entry_facebook_box; ?></a> <a href="#tab_twitter_block"><?php echo $entry_twitter_block_title; ?></a> <a href="#tab_video_box">Video Box</a> <a href="#tab_custom_column">Custom Block</a> </div>
        <div id="tab_facebook_box" class="vtabs-content">
          <table class="form">
            <tr>
              <td><h2><?php echo $entry_facebook_box; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Status:</td>
              <td><select name="marketshop_facebook_block_status">
                  <option value="0"<?php if($marketshop_facebook_block_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_facebook_block_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Position:</td>
              <td><select name="marketshop_facebook_box_align">
                  <option value="1"<?php if($marketshop_facebook_box_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                  <option value="2"<?php if($marketshop_facebook_box_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Sort Order:</td>
              <td><select name="marketshop_facebook_block_sort_order">
                  <option value="1"<?php if($marketshop_facebook_block_sort_order == '1') echo ' selected="selected"';?>>1</option>
                  <option value="2"<?php if($marketshop_facebook_block_sort_order == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_facebook_block_sort_order == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_facebook_block_sort_order == '4') echo ' selected="selected"';?>>4</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_facebook_id; ?></td>
              <td><input type="text" name="marketshop_facebook_id_box" value="<?php echo($marketshop_facebook_id_box); ?>" />
                &nbsp;&nbsp;&nbsp;&nbsp; <a class="link" target="_blank" href="http://findmyfacebookid.com/"><?php echo $entry_find_id_facebook; ?></a></td>
            </tr>
          </table>
        </div>
        <div id="tab_twitter_block" class="vtabs-content">
          <table class="form">
            <tr>
              <td><h2><?php echo $entry_twitter_block_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Status:</td>
              <td><select name="marketshop_twitter_block_status">
                  <option value="0"<?php if($marketshop_twitter_block_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_twitter_block_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Position:</td>
              <td><select name="marketshop_twitter_box_align">
                  <option value="1"<?php if($marketshop_twitter_box_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                  <option value="2"<?php if($marketshop_twitter_box_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Sort Order:</td>
              <td><select name="marketshop_twitter_block_sort_order">
                  <option value="1"<?php if($marketshop_twitter_block_sort_order == '1') echo ' selected="selected"';?>>1</option>
                  <option selected="selected" value="2"<?php if($marketshop_twitter_block_sort_order == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_twitter_block_sort_order == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_twitter_block_sort_order == '4') echo ' selected="selected"';?>>4</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_twitter_block; ?></td>
              <td><input type="text" name="twitter_username" value="<?php echo ($twitter_username); ?>" /></td>
            </tr>
            <tr>
              <td><label style="width: 110px">Widget ID:</label></td>
              <td><input type="text" name="marketshop_widget_id" value="<?php echo($marketshop_widget_id); ?>" />
                <a class="link" target="_blank" href="http://demo.harnishdesign.net/opencart/bigshop/twitter-widget-id.jpg">Find your Widget ID >></a></td>
            </tr>
          </table>
        </div>
        <div id="tab_video_box" class="vtabs-content">
          <table class="form">
            <tr>
              <td><h2>Video Box</h2></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Status:</td>
              <td><select name="marketshop_video_box_status">
                  <option value="0"<?php if($marketshop_video_box_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_video_box_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Position:</td>
              <td><select name="marketshop_video_box_align">
                  <option value="1"<?php if($marketshop_video_box_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                  <option value="2"<?php if($marketshop_video_box_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Sort Order:</td>
              <td><select name="marketshop_video_box_sort_order">
                  <option value="1"<?php if($marketshop_video_box_sort_order == '1') echo ' selected="selected"';?>>1</option>
                  <option value="2"<?php if($marketshop_video_box_sort_order == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_video_box_sort_order == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_video_box_sort_order == '4') echo ' selected="selected"';?>>4</option>
                </select></td>
            </tr>
          </table>
          <div id="language11" class="htabs" style="margin-left:220px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab11-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab11-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_video_box_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8" id="marketshop_video_box_content[<?php echo $language['language_id']; ?>]"><?php echo isset($marketshop_video_box_content[$language['language_id']]) ? $marketshop_video_box_content[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </div>
        <div id="tab_custom_column" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="5"><h2>Custom Block<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2></td>
            </tr>
            <tr>
              <td>Status:</td>
              <td><select name="marketshop_custom_column_status">
                  <option value="0"<?php if($marketshop_custom_column_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                  <option value="1"<?php if($marketshop_custom_column_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Position:</td>
              <td><select name="marketshop_custom_side_block_align">
                  <option value="1"<?php if($marketshop_custom_side_block_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                  <option value="2"<?php if($marketshop_custom_side_block_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                </select></td>
            </tr>
            <tr>
              <td>Sort Order:</td>
              <td><select name="marketshop_custom_side_block_sort_order">
                  <option value="1"<?php if($marketshop_custom_side_block_sort_order == '1') echo ' selected="selected"';?>>1</option>
                  <option value="2"<?php if($marketshop_custom_side_block_sort_order == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_custom_side_block_sort_order == '3') echo ' selected="selected"';?>>3</option>
                  <option value="4"<?php if($marketshop_custom_side_block_sort_order == '4') echo ' selected="selected"';?>>4</option>
                </select></td>
            </tr>
          </table>
          <div id="language6" class="htabs" style="padding-left:230px;">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab6-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab6-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_custom_column; ?></td>
                <td><textarea name="marketshop_custom_column[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_column[$language['language_id']]) ? $marketshop_custom_column[$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </div>
      </div>
      <div id="tab_background">
        <table class="form">
          <tr>
            <td colspan="2"><h2><?php echo $entry_background_color; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_29.jpg">?</a></h2></td>
          </tr>
          <tr>
            <td><?php echo $entry_pattern_overlay; ?></td>
            <td><div>
                <?php for ($i = 1; $i <= 53; $i++) { ?>
                <div class="img-patt"><span class="info-help"><?php echo $i; ?></span><img src="view/image/patterns/<?php echo $i; ?>.png" alt="pattern <?php echo $i; ?>"></div>
                <?php } ?>
              </div>
              <br>
              <select name="marketshop_pattern_overlay" style="padding:5px;">
                <option value="none"selected="selected">None</option>
                <?php for ($i = 1; $i <= 53; $i++) { 
									($this->config->get('marketshop_pattern_overlay')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
                <option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>
                <?php } ?>
              </select>
              <small><?php echo $entry_pattern_overlay_help; ?></small></td>
          </tr>
        </table>
        <table class="form form_bg">
          <tr>
            <td><?php echo $entry_custom_image; ?></td>
            <td><input type="hidden" name="marketshop_custom_image" value="<?php echo $marketshop_custom_image; ?>" id="marketshop_custom_image" />
              <img src="<?php echo $marketshop_image_preview; ?>" alt="" id="marketshop_image_preview" /> <br />
              <a onclick="image_upload('marketshop_custom_image', 'marketshop_image_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a onclick="$('#marketshop_image_preview').attr('src', '<?php echo $no_image; ?>'); $('#marketshop_custom_image').attr('value', '');"><?php echo $text_clear; ?></a></td>
          </tr>
          <tr>
            <td><?php echo $entry_custom_image_postion; ?></td>
            <td><select name="marketshop_custom_image_position">
                <option value="top center"<?php if($marketshop_custom_image_position == 'top center') echo ' selected="selected"';?>>Top Center</option>
                <option value="top left"<?php if($marketshop_custom_image_position == 'top left') echo ' selected="selected"';?>>Top Left</option>
                <option value="top right"<?php if($marketshop_custom_image_position == 'top right') echo ' selected="selected"';?>>Top Right</option>
                <option value="center center"<?php if($marketshop_custom_image_position == 'center center') echo ' selected="selected"';?>>Center Center</option>
                <option value="bottom center"<?php if($marketshop_custom_image_position == 'bottom center') echo ' selected="selected"';?>>Bottom Center</option>
                <option value="bottom left"<?php if($marketshop_custom_image_position == 'bottom left') echo ' selected="selected"';?>>Bottom Left</option>
                <option value="bottom right"<?php if($marketshop_custom_image_position == 'bottom right') echo ' selected="selected"';?>>Bottom Right</option>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_custom_image_repeat; ?></td>
            <td><select name="marketshop_custom_image_repeat">
                <option value="no-repeat"<?php if($marketshop_custom_image_repeat == 'no-repeat') echo ' selected="selected"';?>>No Repeat</option>
                <option value="repeat"<?php if($marketshop_custom_image_repeat == 'repeat') echo ' selected="selected"';?>>Repeat</option>
                <option value="repeat-x"<?php if($marketshop_custom_image_repeat == 'repeat-x') echo ' selected="selected"';?>>Repeat-x</option>
                <option value="repeat-y"<?php if($marketshop_custom_image_repeat == 'repeat-y') echo ' selected="selected"';?>>Repeat-y</option>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_custom_image_attachment; ?></td>
            <td><select name="marketshop_custom_image_attachment">
                <option value="scroll"<?php if($marketshop_custom_image_attachment == 'scroll') echo ' selected="selected"';?>>Scroll</option>
                <option value="fixed"<?php if($marketshop_custom_image_attachment == 'fixed') echo ' selected="selected"';?>>Fixed</option>
              </select></td>
          </tr>
        </table>
      </div>
      <div id="tab_colors">
        <div id="color_bg" class="vtabs"> <a href="#tab_general_color"><?php echo $entry_general; ?></a> <a href="#tab_top_bar_color">Header</a> <a href="#tab_main_menu_color"><?php echo $entry_main_menu; ?></a> <a href="#tab_feature_box_color">Feature Box</a> <a href="#tab_footer_color"><?php echo $entry_footer; ?></a> <a href="#tab_price_color"><?php echo $entry_price; ?></a> <a href="#tab_button_color"><?php echo $entry_Button; ?></a> <a href="#tab_side_blocks_color">Side Blocks</a> </div>
        <div id="tab_feature_box_color" class="vtabs-content"> <br />
          <h2>Feature Box 1</h2>
          <table class="form">
            <tr>
              <td>Box Background Color:</td>
              <td><input type="text" name="marketshop_feature_box1_bg_color" value="<?php echo $marketshop_feature_box1_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Title Color:</td>
              <td><input type="text" name="marketshop_feature_box1_title_color" value="<?php echo $marketshop_feature_box1_title_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Sub Title Color:</td>
              <td><input type="text" name="marketshop_feature_box1_subtitle_color" value="<?php echo $marketshop_feature_box1_subtitle_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <h2>Feature Box 2</h2>
          <table class="form form_bg">
            <tr>
              <td>Box Background Color:</td>
              <td><input type="text" name="marketshop_feature_box2_bg_color" value="<?php echo $marketshop_feature_box2_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Title Color:</td>
              <td><input type="text" name="marketshop_feature_box2_title_color" value="<?php echo $marketshop_feature_box2_title_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Sub Title Color:</td>
              <td><input type="text" name="marketshop_feature_box2_subtitle_color" value="<?php echo $marketshop_feature_box2_subtitle_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <h2>Feature Box 3</h2>
          <table class="form">
            <tr>
              <td>Box Background Color:</td>
              <td><input type="text" name="marketshop_feature_box3_bg_color" value="<?php echo $marketshop_feature_box3_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Title Color:</td>
              <td><input type="text" name="marketshop_feature_box3_title_color" value="<?php echo $marketshop_feature_box3_title_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Sub Title Color:</td>
              <td><input type="text" name="marketshop_feature_box3_subtitle_color" value="<?php echo $marketshop_feature_box3_subtitle_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <h2>Feature Box 4</h2>
          <table class="form form_bg">
            <tr>
              <td>Box Background Color:</td>
              <td><input type="text" name="marketshop_feature_box4_bg_color" value="<?php echo $marketshop_feature_box4_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Title Color:</td>
              <td><input type="text" name="marketshop_feature_box4_title_color" value="<?php echo $marketshop_feature_box4_title_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Sub Title Color:</td>
              <td><input type="text" name="marketshop_feature_box4_subtitle_color" value="<?php echo $marketshop_feature_box4_subtitle_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
        </div>
        <div id="tab_general_color" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="2"><h2><?php echo $entry_general; ?></h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td>Body Background Color:</td>
              <td><input type="text" name="marketshop_background_color" value="<?php echo $marketshop_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_body_text_color; ?></td>
              <td><input type="text" name="marketshop_body_text_color" value="<?php echo $marketshop_body_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>General Links Color:</td>
              <td><input type="text" name="marketshop_general_links_color" value="<?php echo $marketshop_general_links_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>General Links Hover Color:</td>
              <td><input type="text" name="marketshop_general_links_hover_color" value="<?php echo $marketshop_general_links_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Titles Text Color:</td>
              <td><input type="text" name="marketshop_heading_color" value="<?php echo $marketshop_heading_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Secondary Titles Text Color:</td>
              <td><input type="text" name="marketshop_secondary_heading_color" value="<?php echo $marketshop_secondary_heading_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Secondary Titles Border Bottom Color:</td>
              <td><input type="text" name="marketshop_secondary_heading_border_color" value="<?php echo $marketshop_secondary_heading_border_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_marketshop_theme_color; ?></td>
              <td><input type="text" name="marketshop_theme_color" value="<?php echo $marketshop_theme_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
        </div>
        <div id="tab_top_bar_color" class="vtabs-content">
        
                <table class="form form_bg">
                <tr>
              <td colspan="2"><h2>Header</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
                <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_header_bg_color" value="<?php echo $marketshop_header_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  </table>
        
          <table class="form">
            <tr>
              <td colspan="2"><h2>Top Bar</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_top_bar_bg_color" value="<?php echo $marketshop_top_bar_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Links Color:</td>
              <td><input type="text" name="marketshop_top_bar_link_color" value="<?php echo $marketshop_top_bar_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Separator:</td>
              <td> Style:
                <select name="marketshop_top_bar_link_separator_style">
                  <option value="solid"<?php if($marketshop_top_bar_link_separator_style == 'solid') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_top_bar_link_separator_style == 'dotted') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_top_bar_link_separator_style == 'dashed') echo ' selected="selected"';?>>Dashed</option>
                </select>
                <br />
                <br />
                Color:
                <input type="text" name="marketshop_top_bar_link_separator_color" value="<?php echo $marketshop_top_bar_link_separator_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Sub Links Color:</td>
              <td><input type="text" name="marketshop_top_bar_sub_link_color" value="<?php echo $marketshop_top_bar_sub_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Sub Links Hover Color:</td>
              <td><input type="text" name="marketshop_top_bar_sub_link_hover_color" value="<?php echo $marketshop_top_bar_sub_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Call & Email Icon Color:</td>
              <td><table>
                  <tr style="display:inline-block; text-align:center">
                    <td style="padding:0 5px;">1<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">2<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/1_admin/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">3<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/2/telephone.png" alt="" title="" ></td>
                    <td style="padding:0 5px;">4<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/3/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">5<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/4/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">6<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/5/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">7<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/6/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">8<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/7/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">9<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/8/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">10<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/9/telephone.png" alt="" title=""></td>
                    <td style="padding:0 5px;">11<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/10/telephone.png" alt="" title=""></td>
                  </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;
                <select name="marketshop_top_contact_icon">
                  <option value=""<?php if($marketshop_top_contact_icon == '') echo ' selected="selected"';?>>1</option>
                  <option value="contact_icon1"<?php if($marketshop_top_contact_icon == 'contact_icon1') echo ' selected="selected"';?>>2</option>
                  <option value="contact_icon2"<?php if($marketshop_top_contact_icon == 'contact_icon2') echo ' selected="selected"';?>>3</option>
                  <option value="contact_icon3"<?php if($marketshop_top_contact_icon == 'contact_icon3') echo ' selected="selected"';?>>4</option>
                  <option value="contact_icon4"<?php if($marketshop_top_contact_icon == 'contact_icon4') echo ' selected="selected"';?>>5</option>
                  <option value="contact_icon5"<?php if($marketshop_top_contact_icon == 'contact_icon5') echo ' selected="selected"';?>>6</option>
                  <option value="contact_icon6"<?php if($marketshop_top_contact_icon == 'contact_icon6') echo ' selected="selected"';?>>7</option>
                  <option value="contact_icon7"<?php if($marketshop_top_contact_icon == 'contact_icon7') echo ' selected="selected"';?>>8</option>
                  <option value="contact_icon8"<?php if($marketshop_top_contact_icon == 'contact_icon8') echo ' selected="selected"';?>>9</option>
                  <option value="contact_icon9"<?php if($marketshop_top_contact_icon == 'contact_icon9') echo ' selected="selected"';?>>10</option>
                  <option value="contact_icon10"<?php if($marketshop_top_contact_icon == 'contact_icon10') echo ' selected="selected"';?>>11</option>
                </select>
                &nbsp;&nbsp;<?php echo $entry_select_your_no; ?></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Mini Cart</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td>Cart Icon Color:</td>
              <td><input type="text" name="marketshop_mini_cart_icon_color" value="<?php echo $marketshop_mini_cart_icon_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_mini_cart_link_color" value="<?php echo $marketshop_mini_cart_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Active Link Color:</td>
              <td><input type="text" name="marketshop_mini_cart_active_link_color" value="<?php echo $marketshop_mini_cart_active_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>Search Bar</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_search_bar_background_color" value="<?php echo $marketshop_search_bar_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Border Color:</td>
              <td><input type="text" name="marketshop_search_bar_border_color" value="<?php echo $marketshop_search_bar_border_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Border hover Color:</td>
              <td><input type="text" name="marketshop_search_bar_border_hover_color" value="<?php echo $marketshop_search_bar_border_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Text Color:</td>
              <td><input type="text" name="marketshop_search_bar_text_color" value="<?php echo $marketshop_search_bar_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
        </div>
        <div id="tab_main_menu_color" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="2"><h2>Main Menu Bar</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td>Show Background Color:</td>
              <td><select name="marketshop_menu_bg_color_status" class="on_off">
                  <option value="1"<?php if($marketshop_menu_bg_color_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_menu_bg_color_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_menu_bg_color" value="<?php echo $marketshop_menu_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_link_color; ?></td>
              <td><input type="text" name="marketshop_menu_link_color" value="<?php echo $marketshop_menu_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_link_color_hover; ?></td>
              <td><input type="text" name="marketshop_menu_link_hover_color" value="<?php echo $marketshop_menu_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link background Color Hover:</td>
              <td><input type="text" name="marketshop_menu_link_hover_bg_color" value="<?php echo $marketshop_menu_link_hover_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Separator:</td>
              <td> Status:
                <select name="marketshop_menu_link_separator_status" class="on_off">
                  <option value="1"<?php if($marketshop_menu_link_separator_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_menu_link_separator_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <br />
                <br />
                Size:
                <select name="marketshop_menu_link_separator_size">
                  <option value="1"<?php if($marketshop_menu_link_separator_size == '1') echo ' selected="selected"';?>>1</option>
                  <option value="2"<?php if($marketshop_menu_link_separator_size == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_menu_link_separator_size == '3') echo ' selected="selected"';?>>3</option>
                </select>
                <br />
                <br />
                Style:
                <select name="marketshop_menu_link_separator_style">
                  <option value="solid"<?php if($marketshop_menu_link_separator_style == 'solid') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_menu_link_separator_style == 'dotted') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_menu_link_separator_style == 'dashed') echo ' selected="selected"';?>>Dashed</option>
                </select>
                <br />
                <br />
                Color:
                <input type="text" name="marketshop_menu_link_separator_color" value="<?php echo $marketshop_menu_link_separator_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Border Top:</td>
              <td> Status:
                <select name="marketshop_menu_link_border_top_status" class="on_off">
                  <option value="1"<?php if($marketshop_menu_link_border_top_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_menu_link_border_top_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <br />
                <br />
                Size:
                <select name="marketshop_menu_link_border_top_size">
                  <option value="1"<?php if($marketshop_menu_link_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                  <option value="2"<?php if($marketshop_menu_link_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_menu_link_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                </select>
                <br />
                <br />
                Style:
                <select name="marketshop_menu_link_border_top_style">
                  <option value="solid"<?php if($marketshop_menu_link_border_top_style == 'solid') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_menu_link_border_top_style == 'dotted') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_menu_link_border_top_style == 'dashed') echo ' selected="selected"';?>>Dashed</option>
                </select>
                <br />
                <br />
                Color:
                <input type="text" name="marketshop_menu_link_border_top_color" value="<?php echo $marketshop_menu_link_border_top_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Border Bottom:</td>
              <td> Status:
                <select name="marketshop_menu_link_border_bottom_status" class="on_off">
                  <option value="1"<?php if($marketshop_menu_link_border_bottom_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                  <option value="2"<?php if($marketshop_menu_link_border_bottom_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                </select>
                <br />
                <br />
                Size:
                <select name="marketshop_menu_link_border_bottom_size">
                  <option value="1"<?php if($marketshop_menu_link_border_bottom_size == '1') echo ' selected="selected"';?>>1</option>
                  <option value="2"<?php if($marketshop_menu_link_border_bottom_size == '2') echo ' selected="selected"';?>>2</option>
                  <option value="3"<?php if($marketshop_menu_link_border_bottom_size == '3') echo ' selected="selected"';?>>3</option>
                </select>
                <br />
                <br />
                Style:
                <select name="marketshop_menu_link_border_bottom_style">
                  <option value="solid"<?php if($marketshop_menu_link_border_bottom_style == 'solid') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_menu_link_border_bottom_style == 'dotted') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_menu_link_border_bottom_style == 'dashed') echo ' selected="selected"';?>>Dashed</option>
                </select>
                <br />
                <br />
                Color:
                <input type="text" name="marketshop_menu_link_border_bottom_color" value="<?php echo $marketshop_menu_link_border_bottom_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Home Page Link</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_home_page_link_background_color" value="<?php echo $marketshop_home_page_link_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_home_page_link_background_color_hover" value="<?php echo $marketshop_home_page_link_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_home_page_link_link_color" value="<?php echo $marketshop_home_page_link_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_home_page_link_link_color_hover" value="<?php echo $marketshop_home_page_link_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Icon Color:</td>
              <td><input type="text" name="marketshop_home_page_link_icon_color" value="<?php echo $marketshop_home_page_link_icon_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Icon Color hover:</td>
              <td><input type="text" name="marketshop_home_page_link_icon_color_hover" value="<?php echo $marketshop_home_page_link_icon_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>Categories Section</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_categories_section_background_color" value="<?php echo $marketshop_categories_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_categories_section_background_color_hover" value="<?php echo $marketshop_categories_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_categories_section_link_color" value="<?php echo $marketshop_categories_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_categories_section_link_color_hover" value="<?php echo $marketshop_categories_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Brands Section</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_brands_section_background_color" value="<?php echo $marketshop_brands_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_brands_section_background_color_hover" value="<?php echo $marketshop_brands_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_brands_section_link_color" value="<?php echo $marketshop_brands_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_brands_section_link_color_hover" value="<?php echo $marketshop_brands_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>Custom Links Section</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_custom_link_section_background_color" value="<?php echo $marketshop_custom_link_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_custom_link_section_background_color_hover" value="<?php echo $marketshop_custom_link_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_custom_link_section_link_color" value="<?php echo $marketshop_custom_link_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_custom_link_section_link_color_hover" value="<?php echo $marketshop_custom_link_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Custom Blocks Section</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_custom_block_section_background_color" value="<?php echo $marketshop_custom_block_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_custom_block_section_background_color_hover" value="<?php echo $marketshop_custom_block_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_custom_block_section_link_color" value="<?php echo $marketshop_custom_block_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_custom_block_section_link_color_hover" value="<?php echo $marketshop_custom_block_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>My Account Section</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_myaccount_section_background_color" value="<?php echo $marketshop_myaccount_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_myaccount_section_background_color_hover" value="<?php echo $marketshop_myaccount_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_myaccount_section_link_color" value="<?php echo $marketshop_myaccount_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_myaccount_section_link_color_hover" value="<?php echo $marketshop_myaccount_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Information Section</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_information_section_background_color" value="<?php echo $marketshop_information_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_information_section_background_color_hover" value="<?php echo $marketshop_information_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_information_section_link_color" value="<?php echo $marketshop_information_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_information_section_link_color_hover" value="<?php echo $marketshop_information_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>Contact Link</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_contact_section_background_color" value="<?php echo $marketshop_contact_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_contact_section_background_color_hover" value="<?php echo $marketshop_contact_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_contact_section_link_color" value="<?php echo $marketshop_contact_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_contact_section_link_color_hover" value="<?php echo $marketshop_contact_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Custom Link for Right Side</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_custom_link_right_background_color" value="<?php echo $marketshop_custom_link_right_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Color hover:</td>
              <td><input type="text" name="marketshop_custom_link_right_background_color_hover" value="<?php echo $marketshop_custom_link_right_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color:</td>
              <td><input type="text" name="marketshop_custom_link_right_link_color" value="<?php echo $marketshop_custom_link_right_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Color hover:</td>
              <td><input type="text" name="marketshop_custom_link_right_link_color_hover" value="<?php echo $marketshop_custom_link_right_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>Sub Menu</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_sub_menu_background_color" value="<?php echo $marketshop_sub_menu_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Top Border Color:</td>
              <td><input type="text" name="marketshop_sub_menu_top_border_color" value="<?php echo $marketshop_sub_menu_top_border_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Links Color:</td>
              <td><input type="text" name="marketshop_sub_menu_link_color" value="<?php echo $marketshop_sub_menu_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Links Color Hover:</td>
              <td><input type="text" name="marketshop_sub_menu_link_hover_color" value="<?php echo $marketshop_sub_menu_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Link Separator:</td>
              <td>Color:
                <input type="text" name="marketshop_sub_menu_link_separator_color" value="<?php echo $marketshop_sub_menu_link_separator_color; ?>" size="6" class="color {required:false,hash:true}" />
                <br />
                <br />
                Style:
                <select name="marketshop_sub_menu_link_separator_style">
                  <option value="solid"<?php if($marketshop_sub_menu_link_separator_style == '1') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_sub_menu_link_separator_style == '2') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_sub_menu_link_separator_style == '3') echo ' selected="selected"';?>>Dashed</option>
                </select></td>
            </tr>
            <tr>
              <td>Heading Text Color:<br />
                <small>Only for Categories Horizontal Style</small></td>
              <td><input type="text" name="marketshop_sub_menu_heading_text_color" value="<?php echo $marketshop_sub_menu_heading_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Heading Text Separator:<br />
                <small>Only for Categories Horizontal Style</small></td>
              <td>Color:
                <input type="text" name="marketshop_sub_menu_heading_text_separator_color" value="<?php echo $marketshop_sub_menu_heading_text_separator_color; ?>" size="6" class="color {required:false,hash:true}"  />
                <br />
                <br />
                Style:
                <select name="marketshop_sub_menu_heading_text_separator_style">
                  <option value="solid"<?php if($marketshop_sub_menu_heading_text_separator_style == '1') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_sub_menu_heading_text_separator_style == '2') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_sub_menu_heading_text_separator_style == '3') echo ' selected="selected"';?>>Dashed</option>
                </select></td>
            </tr>
          </table>
        </div>
        <div id="tab_footer_color" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="2"><h2>Footer Part 1</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_footer_bg_color" value="<?php echo $marketshop_footer_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_titles_color; ?></td>
              <td><input type="text" name="marketshop_footer_titles_color" value="<?php echo $marketshop_footer_titles_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color; ?></td>
              <td><input type="text" name="marketshop_footer_text_color" value="<?php echo $marketshop_footer_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_link_color; ?></td>
              <td><input type="text" name="marketshop_footer_link_color" value="<?php echo $marketshop_footer_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_link_color_hover; ?></td>
              <td><input type="text" name="marketshop_footer_link_hover_color" value="<?php echo $marketshop_footer_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Contact Icon Color:</td>
              <td><table>
                  <tr style="display:inline-block; text-align:center">
                    <td style="padding:0 5px;">1<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">2<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/1_admin/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">3<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/2/location.png" alt="" title="" ></td>
                    <td style="padding:0 5px;">4<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/3/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">5<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/4/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">6<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/5/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">7<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/6/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">8<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/7/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">9<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/8/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">10<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/9/location.png" alt="" title=""></td>
                    <td style="padding:0 5px;">11<br />
                      <img src="../catalog/view/theme/marketshop/image/contact/10/location.png" alt="" title=""></td>
                  </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;
                <select name="marketshop_contact_icon">
                  <option value="contact_icon"<?php if($marketshop_contact_icon == 'contact_icon') echo ' selected="selected"';?>>1</option>
                  <option value="contact_icon1"<?php if($marketshop_contact_icon == 'contact_icon1') echo ' selected="selected"';?>>2</option>
                  <option value="contact_icon2"<?php if($marketshop_contact_icon == 'contact_icon2') echo ' selected="selected"';?>>3</option>
                  <option value="contact_icon3"<?php if($marketshop_contact_icon == 'contact_icon3') echo ' selected="selected"';?>>4</option>
                  <option value="contact_icon4"<?php if($marketshop_contact_icon == 'contact_icon4') echo ' selected="selected"';?>>5</option>
                  <option value="contact_icon5"<?php if($marketshop_contact_icon == 'contact_icon5') echo ' selected="selected"';?>>6</option>
                  <option value="contact_icon6"<?php if($marketshop_contact_icon == 'contact_icon6') echo ' selected="selected"';?>>7</option>
                  <option value="contact_icon7"<?php if($marketshop_contact_icon == 'contact_icon7') echo ' selected="selected"';?>>8</option>
                  <option value="contact_icon8"<?php if($marketshop_contact_icon == 'contact_icon8') echo ' selected="selected"';?>>9</option>
                  <option value="contact_icon9"<?php if($marketshop_contact_icon == 'contact_icon9') echo ' selected="selected"';?>>10</option>
                  <option value="contact_icon10"<?php if($marketshop_contact_icon == 'contact_icon10') echo ' selected="selected"';?>>11</option>
                </select>
                &nbsp;&nbsp;<?php echo $entry_select_your_no; ?></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Footer Part 2</h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_footer_second_bg_color" value="<?php echo $marketshop_footer_second_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color; ?></td>
              <td><input type="text" name="marketshop_footer_second_text_color" value="<?php echo $marketshop_footer_second_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_link_color; ?></td>
              <td><input type="text" name="marketshop_footer_second_link_color" value="<?php echo $marketshop_footer_second_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_link_color_hover; ?></td>
              <td><input type="text" name="marketshop_footer_second_link_hover_color" value="<?php echo $marketshop_footer_second_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Separator:</td>
              <td>Size:
                <select name="marketshop_footer_second_separator_size">
                  <option value="1"<?php if($marketshop_footer_second_separator_size == '1') echo ' selected="selected"';?>>1px</option>
                  <option value="2"<?php if($marketshop_footer_second_separator_size == '2') echo ' selected="selected"';?>>2px</option>
                  <option value="3"<?php if($marketshop_footer_second_separator_size == '3') echo ' selected="selected"';?>>3px</option>
                </select>
                <br />
                <br />
                Style:
                <select name="marketshop_footer_second_separator_style">
                  <option value="solid"<?php if($marketshop_footer_second_separator_style == 'solid') echo ' selected="selected"';?>>Solid</option>
                  <option value="dotted"<?php if($marketshop_footer_second_separator_style == 'dotted') echo ' selected="selected"';?>>Dotted</option>
                  <option value="dashed"<?php if($marketshop_footer_second_separator_style == 'dashed') echo ' selected="selected"';?>>Dashed</option>
                </select>
                <br />
                <br />
                Color:
                <input type="text" name="marketshop_footer_second_separator_color" value="<?php echo $marketshop_footer_second_separator_color; ?>" size="6" class="color {required:false,hash:true}" /></td>
            </tr>
          </table>
        </div>
        <div id="tab_price_color" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="2"><h2><?php echo $entry_price; ?></h2>
                <div class="info-help" style="text-align:left;"><?php echo $entry_colors_sub_help; ?></div></td>
            </tr>
            <tr>
              <td><?php echo $entry_price_color; ?></td>
              <td><input type="text" name="marketshop_price_color" value="<?php echo $marketshop_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_old_price_color; ?></td>
              <td><input type="text" name="marketshop_old_price_color" value="<?php echo $marketshop_old_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_new_price_color; ?></td>
              <td><input type="text" name="marketshop_new_price_color" value="<?php echo $marketshop_new_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_tax_price_color; ?></td>
              <td><input type="text" name="marketshop_tax_price_color" value="<?php echo $marketshop_tax_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Saving Percentage</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_saving_percentage_bg_color" value="<?php echo $marketshop_saving_percentage_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Text Color:</td>
              <td><input type="text" name="marketshop_saving_percentage_text_color" value="<?php echo $marketshop_saving_percentage_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
        </div>
        <div id="tab_button_color" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="2"><h2>General Buttons</h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_button_bg_color" value="<?php echo $marketshop_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Hover Color:</td>
              <td><input type="text" name="marketshop_button_bg_hover_color" value="<?php echo $marketshop_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color; ?></td>
              <td><input type="text" name="marketshop_button_text_color" value="<?php echo $marketshop_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color_hover; ?></td>
              <td><input type="text" name="marketshop_button_text_hover_color" value="<?php echo $marketshop_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form form_bg">
            <tr>
              <td colspan="2"><h2>Add to Cart Buttons</h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_cart_button_bg_color" value="<?php echo $marketshop_cart_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Hover Color:</td>
              <td><input type="text" name="marketshop_cart_button_bg_hover_color" value="<?php echo $marketshop_cart_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color; ?></td>
              <td><input type="text" name="marketshop_cart_button_text_color" value="<?php echo $marketshop_cart_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color_hover; ?></td>
              <td><input type="text" name="marketshop_cart_button_text_hover_color" value="<?php echo $marketshop_cart_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2"><h2>Exclusive Buttons</h2></td>
            </tr>
            <tr>
              <td><?php echo $entry_pattern_sub; ?></td>
              <td><input type="text" name="marketshop_excl_button_bg_color" value="<?php echo $marketshop_excl_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td>Background Hover Color:</td>
              <td><input type="text" name="marketshop_excl_button_bg_hover_color" value="<?php echo $marketshop_excl_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color; ?></td>
              <td><input type="text" name="marketshop_excl_button_text_color" value="<?php echo $marketshop_excl_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
            <tr>
              <td><?php echo $entry_text_color_hover; ?></td>
              <td><input type="text" name="marketshop_excl_button_text_hover_color" value="<?php echo $marketshop_excl_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
        </div>
        <div id="tab_side_blocks_color" class="vtabs-content">
          <table class="form">
            <tr>
              <td colspan="2"><h2>Custom Block</h2></td>
            </tr>
            <tr>
              <td>Background Color:</td>
              <td><input type="text" name="marketshop_custom_block_bg_color" value="<?php echo $marketshop_custom_block_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
            </tr>
          </table>
        </div>
      </div>
      <div id="tab_fonts">
        <table class="form">
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><?php echo $entry_body_font ?></td>
            <td><select name="marketshop_body_font">
                <?php foreach ($fonts as $fv => $fc) { ?>
                <?php ($fv ==  $this->config->get('marketshop_body_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr class="form_bg">
            <td>Top Bar:</td>
            <td><select name="marketshop_top_bar_font">
                <?php foreach ($fonts as $fv => $fc) { ?>
                <?php ($fv ==  $this->config->get('marketshop_top_bar_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                <?php } ?>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Font Size:
              <select name="marketshop_top_bar_font_size">
                <option value=""<?php if($marketshop_top_bar_font_size == '0') echo ' selected="selected"';?>>Default</option>
                <option value="11px"<?php if($marketshop_top_bar_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                <option value="12px"<?php if($marketshop_top_bar_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                <option value="13px"<?php if($marketshop_top_bar_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                <option value="14px"<?php if($marketshop_top_bar_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                <option value="15px"<?php if($marketshop_top_bar_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                <option value="16px"<?php if($marketshop_top_bar_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                <option value="17px"<?php if($marketshop_top_bar_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                <option value="18px"<?php if($marketshop_top_bar_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                <option value="19px"<?php if($marketshop_top_bar_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                <option value="20px"<?php if($marketshop_top_bar_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                <option value="21px"<?php if($marketshop_top_bar_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                <option value="22px"<?php if($marketshop_top_bar_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                <option value="23px"<?php if($marketshop_top_bar_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                <option value="24px"<?php if($marketshop_top_bar_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                <option value="25px"<?php if($marketshop_top_bar_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                <option value="26px"<?php if($marketshop_top_bar_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                <option value="27px"<?php if($marketshop_top_bar_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                <option value="28px"<?php if($marketshop_top_bar_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                <option value="29px"<?php if($marketshop_top_bar_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                <option value="30px"<?php if($marketshop_top_bar_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                <option value="31px"<?php if($marketshop_top_bar_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                <option value="32px"<?php if($marketshop_top_bar_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                <option value="33px"<?php if($marketshop_top_bar_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                <option value="34px"<?php if($marketshop_top_bar_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                <option value="35px"<?php if($marketshop_top_bar_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                <option value="36px"<?php if($marketshop_top_bar_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                <option value="37px"<?php if($marketshop_top_bar_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                <option value="38px"<?php if($marketshop_top_bar_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                <option value="39px"<?php if($marketshop_top_bar_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                <option value="40px"<?php if($marketshop_top_bar_font_size == '40px') echo ' selected="selected"';?>>40px</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Weight:
              <select name="marketshop_top_bar_font_weight">
                <option value=""<?php if($marketshop_top_bar_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                <option value="normal"<?php if($marketshop_top_bar_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                <option value="bold"<?php if($marketshop_top_bar_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Text Transform:
              <select name="marketshop_top_bar_font_uppercase">
                <option value=""<?php if($marketshop_top_bar_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                <option value="uppercase"<?php if($marketshop_top_bar_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                <option value="lowercase"<?php if($marketshop_top_bar_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
              </select></td>
          </tr>
          <tr>
            <td>Main Menu Font:</td>
            <td><select name="marketshop_main_menu_font">
                <?php foreach ($fonts as $fv => $fc) { ?>
                <?php ($fv ==  $this->config->get('marketshop_main_menu_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                <?php } ?>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Font Size:
              <select name="marketshop_main_menu_font_size">
                <option value=""<?php if($marketshop_main_menu_font_size == '0') echo ' selected="selected"';?>>Default</option>
                <option value="11px"<?php if($marketshop_main_menu_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                <option value="12px"<?php if($marketshop_main_menu_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                <option value="13px"<?php if($marketshop_main_menu_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                <option value="14px"<?php if($marketshop_main_menu_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                <option value="15px"<?php if($marketshop_main_menu_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                <option value="16px"<?php if($marketshop_main_menu_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                <option value="17px"<?php if($marketshop_main_menu_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                <option value="18px"<?php if($marketshop_main_menu_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                <option value="19px"<?php if($marketshop_main_menu_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                <option value="20px"<?php if($marketshop_main_menu_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                <option value="21px"<?php if($marketshop_main_menu_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                <option value="22px"<?php if($marketshop_main_menu_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                <option value="23px"<?php if($marketshop_main_menu_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                <option value="24px"<?php if($marketshop_main_menu_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                <option value="25px"<?php if($marketshop_main_menu_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                <option value="26px"<?php if($marketshop_main_menu_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                <option value="27px"<?php if($marketshop_main_menu_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                <option value="28px"<?php if($marketshop_main_menu_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                <option value="29px"<?php if($marketshop_main_menu_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                <option value="30px"<?php if($marketshop_main_menu_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                <option value="31px"<?php if($marketshop_main_menu_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                <option value="32px"<?php if($marketshop_main_menu_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                <option value="33px"<?php if($marketshop_main_menu_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                <option value="34px"<?php if($marketshop_main_menu_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                <option value="35px"<?php if($marketshop_main_menu_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                <option value="36px"<?php if($marketshop_main_menu_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                <option value="37px"<?php if($marketshop_main_menu_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                <option value="38px"<?php if($marketshop_main_menu_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                <option value="39px"<?php if($marketshop_main_menu_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                <option value="40px"<?php if($marketshop_main_menu_font_size == '40px') echo ' selected="selected"';?>>40px</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Weight:
              <select name="marketshop_main_menu_font_weight">
                <option value=""<?php if($marketshop_main_menu_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                <option value="normal"<?php if($marketshop_main_menu_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                <option value="bold"<?php if($marketshop_main_menu_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Text Transform:
              <select name="marketshop_main_menu_font_uppercase">
                <option value=""<?php if($marketshop_main_menu_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                <option value="uppercase"<?php if($marketshop_main_menu_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                <option value="lowercase"<?php if($marketshop_main_menu_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
              </select></td>
          </tr>
          <tr class="form_bg">
            <td><?php echo $entry_title_font; ?></td>
            <td><select name="marketshop_title_font">
                <?php foreach ($fonts as $fv => $fc) { ?>
                <?php ($fv ==  $this->config->get('marketshop_title_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                <?php } ?>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Font Size:
              <select name="marketshop_title_font_size">
                <option value=""<?php if($marketshop_title_font_size == '0') echo ' selected="selected"';?>>Default</option>
                <option value="11px"<?php if($marketshop_title_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                <option value="12px"<?php if($marketshop_title_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                <option value="13px"<?php if($marketshop_title_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                <option value="14px"<?php if($marketshop_title_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                <option value="15px"<?php if($marketshop_title_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                <option value="16px"<?php if($marketshop_title_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                <option value="17px"<?php if($marketshop_title_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                <option value="18px"<?php if($marketshop_title_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                <option value="19px"<?php if($marketshop_title_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                <option value="20px"<?php if($marketshop_title_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                <option value="21px"<?php if($marketshop_title_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                <option value="22px"<?php if($marketshop_title_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                <option value="23px"<?php if($marketshop_title_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                <option value="24px"<?php if($marketshop_title_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                <option value="25px"<?php if($marketshop_title_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                <option value="26px"<?php if($marketshop_title_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                <option value="27px"<?php if($marketshop_title_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                <option value="28px"<?php if($marketshop_title_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                <option value="29px"<?php if($marketshop_title_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                <option value="30px"<?php if($marketshop_title_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                <option value="31px"<?php if($marketshop_title_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                <option value="32px"<?php if($marketshop_title_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                <option value="33px"<?php if($marketshop_title_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                <option value="34px"<?php if($marketshop_title_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                <option value="35px"<?php if($marketshop_title_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                <option value="36px"<?php if($marketshop_title_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                <option value="37px"<?php if($marketshop_title_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                <option value="38px"<?php if($marketshop_title_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                <option value="39px"<?php if($marketshop_title_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                <option value="40px"<?php if($marketshop_title_font_size == '40px') echo ' selected="selected"';?>>40px</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Weight:
              <select name="marketshop_title_font_weight">
                <option value=""<?php if($marketshop_title_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                <option value="normal"<?php if($marketshop_title_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                <option value="bold"<?php if($marketshop_title_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Text Transform:
              <select name="marketshop_title_font_uppercase">
                <option value=""<?php if($marketshop_title_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                <option value="uppercase"<?php if($marketshop_title_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                <option value="lowercase"<?php if($marketshop_title_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
              </select></td>
          </tr>
          <tr>
            <td>Secondary Titles:</td>
            <td><select name="marketshop_secondary_titles_font">
                <?php foreach ($fonts as $fv => $fc) { ?>
                <?php ($fv ==  $this->config->get('marketshop_secondary_titles_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                <?php } ?>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Font Size:
              <select name="marketshop_secondary_titles_font_size">
                <option value=""<?php if($marketshop_secondary_titles_font_size == '0') echo ' selected="selected"';?>>Default</option>
                <option value="11px"<?php if($marketshop_secondary_titles_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                <option value="12px"<?php if($marketshop_secondary_titles_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                <option value="13px"<?php if($marketshop_secondary_titles_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                <option value="14px"<?php if($marketshop_secondary_titles_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                <option value="15px"<?php if($marketshop_secondary_titles_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                <option value="16px"<?php if($marketshop_secondary_titles_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                <option value="17px"<?php if($marketshop_secondary_titles_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                <option value="18px"<?php if($marketshop_secondary_titles_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                <option value="19px"<?php if($marketshop_secondary_titles_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                <option value="20px"<?php if($marketshop_secondary_titles_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                <option value="21px"<?php if($marketshop_secondary_titles_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                <option value="22px"<?php if($marketshop_secondary_titles_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                <option value="23px"<?php if($marketshop_secondary_titles_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                <option value="24px"<?php if($marketshop_secondary_titles_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                <option value="25px"<?php if($marketshop_secondary_titles_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                <option value="26px"<?php if($marketshop_secondary_titles_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                <option value="27px"<?php if($marketshop_secondary_titles_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                <option value="28px"<?php if($marketshop_secondary_titles_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                <option value="29px"<?php if($marketshop_secondary_titles_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                <option value="30px"<?php if($marketshop_secondary_titles_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                <option value="31px"<?php if($marketshop_secondary_titles_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                <option value="32px"<?php if($marketshop_secondary_titles_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                <option value="33px"<?php if($marketshop_secondary_titles_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                <option value="34px"<?php if($marketshop_secondary_titles_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                <option value="35px"<?php if($marketshop_secondary_titles_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                <option value="36px"<?php if($marketshop_secondary_titles_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                <option value="37px"<?php if($marketshop_secondary_titles_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                <option value="38px"<?php if($marketshop_secondary_titles_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                <option value="39px"<?php if($marketshop_secondary_titles_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                <option value="40px"<?php if($marketshop_secondary_titles_font_size == '40px') echo ' selected="selected"';?>>40px</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Weight:
              <select name="marketshop_secondary_titles_font_weight">
                <option value=""<?php if($marketshop_secondary_titles_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                <option value="normal"<?php if($marketshop_secondary_titles_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                <option value="bold"<?php if($marketshop_secondary_titles_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Text Transform:
              <select name="marketshop_secondary_titles_font_uppercase">
                <option value=""<?php if($marketshop_secondary_titles_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                <option value="uppercase"<?php if($marketshop_secondary_titles_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                <option value="lowercase"<?php if($marketshop_secondary_titles_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
              </select></td>
          </tr>
          <tr class="form_bg">
            <td>Footer Titles:</td>
            <td><select name="marketshop_footer_titles_font">
                <?php foreach ($fonts as $fv => $fc) { ?>
                <?php ($fv ==  $this->config->get('marketshop_footer_titles_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                <?php } ?>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Font Size:
              <select name="marketshop_footer_titles_font_size">
                <option value=""<?php if($marketshop_footer_titles_font_size == '0') echo ' selected="selected"';?>>Default</option>
                <option value="11px"<?php if($marketshop_footer_titles_font_size == '11px') echo ' selected="selected"';?>>11px</option>
                <option value="12px"<?php if($marketshop_footer_titles_font_size == '12px') echo ' selected="selected"';?>>12px</option>
                <option value="13px"<?php if($marketshop_footer_titles_font_size == '13px') echo ' selected="selected"';?>>13px</option>
                <option value="14px"<?php if($marketshop_footer_titles_font_size == '14px') echo ' selected="selected"';?>>14px</option>
                <option value="15px"<?php if($marketshop_footer_titles_font_size == '15px') echo ' selected="selected"';?>>15px</option>
                <option value="16px"<?php if($marketshop_footer_titles_font_size == '16px') echo ' selected="selected"';?>>16px</option>
                <option value="17px"<?php if($marketshop_footer_titles_font_size == '17px') echo ' selected="selected"';?>>17px</option>
                <option value="18px"<?php if($marketshop_footer_titles_font_size == '18px') echo ' selected="selected"';?>>18px</option>
                <option value="19px"<?php if($marketshop_footer_titles_font_size == '19px') echo ' selected="selected"';?>>19px</option>
                <option value="20px"<?php if($marketshop_footer_titles_font_size == '20px') echo ' selected="selected"';?>>20px</option>
                <option value="21px"<?php if($marketshop_footer_titles_font_size == '21px') echo ' selected="selected"';?>>21px</option>
                <option value="22px"<?php if($marketshop_footer_titles_font_size == '22px') echo ' selected="selected"';?>>22px</option>
                <option value="23px"<?php if($marketshop_footer_titles_font_size == '23px') echo ' selected="selected"';?>>23px</option>
                <option value="24px"<?php if($marketshop_footer_titles_font_size == '24px') echo ' selected="selected"';?>>24px</option>
                <option value="25px"<?php if($marketshop_footer_titles_font_size == '25px') echo ' selected="selected"';?>>25px</option>
                <option value="26px"<?php if($marketshop_footer_titles_font_size == '26px') echo ' selected="selected"';?>>26px</option>
                <option value="27px"<?php if($marketshop_footer_titles_font_size == '27px') echo ' selected="selected"';?>>27px</option>
                <option value="28px"<?php if($marketshop_footer_titles_font_size == '28px') echo ' selected="selected"';?>>28px</option>
                <option value="29px"<?php if($marketshop_footer_titles_font_size == '29px') echo ' selected="selected"';?>>29px</option>
                <option value="30px"<?php if($marketshop_footer_titles_font_size == '30px') echo ' selected="selected"';?>>30px</option>
                <option value="31px"<?php if($marketshop_footer_titles_font_size == '31px') echo ' selected="selected"';?>>31px</option>
                <option value="32px"<?php if($marketshop_footer_titles_font_size == '32px') echo ' selected="selected"';?>>32px</option>
                <option value="33px"<?php if($marketshop_footer_titles_font_size == '33px') echo ' selected="selected"';?>>33px</option>
                <option value="34px"<?php if($marketshop_footer_titles_font_size == '34px') echo ' selected="selected"';?>>34px</option>
                <option value="35px"<?php if($marketshop_footer_titles_font_size == '35px') echo ' selected="selected"';?>>35px</option>
                <option value="36px"<?php if($marketshop_footer_titles_font_size == '36px') echo ' selected="selected"';?>>36px</option>
                <option value="37px"<?php if($marketshop_footer_titles_font_size == '37px') echo ' selected="selected"';?>>37px</option>
                <option value="38px"<?php if($marketshop_footer_titles_font_size == '38px') echo ' selected="selected"';?>>38px</option>
                <option value="39px"<?php if($marketshop_footer_titles_font_size == '39px') echo ' selected="selected"';?>>39px</option>
                <option value="40px"<?php if($marketshop_footer_titles_font_size == '40px') echo ' selected="selected"';?>>40px</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Weight:
              <select name="marketshop_footer_titles_font_weight">
                <option value=""<?php if($marketshop_footer_titles_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                <option value="normal"<?php if($marketshop_footer_titles_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                <option value="bold"<?php if($marketshop_footer_titles_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
              </select>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Text Transform:
              <select name="marketshop_footer_titles_font_uppercase">
                <option value=""<?php if($marketshop_footer_titles_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                <option value="uppercase"<?php if($marketshop_footer_titles_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                <option value="lowercase"<?php if($marketshop_footer_titles_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
              </select></td>
          </tr>
        </table>
      </div>
      <div id="tab_custom_css">
        <table class="form">
          <tr>
            <td><?php echo $entry_custom_css; ?></td>
            <td><textarea name="marketshop_custom_css" cols="52" rows="20" style="width:80%;"><?php echo $marketshop_custom_css; ?></textarea></td>
          </tr>
        </table>
      </div>
    </form>
  </div>
</div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('marketshop_custom_block_content[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_custom_block2_content[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_custom_block3_content[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_about_details[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_powered[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_custom_column_footer[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_custom_column[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_video_box_content[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_custom_block_top_content[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

CKEDITOR.replace('marketshop_custom_block2_top_content[<?php echo $language["language_id"]; ?>]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script>
<script type="text/javascript"><!--
$('#tabs a').tabs();
$('#general_tabs a').tabs();
$('#side_blocks_tabs a').tabs();
$('#color_bg a').tabs();
$('#settings_tabs a').tabs();
$('#option_tabs a').tabs();
$('#contact_about_tabs a').tabs();
$('#custom_feature_box a').tabs();
$('#language1 a').tabs();
$('#language2 a').tabs();
$('#language3 a').tabs();
$('#language4 a').tabs();
$('#language5 a').tabs();
$('#language6 a').tabs();
$('#language7 a').tabs();
$('#language8 a').tabs();
$('#language9 a').tabs();
$('#language10 a').tabs();
$('#language11 a').tabs();
//--></script>
<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<?php echo $footer; ?>