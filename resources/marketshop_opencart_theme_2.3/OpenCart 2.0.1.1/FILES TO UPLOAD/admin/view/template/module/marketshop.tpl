<?php echo $header; ?><?php echo $column_left; ?>
<?php 
	
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

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-marketshop" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-marketshop" class="form-horizontal">
      <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
      <div class="col-sm-6">
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
        <div class="col-sm-10">
          <select name="marketshop_status" id="input-status" class="form-control">
            <?php if ($marketshop_status) { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      </div>
      <div class="col-sm-6">
      <div class="form-group">
        <label class="col-sm-3 control-label">Skin<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_41.jpg">?</a></label>
        <div class="col-sm-9">
          <select name="marketshop_skin" class="form-control">
                        <option value="1"<?php if($marketshop_skin == '1') echo ' selected="selected"';?>>MarketShop 1</option>
                        <option value="2"<?php if($marketshop_skin == '2') echo ' selected="selected"';?>>MarketShop 2</option>
                        <option value="3"<?php if($marketshop_skin == '3') echo ' selected="selected"';?>>MarketShop 3</option>
                        <option value="4"<?php if($marketshop_skin == '4') echo ' selected="selected"';?>>MarketShop 4</option>
                      </select>
        </div>
      </div>
      </div>
      
      <br />
      <div class="tab-content">
        <ul class="nav nav-tabs">
          <li class="active"><a href="#tab_general" data-toggle="tab">General Options</a></li>
          <li><a href="#tab_footer" data-toggle="tab"><?php echo $entry_footer; ?></a></li>
          <li><a href="#tab_side_blocks" data-toggle="tab">Side Blocks</a></li>
          <li><a href="#tab_background" data-toggle="tab">Background Image</a></li>
          <li><a href="#tab_colors" data-toggle="tab">Colors and Style</a></li>
          <li><a href="#tab_fonts" data-toggle="tab"><?php echo $entry_fonts_sub; ?></a></li>
          <li><a href="#tab_custom_css" data-toggle="tab"><?php echo $entry_custom_css; ?></a></li>
        </ul>
      </div>
      <div class="tab-content">
        <div class="tab-pane active" id="tab_general">
          <div class="col-sm-2">
            <ul class="nav nav-pills nav-stacked">
              <li class="active"><a href="#tab_general2" data-toggle="tab"><?php echo $entry_general; ?></a></li>
              <li><a href="#tab_layout" data-toggle="tab">Layout</a></li>
              <li><a href="#tab_top_menu" data-toggle="tab">Header</a></li>
              <li><a href="#tab_main_menu" data-toggle="tab"><?php echo $entry_main_menu; ?></a></li>
              <li><a href="#feature_box" data-toggle="tab">Feature Box</a></li>
              <li><a href="#tab_product_grid" data-toggle="tab"><?php echo $entry_product_grid; ?></a></li>
              <li><a href="#tab_category_page" data-toggle="tab"><?php echo $entry_category_page; ?></a></li>
              <li><a href="#tab_product_page" data-toggle="tab">Product Page</a></li>
            </ul>
          </div>
          <div class="col-sm-10">
            <div class="tab-content">
              <div id="tab_general2" class="tab-pane active">
                <table class="table table-hover">
                  <tr>
                    <td style="width:30%;">Search Auto-Complete <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_1.jpg">?</a></td>
                    <td><select name="marketshop_search_auto_complete" class="form-control">
                        <option value="1"<?php if($marketshop_search_auto_complete == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_search_auto_complete == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                  </tr>
                  <tr>
                    <td>Mobile Main Menu Title <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_2.jpg">?</a></td>
                    <td><?php foreach ($languages as $language) { ?>
                      <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                        <input class="form-control" type="text" name="marketshop_mobile_menu_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_mobile_menu_title[$language['language_id']]) ? $marketshop_mobile_menu_title[$language['language_id']] : ''; ?>" />
                      </div>
                      <?php } ?></td>
                  </tr>
                  <tr>
                    <td>Slideshow <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_30.jpg">?</a></td>
                    <td><select name="marketshop_homepage_slideshow" class="form-control">
                        <option value="1"<?php if($marketshop_homepage_slideshow == '1') echo ' selected="selected"';?>>Default OpenCart Slider</option>
                        <option value="2"<?php if($marketshop_homepage_slideshow == '2') echo ' selected="selected"';?>>Nivo Slider</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_percentage_discount_badge; ?> <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_31.jpg">?</a></td>
                    <td><select name="marketshop_percentage_discount_badge" class="form-control">
                        <option value="1"<?php if($marketshop_percentage_discount_badge == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_percentage_discount_badge == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                  </tr>
                  <tr>
                    <td>Affiliate Link <small>(in Footer)</small> <a data-toggle="tooltip" data-original-title="Click Here" class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_5.jpg">?</a></td>
                    <td><select name="marketshop_affiliate_status" class="form-control">
                        <option value="1"<?php if($marketshop_affiliate_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_affiliate_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                  </tr>
                  <tr>
                    <td>Scroll to Top Button <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_6.jpg">?</a></td>
                    <td><select name="marketshop_back_to_top" class="form-control">
                        <option value="1"<?php if($marketshop_back_to_top == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_back_to_top == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                  </tr>
                </table>
              </div>
              <div id="tab_layout" class="tab-pane">
                <table class="table table-hover">
                  <tr>
                    <td>Layout Style <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_8.jpg">?</a></td>
                    <td><select name="marketshop_layout_style" class="form-control">
                        <option value="1"<?php if($marketshop_layout_style == '1') echo ' selected="selected"';?>>Full width</option>
                        <option value="2"<?php if($marketshop_layout_style == '2') echo ' selected="selected"';?>>Boxed</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td>Main Menu Style <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_32.jpg">?</a></td>
                    <td><select name="marketshop_main_menu_style" class="form-control">
                        <option value="1"<?php if($marketshop_main_menu_style == '1') echo ' selected="selected"';?>>Full width</option>
                        <option value="2"<?php if($marketshop_main_menu_style == '2') echo ' selected="selected"';?>>Boxed</option>
                      </select></td>
                  </tr>
                </table>
              </div>
              <div id="tab_top_menu" class="tab-pane">
                <div class="well">
                  <h2>Header Style</h2>
                  <table class="table table-hover">
                    <tr>
                      <td>Style <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_9.jpg">?</a></td>
                      <td><select name="marketshop_header_style" class="form-control">
                          <option value="1"<?php if($marketshop_header_style == '1') echo ' selected="selected"';?>>Style1 - ( Logo Left & Search Right )</option>
                          <option value="2"<?php if($marketshop_header_style == '2') echo ' selected="selected"';?>>Style2 - ( Logo Center & Search Right )</option>
                          <option value="3"<?php if($marketshop_header_style == '3') echo ' selected="selected"';?>>Style3 - ( Logo Left & Search Center )</option>
                        </select></td>
                    </tr>
                    <tr>
                      <td>Margin <small>for Top &amp; bottom</small> <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_40.jpg">?</a></td>
                      <td><select name="marketshop_header_margin" class="form-control">
                          <option value=""<?php if($marketshop_header_margin == '1') echo ' selected="selected"';?>>Default</option>
                          <option value="5"<?php if($marketshop_header_margin == '5') echo ' selected="selected"';?>>5px</option>
                          <option value="10"<?php if($marketshop_header_margin == '10') echo ' selected="selected"';?>>10px</option>
                          <option value="15"<?php if($marketshop_header_margin == '15') echo ' selected="selected"';?>>15px</option>
                          <option value="20"<?php if($marketshop_header_margin == '20') echo ' selected="selected"';?>>20px</option>
                          <option value="25"<?php if($marketshop_header_margin == '25') echo ' selected="selected"';?>>25px</option>
                          <option value="30"<?php if($marketshop_header_margin == '30') echo ' selected="selected"';?>>30px</option>
                          <option value="35"<?php if($marketshop_header_margin == '35') echo ' selected="selected"';?>>35px</option>
                          <option value="40"<?php if($marketshop_header_margin == '40') echo ' selected="selected"';?>>40px</option>
                        </select></td>
                    </tr>
                  </table>
                </div>
                <h2>Top Bar</h2>
                <table class="table table-hover">
                  <tr>
                    <td>Telephone No<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
                    <td><select name="marketshop_top_bar_contact_status" class="form-control">
                        <option value="0"<?php if($marketshop_top_bar_contact_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                        <option value="1"<?php if($marketshop_top_bar_contact_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      </select></td>
                    <td><?php foreach ($languages as $language) { ?>
                      <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                        <input class="form-control" type="text" name="marketshop_top_bar_contact[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_top_bar_contact[$language['language_id']]) ? $marketshop_top_bar_contact[$language['language_id']] : ''; ?>" />
                      </div>
                      <?php } ?></td>
                  </tr>
                  <tr>
                    <td>Email Id<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
                    <td><select name="marketshop_top_bar_email_status" class="form-control">
                        <option value="0"<?php if($marketshop_top_bar_email_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                        <option value="1"<?php if($marketshop_top_bar_email_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      </select></td>
                    <td><?php foreach ($languages as $language) { ?>
                      <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                        <input class="form-control" type="text" name="marketshop_top_bar_email[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_top_bar_email[$language['language_id']]) ? $marketshop_top_bar_email[$language['language_id']] : ''; ?>" />
                      </div>
                      <?php } ?></td>
                  </tr>
                  <tr>
                    <td>Wishlist Link<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
                    <td><select name="marketshop_wishlist_top_link" class="form-control">
                        <option value="1"<?php if($marketshop_wishlist_top_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_wishlist_top_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Checkout Link<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_10.jpg">?</a></td>
                    <td><select name="marketshop_checkout_top_link" class="form-control">
                        <option value="1"<?php if($marketshop_checkout_top_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_checkout_top_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Language/Currency Title<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_11.jpg">?</a></td>
                    <td><select name="marketshop_language_currency_title" class="form-control">
                        <option value="1"<?php if($marketshop_language_currency_title == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_language_currency_title == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
                <div class="well">
                  <h2><?php echo $entry_custom_links; ?> <small>(in Top Bar)</small><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_12.jpg">?</a></h2>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><?php echo $entry_title_label; ?></td>
                        <td><?php echo $entry_url; ?></td>
                        <td><?php echo $entry_open; ?></td>
                      </tr>
                    </thead>
                    <tr>
                      <td><?php echo $entry_link1; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link1_top"<?php if($marketshop_custom_link1_top == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link1_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link1_top_title[$language['language_id']]) ? $marketshop_custom_link1_top_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link1_top_url" value="<?php echo $marketshop_custom_link1_top_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link1_top">
                          <option value="_self"<?php if($marketshop_target_link1_top == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link1_top == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link1_top == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link2; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link2_top"<?php if($marketshop_custom_link2_top == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link2_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link2_top_title[$language['language_id']]) ? $marketshop_custom_link2_top_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link2_top_url" value="<?php echo $marketshop_custom_link2_top_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link2_top">
                          <option value="_self"<?php if($marketshop_target_link2_top == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link2_top == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link2_top == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link3; ?></td>
                      <td><input class="form-control"  type="checkbox" value="1" name="marketshop_custom_link3_top"<?php if($marketshop_custom_link3_top == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control"  type="text" name="marketshop_custom_link3_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link3_top_title[$language['language_id']]) ? $marketshop_custom_link3_top_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link3_top_url" value="<?php echo $marketshop_custom_link3_top_url; ?>" /></td>
                      <td><select class="form-control"  name="marketshop_target_link3_top">
                          <option value="_self"<?php if($marketshop_target_link3_top == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link3_top == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link3_top == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                  </table>
                </div>
                <br>
                <br>
                <h2><?php echo $entry_custom_block; ?> 1 <small>(in Top Bar)</small><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_13.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_block_top_status">
                      <option value="0"<?php if($marketshop_custom_block_top_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_block_top_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="tab-content">
                  <ul id="language8" class="nav nav-tabs">
                    <?php foreach ($languages as $language) { ?>
                    <li><a href="#tab8-language-<?php echo $language['language_id']; ?>" data-toggle="tab" ><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <div class="tab-content">
                    <?php foreach ($languages as $language) { ?>
                    <div id="tab8-language-<?php echo $language['language_id']; ?>" class="tab-pane">
                      <div class="form-group">
                        <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                        <div class="col-sm-10">
                          <input class="form-control" type="text" name="marketshop_custom_block_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block_top_title[$language['language_id']]) ? $marketshop_custom_block_top_title[$language['language_id']] : ''; ?>" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                        <div class="col-sm-10">
                          <textarea class="form-control" id="input-description8<?php echo $language['language_id']; ?>" name="marketshop_custom_block_top_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block_top_content[$language['language_id']]) ? $marketshop_custom_block_top_content[$language['language_id']] : ''; ?></textarea>
                        </div>
                      </div>
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <br>
                <br>
                <h2><?php echo $entry_custom_block; ?> 2 &nbsp;<small>(in Top Bar)</small><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_13.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_block2_top_status">
                      <option value="0"<?php if($marketshop_custom_block2_top_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_block2_top_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="tab-content">
                  <ul id="language9" class="nav nav-tabs">
                    <?php foreach ($languages as $language) { ?>
                    <li><a data-toggle="tab" href="#tab9-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <div class="tab-content">
                    <?php foreach ($languages as $language) { ?>
                    <div id="tab9-language-<?php echo $language['language_id']; ?>" class="tab-pane">
                      <div class="form-group">
                        <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                        <div class="col-sm-10">
                          <input class="form-control" type="text" name="marketshop_custom_block2_top_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block2_top_title[$language['language_id']]) ? $marketshop_custom_block2_top_title[$language['language_id']] : ''; ?>" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_custom_column; ?></label>
                        <div class="col-sm-10">
                          <textarea id="input-description9<?php echo $language['language_id']; ?>" name="marketshop_custom_block2_top_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8" class="form-control"><?php echo isset($marketshop_custom_block2_top_content[$language['language_id']]) ? $marketshop_custom_block2_top_content[$language['language_id']] : ''; ?></textarea>
                        </div>
                      </div>
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div id="tab_main_menu" class="tab-pane">
                <div class="well">
                  <h2>Align <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_39.jpg">?</a></h2>
                  <hr />
                  <div class="form-group">
                    <label class="col-sm-2 control-label" >Text Align</label>
                    <div class="col-sm-10">
                      <select name="marketshop_main_menu_align" class="form-control">
                        <option value="1"<?php if($marketshop_main_menu_align == '1') echo ' selected="selected"';?>>Left</option>
                        <option value="2"<?php if($marketshop_main_menu_align == '2') echo ' selected="selected"';?>>Center</option>
                      </select>
                    </div>
                  </div>
                </div>
                <h2><?php echo $entry_home_page_link; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_14.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select name="marketshop_home_page_link" class="form-control">
                      <option value="1"<?php if($marketshop_home_page_link == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      <option value="2"<?php if($marketshop_home_page_link == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Style</label>
                  <div class="col-sm-10">
                    <select name="marketshop_home_page_link_icon" class="form-control">
                      <option value="1"<?php if($marketshop_home_page_link_icon == '1') echo ' selected="selected"';?>>Text</option>
                      <option value="2"<?php if($marketshop_home_page_link_icon == '2') echo ' selected="selected"';?>>Icon</option>
                    </select>
                  </div>
                </div>
                <div class="well">
                  <h2><?php echo $entry_categories; ?></h2>
                  <hr />
                  <div class="form-group">
                    <label class="col-sm-2 control-label" ><b>Style</b><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_15.jpg">?</a></label>
                    <div class="col-sm-10">
                      <select class="form-control" name="marketshop_top_menu">
                        <option value="1"<?php if($marketshop_top_menu == '1') echo ' selected="selected"';?>><?php echo $entry_opencart; ?></option>
                        <option value="2"<?php if($marketshop_top_menu == '2') echo ' selected="selected"';?>><?php echo $entry_vertical; ?></option>
                        <option value="3"<?php if($marketshop_top_menu == '3') echo ' selected="selected"';?>><?php echo $entry_horizontal; ?></option>
                        <option value="4"<?php if($marketshop_top_menu == '4') echo ' selected="selected"';?>><?php echo $entry_horizontal2; ?></option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" ><b><?php echo $entry_title_label; ?></b><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_16.jpg">?</a></label>
                    <div class="col-sm-10">
                      <?php foreach ($languages as $language) { ?>
                      <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                        <input class="form-control" type="text" name="marketshop_menu_categories_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_menu_categories_title[$language['language_id']]) ? $marketshop_menu_categories_title[$language['language_id']] : ''; ?>" />
                      </div>
                      <?php } ?>
                      <small>(Only For Vertical &amp; Horizontal Style)</small> </div>
                  </div>
                </div>
                <h2>Brands<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_17.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_menu_brands">
                      <option value="0"<?php if($marketshop_menu_brands == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_menu_brands == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                  <div class="col-sm-10">
                    <?php foreach ($languages as $language) { ?>
                    <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                      <input class="form-control" type="text" name="marketshop_menu_brands_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_menu_brands_title[$language['language_id']]) ? $marketshop_menu_brands_title[$language['language_id']] : ''; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Brands Display Style</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_brands_display_style">
                      <option value="1"<?php if($marketshop_brands_display_style == '1') echo ' selected="selected"';?>>Name</option>
                      <option value="2"<?php if($marketshop_brands_display_style == '2') echo ' selected="selected"';?>>Logo</option>
                      <option value="3"<?php if($marketshop_brands_display_style == '3') echo ' selected="selected"';?>>Logo with Name</option>
                    </select>
                  </div>
                </div>
                <br>
                <br>
                <div class="well">
                  <h2 style="margin-bottom:15px;"><?php echo $entry_custom_links; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_20.jpg">?</a></h2>
                  <hr>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><?php echo $entry_title_label; ?></td>
                        <td><?php echo $entry_url; ?></td>
                        <td><?php echo $entry_open; ?></td>
                      </tr>
                    </thead>
                    <tr>
                      <td><?php echo $entry_link1; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link1"<?php if($marketshop_custom_link1 == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link1_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link1_title[$language['language_id']]) ? $marketshop_custom_link1_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link1_url" value="<?php echo $marketshop_custom_link1_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link1">
                          <option value="_self"<?php if($marketshop_target_link1 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link1 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link1 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link2; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link2"<?php if($marketshop_custom_link2 == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link2_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link2_title[$language['language_id']]) ? $marketshop_custom_link2_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link2_url" value="<?php echo $marketshop_custom_link2_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link2">
                          <option value="_self"<?php if($marketshop_target_link2 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link2 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link2 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link3; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link3"<?php if($marketshop_custom_link3 == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link3_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link3_title[$language['language_id']]) ? $marketshop_custom_link3_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link3_url" value="<?php echo $marketshop_custom_link3_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link3">
                          <option value="_self"<?php if($marketshop_target_link3 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link3 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link3 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link4; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link4"<?php if($marketshop_custom_link4 == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link4_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link4_title[$language['language_id']]) ? $marketshop_custom_link4_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link4_url" value="<?php echo $marketshop_custom_link4_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link4">
                          <option value="_self"<?php if($marketshop_target_link4 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link4 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link4 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link5; ?></td>
                      <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link5"<?php if($marketshop_custom_link5 == '1') echo ' checked="checked"';?> /></td>
                      <td><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_custom_link5_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link5_title[$language['language_id']]) ? $marketshop_custom_link5_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?></td>
                      <td><input class="form-control" type="text" name="marketshop_custom_link5_url" value="<?php echo $marketshop_custom_link5_url; ?>" /></td>
                      <td><select class="form-control" name="marketshop_target_link5">
                          <option value="_self"<?php if($marketshop_target_link5 == '_self') echo ' selected="selected"';?><?php if($marketshop_target_link5 == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                          <option value="_blank"<?php if($marketshop_target_link5 == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                        </select></td>
                    </tr>
                  </table>
                </div>
                <h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 1<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_21.jpg">?</a></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_block_status">
                      <option value="0"<?php if($marketshop_custom_block_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_block_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="tab-content">
                  <ul id="language2" class="nav nav-tabs">
                    <?php foreach ($languages as $language) { ?>
                    <li><a data-toggle="tab" href="#tab2-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <div class="tab-content">
                    <?php foreach ($languages as $language) { ?>
                    <div class="tab-pane" id="tab2-language-<?php echo $language['language_id']; ?>">
                      <div class="form-group">
                        <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                        <div class="col-sm-10">
                          <input class="form-control" type="text" name="marketshop_custom_block_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block_title[$language['language_id']]) ? $marketshop_custom_block_title[$language['language_id']] : ''; ?>" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                        <div class="col-sm-10">
                          <textarea id="input-description2<?php echo $language['language_id']; ?>" name="marketshop_custom_block_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8" class="form-control"><?php echo isset($marketshop_custom_block_content[$language['language_id']]) ? $marketshop_custom_block_content[$language['language_id']] : ''; ?></textarea>
                        </div>
                      </div>
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <br>
                <br>
                <h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 2<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_21.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_block2_status">
                      <option value="0"<?php if($marketshop_custom_block2_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_block2_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <ul id="language4" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab4-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab4-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <input class="form-control" type="text" name="marketshop_custom_block2_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block2_title[$language['language_id']]) ? $marketshop_custom_block2_title[$language['language_id']] : ''; ?>" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description4<?php echo $language['language_id']; ?>" name="marketshop_custom_block2_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block2_content[$language['language_id']]) ? $marketshop_custom_block2_content[$language['language_id']] : ''; ?></textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
                <br>
                <br>
                <h2 style="margin-bottom:15px;"><?php echo $entry_custom_block; ?> 3<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_21.jpg">?</a></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_block3_status">
                      <option value="0"<?php if($marketshop_custom_block3_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_block3_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <ul id="language5" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab5-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab5-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <input class="form-control" type="text" name="marketshop_custom_block3_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_block3_title[$language['language_id']]) ? $marketshop_custom_block3_title[$language['language_id']] : ''; ?>" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description5<?php echo $language['language_id']; ?>" name="marketshop_custom_block3_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_block3_content[$language['language_id']]) ? $marketshop_custom_block3_content[$language['language_id']] : ''; ?></textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
                <br>
                <br>
                <div class="well">
                  <h2><?php echo $entry_information_pages; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_18.jpg">?</a></h2>
                  <hr>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                    <div class="col-sm-10">
                      <select class="form-control" name="marketshop_information_page">
                        <option value="0"<?php if($marketshop_information_page == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                        <option value="1"<?php if($marketshop_information_page == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      </select>
                    </div>
                  </div>
                </div>
                <h2><?php echo $entry_my_account; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_19.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_my_account">
                      <option value="0"<?php if($marketshop_my_account == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_my_account == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <br>
                <br>
                <div class="well">
                  <h2><?php echo $entry_contact_us; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_22.jpg">?</a></h2>
                  <hr>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                    <div class="col-sm-10">
                      <select class="form-control" name="marketshop_contact_us">
                        <option value="0"<?php if($marketshop_contact_us == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                        <option value="1"<?php if($marketshop_contact_us == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      </select>
                    </div>
                  </div>
                </div>
                <h2>Custom Link for Right Side <a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_33.jpg">?</a></h2>
                <hr />
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><?php echo $entry_title_label; ?></td>
                      <td><?php echo $entry_url; ?></td>
                      <td><?php echo $entry_open; ?></td>
                    </tr>
                  </thead>
                  <tr>
                    <td><?php echo $entry_link1; ?></td>
                    <td><input class="form-control" type="checkbox" value="1" name="marketshop_custom_link_right"<?php if($marketshop_custom_link_right == '1') echo ' checked="checked"';?> /></td>
                    <td><?php foreach ($languages as $language) { ?>
                      <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                        <input class="form-control" type="text" name="marketshop_custom_link_right_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_custom_link_right_title[$language['language_id']]) ? $marketshop_custom_link_right_title[$language['language_id']] : ''; ?>" />
                      </div>
                      <?php } ?></td>
                    <td><input class="form-control" type="text" name="marketshop_custom_link_right_url" value="<?php echo $marketshop_custom_link_right_url; ?>" /></td>
                    <td><select class="form-control" name="marketshop_custom_link_right_target">
                        <option value="_self"<?php if($marketshop_custom_link_right_target == '_self') echo ' selected="selected"';?><?php if($marketshop_custom_link_right_target == '') echo ' selected="selected"';?>><?php echo $entry_same_tab; ?></option>
                        <option value="_blank"<?php if($marketshop_custom_link_right_target == '_blank') echo ' selected="selected"';?>><?php echo $entry_new_tab; ?></option>
                      </select></td>
                  </tr>
                </table>
              </div>
              <div id="feature_box" class="tab-pane">
                <h2>Feature Box<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_34.jpg">?</a></h2>
                <div class="well">
                  <div class="form-group">
                    <label class="col-sm-2 control-label" >Position</label>
                    <div class="col-sm-10">
                      <select class="form-control" name="marketshop_feature_box_show_header_footer">
                        <option value="1"<?php if($marketshop_feature_box_show_header_footer == '1') echo ' selected="selected"';?>>In Header</option>
                        <option value="2"<?php if($marketshop_feature_box_show_header_footer == '2') echo ' selected="selected"';?>>In Footer</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" >Layout</label>
                    <div class="col-sm-10">
                      <select class="form-control" name="marketshop_feature_box_homepage_only">
                        <option value="1"<?php if($marketshop_feature_box_homepage_only == '1') echo ' selected="selected"';?>>Only HomePage</option>
                        <option value="2"<?php if($marketshop_feature_box_homepage_only == '2') echo ' selected="selected"';?>>All Pages</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" >Box in Row</label>
                    <div class="col-sm-10">
                      <select class="form-control" name="marketshop_feature_box_per_row">
                        <option value="pr1"<?php if($marketshop_feature_box_per_row == 'pr1') echo ' selected="selected"';?>>1</option>
                        <option value="pr2"<?php if($marketshop_feature_box_per_row == 'pr2') echo ' selected="selected"';?>>2</option>
                        <option value="pr3"<?php if($marketshop_feature_box_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                        <option value="pr4"<?php if($marketshop_feature_box_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                      </select>
                    </div>
                  </div>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <td>&nbsp;</td>
                        <td>Font Size:</td>
                        <td>Weight:</td>
                        <td>Text Transform:</td>
                      </tr>
                    </thead>
                    <tr>
                      <td><?php echo $entry_title_label; ?></td>
                      <td><select class="form-control" name="marketshop_feature_box_title_font_size">
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
                      <td><select class="form-control" name="marketshop_feature_box_title_font_weight">
                          <option value=""<?php if($marketshop_feature_box_title_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                          <option value="normal"<?php if($marketshop_feature_box_title_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                          <option value="bold"<?php if($marketshop_feature_box_title_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                        </select></td>
                      <td><select class="form-control" name="marketshop_feature_box_title_font_transform">
                          <option value=""<?php if($marketshop_feature_box_title_font_transform == '0') echo ' selected="selected"';?>>Default</option>
                          <option value="uppercase"<?php if($marketshop_feature_box_title_font_transform == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                          <option value="lowercase"<?php if($marketshop_feature_box_title_font_transform == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                        </select></td>
                    </tr>
                    <tr>
                      <td>Sub<?php echo $entry_title_label; ?></td>
                      <td><select class="form-control" name="marketshop_feature_box_subtitle_font_size">
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
                      <td><select class="form-control" name="marketshop_feature_box_subtitle_font_weight">
                          <option value=""<?php if($marketshop_feature_box_subtitle_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                          <option value="normal"<?php if($marketshop_feature_box_subtitle_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                          <option value="bold"<?php if($marketshop_feature_box_subtitle_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                        </select></td>
                      <td><select class="form-control" name="marketshop_feature_box_subtitle_font_transform">
                          <option value=""<?php if($marketshop_feature_box_subtitle_font_transform == '0') echo ' selected="selected"';?>>Default</option>
                          <option value="uppercase"<?php if($marketshop_feature_box_subtitle_font_transform == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                          <option value="lowercase"<?php if($marketshop_feature_box_subtitle_font_transform == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                        </select></td>
                    </tr>
                  </table>
                </div>
                <ul id="custom_feature_box" class="nav nav-tabs">
                  <li class="active"><a data-toggle="tab" href="#feature_box_1">Feature Box 1</a></li>
                  <li><a data-toggle="tab" href="#feature_box_2">Feature Box 2</a></li>
                  <li><a data-toggle="tab" href="#feature_box_3">Feature Box 3</a></li>
                  <li><a data-toggle="tab" href="#feature_box_4">Feature Box 4</a></li>
                </ul>
                <div class="tab-content">
                  <div id="feature_box_1" class="tab-pane active">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                      <div class="col-sm-10">
                        <select class="form-control" name="marketshop_feature_box1_status">
                          <option value="0"<?php if($marketshop_feature_box1_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_feature_box1_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box1_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box1_title[$language['language_id']]) ? $marketshop_feature_box1_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" >Sub<?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box1_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box1_subtitle[$language['language_id']]) ? $marketshop_feature_box1_subtitle[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div id="feature_box_2" class="tab-pane">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                      <div class="col-sm-10">
                        <select class="form-control" name="marketshop_feature_box2_status">
                          <option value="0"<?php if($marketshop_feature_box2_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_feature_box2_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box2_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box2_title[$language['language_id']]) ? $marketshop_feature_box2_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" >Sub<?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box2_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box2_subtitle[$language['language_id']]) ? $marketshop_feature_box2_subtitle[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div id="feature_box_3" class="tab-pane">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                      <div class="col-sm-10">
                        <select class="form-control" name="marketshop_feature_box3_status">
                          <option value="0"<?php if($marketshop_feature_box3_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_feature_box3_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box3_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box3_title[$language['language_id']]) ? $marketshop_feature_box3_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" >Sub<?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box3_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box3_subtitle[$language['language_id']]) ? $marketshop_feature_box3_subtitle[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div id="feature_box_4" class="tab-pane">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                      <div class="col-sm-10">
                        <select class="form-control" name="marketshop_feature_box4_status">
                          <option value="0"<?php if($marketshop_feature_box4_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_feature_box4_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box4_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box4_title[$language['language_id']]) ? $marketshop_feature_box4_title[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" >Sub<?php echo $entry_title_label; ?></label>
                      <div class="col-sm-10">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_feature_box4_subtitle[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_feature_box4_subtitle[$language['language_id']]) ? $marketshop_feature_box4_subtitle[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div id="tab_category_page" class="tab-pane">
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><b>Refined Categories</b><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_3.jpg">?</a></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_refine_categories">
                      <option value="1"<?php if($marketshop_refine_categories == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      <option value="2"<?php if($marketshop_refine_categories == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><b>Refined Categories Images</b><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_4.jpg">?</a></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_refine_categories_images">
                      <option value="1"<?php if($marketshop_refine_categories_images == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      <option value="2"<?php if($marketshop_refine_categories_images == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    </select>
                  </div>
                </div>
              </div>
              <div id="tab_product_grid" class="tab-pane">
                <h2><?php echo $entry_slider_products_in_a_row; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_35.jpg">?</a></h2>
                <table class="table table-hover" >
                  <thead>
                    <tr>
                      <td style="width:30%;">&nbsp;</td>
                      <td><?php echo $entry_in_a_row; ?></td>
                    </tr>
                  </thead>
                  <tr>
                    <td><?php echo $entry_featured_pr; ?></td>
                    <td><select class="form-control" name="marketshop_featured_slider_product_per_row">
                        <option value="3"<?php if($marketshop_featured_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_featured_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_featured_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_featured_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_latest_pr; ?></td>
                    <td><select class="form-control" name="marketshop_latest_slider_product_per_row">
                        <option value="3"<?php if($marketshop_latest_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_latest_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_latest_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_latest_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_bestsellers_pr; ?></td>
                    <td><select class="form-control" name="marketshop_bestsellers_slider_product_per_row">
                        <option value="3"<?php if($marketshop_bestsellers_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_bestsellers_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_bestsellers_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_bestsellers_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_specials_pr; ?></td>
                    <td><select class="form-control" name="marketshop_specials_slider_product_per_row">
                        <option value="3"<?php if($marketshop_specials_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_specials_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_specials_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_specials_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_product_tab_pr; ?></td>
                    <td><select class="form-control" name="marketshop_product_tab_slider_product_per_row">
                        <option value="3"<?php if($marketshop_product_tab_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_product_tab_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_product_tab_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_product_tab_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_lpbc_pr; ?></td>
                    <td><select class="form-control" name="marketshop_lpbc_slider_product_per_row">
                        <option value="3"<?php if($marketshop_lpbc_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_lpbc_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_lpbc_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_lpbc_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_lpbb_pr; ?></td>
                    <td><select class="form-control" name="marketshop_latest_product_brand_per_row">
                        <option value="3"<?php if($marketshop_latest_product_brand_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_latest_product_brand_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_latest_product_brand_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_latest_product_brand_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_related_products_pr; ?><br />
                      <small><?php echo $entry_in_product_page; ?></small></td>
                    <td><select class="form-control" name="marketshop_related_slider_product_per_row">
                        <option value="3"<?php if($marketshop_related_slider_product_per_row == '3') echo ' selected="selected"';?>>3</option>
                        <option value="4"<?php if($marketshop_related_slider_product_per_row == '4') echo ' selected="selected"';?>>4</option>
                        <option value="5"<?php if($marketshop_related_slider_product_per_row == '5') echo ' selected="selected"';?>>5</option>
                        <option value="6"<?php if($marketshop_related_slider_product_per_row == '6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                </table>
                <br>
                <br>
                <h2><?php echo $entry_pages_pr; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_35.jpg">?</a></h2>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <td style="width:30%;">&nbsp;</td>
                      <td ><?php echo $entry_in_a_row; ?></td>
                    </tr>
                  </thead>
                  <tr>
                    <td><?php echo $entry_category_page_pr; ?></td>
                    <td><select class="form-control" name="marketshop_category_product_per_row">
                        <option value="pr3"<?php if($marketshop_category_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                        <option value="pr4"<?php if($marketshop_category_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                        <option value="pr5"<?php if($marketshop_category_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                        <option value="pr6"<?php if($marketshop_category_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_search_page_pr; ?></td>
                    <td><select class="form-control" name="marketshop_search_product_per_row">
                        <option value="pr3"<?php if($marketshop_search_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                        <option value="pr4"<?php if($marketshop_search_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                        <option value="pr5"<?php if($marketshop_search_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                        <option value="pr6"<?php if($marketshop_search_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_special_page_pr; ?></td>
                    <td><select class="form-control" name="marketshop_special_product_per_row">
                        <option value="pr3"<?php if($marketshop_special_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                        <option value="pr4"<?php if($marketshop_special_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                        <option value="pr5"<?php if($marketshop_special_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                        <option value="pr6"<?php if($marketshop_special_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_brands_page_pr; ?></td>
                    <td><select class="form-control" name="marketshop_manufacturer_product_per_row">
                        <option value="pr3"<?php if($marketshop_manufacturer_product_per_row == 'pr3') echo ' selected="selected"';?>>3</option>
                        <option value="pr4"<?php if($marketshop_manufacturer_product_per_row == 'pr4') echo ' selected="selected"';?>>4</option>
                        <option value="pr5"<?php if($marketshop_manufacturer_product_per_row == 'pr5') echo ' selected="selected"';?>>5</option>
                        <option value="pr6"<?php if($marketshop_manufacturer_product_per_row == 'pr6') echo ' selected="selected"';?>>6</option>
                      </select></td>
                  </tr>
                </table>
              </div>
              <div id="tab_product_page" class="tab-pane">
                <h2><?php echo $entry_cloud_zoom; ?></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_cloud_zoom">
                      <option value="1"<?php if($marketshop_cloud_zoom == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      <option value="2"<?php if($marketshop_cloud_zoom == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    </select>
                    <small>If, You will Disable Cloud Zoom. So, Active default OpenCart PopupBox.</small> </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><?php echo $entry_cloud_zoom_style; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_36.jpg">?</a></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_cloud_zoom_inner">
                      <option value="1"<?php if($marketshop_cloud_zoom_inner == '1') echo ' selected="selected"';?>>Inner</option>
                      <option value="2"<?php if($marketshop_cloud_zoom_inner == '2') echo ' selected="selected"';?>>Outer</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><?php echo $entry_product_gallery; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_37.jpg">?</a></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_cloud_zoom_gallery">
                      <option value="1"<?php if($marketshop_cloud_zoom_gallery == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      <option value="2"<?php if($marketshop_cloud_zoom_gallery == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><?php echo $entry_product_gallery_text; ?></label>
                  <div class="col-sm-9">
                    <?php foreach ($languages as $language) { ?>
                    <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                      <input class="form-control" type="text" name="marketshop_cloud_zoom_gallery_text[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_cloud_zoom_gallery_text[$language['language_id']]) ? $marketshop_cloud_zoom_gallery_text[$language['language_id']] : ''; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <br>
                <br>
                <h2><?php echo $entry_addthis_plugin; ?></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_share_plugin">
                      <option value="1"<?php if($marketshop_share_plugin == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                      <option value="2"<?php if($marketshop_share_plugin == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><?php echo $entry_addthis_plugin_style; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_38.jpg">?</a></label>
                  <div class="col-sm-9">
                    <select class="form-control" name="marketshop_share_plugin_style">
                      <option value="1"<?php if($marketshop_share_plugin_style == '1') echo ' selected="selected"';?>>Style 1</option>
                      <option value="2"<?php if($marketshop_share_plugin_style == '2') echo ' selected="selected"';?>>Style 2</option>
                      <option value="3"<?php if($marketshop_share_plugin_style == '3') echo ' selected="selected"';?>>Style 3</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane" id="tab_footer">
          <div class="col-sm-2">
            <ul id="option_tabs" class="nav nav-pills nav-stacked">
              <li class="active"><a data-toggle="tab" href="#tab_contact"><?php echo $entry_contact_title; ?></a></li>
              <li><a data-toggle="tab" href="#tab_follow"><?php echo $entry_follow_title; ?></a></li>
              <li><a data-toggle="tab" href="#tab_powered"><?php echo $entry_powered; ?></a></li>
              <li><a data-toggle="tab" href="#tab_custom_column_footer">Custom Column</a></li>
              <li><a data-toggle="tab" href="#tab_payments"><?php echo $entry_payments_title; ?></a></li>
            </ul>
          </div>
          <div class="col-sm-10">
            <div class="tab-content">
              <div id="tab_contact" class="tab-pane active">
                <h2><?php echo $entry_contact_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_23.jpg">?</a></h2>
                <small>Note: Here, You can add Contact Details Otherwise About Details. You can choose any one from both.</small>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_about_contact_details">
                      <option value="1"<?php if($marketshop_about_contact_details == '1') echo ' selected="selected"';?>>Contact Details</option>
                      <option value="0"<?php if($marketshop_about_contact_details == '0') echo ' selected="selected"';?>>About Details</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                  <div class="col-sm-5">
                    <select class="form-control" name="marketshop_contact_status">
                      <option value="0"<?php if($marketshop_contact_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_contact_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                  <div class="col-sm-5">
                    <?php foreach ($languages as $language) { ?>
                    <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                      <input class="form-control" type="text" name="marketshop_contact[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_contact[$language['language_id']]) ? $marketshop_contact[$language['language_id']] : ''; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <br>
                <br>
                <ul id="contact_about_tabs" class="nav nav-tabs">
                  <li class="active"><a data-toggle="tab" href="#contact_details"><?php echo $entry_contact_details; ?></a></li>
                  <li><a data-toggle="tab" href="#about_details"><?php echo $entry_about_details; ?></a></li>
                </ul>
                <div class="tab-content">
                  <div id="contact_details" class="tab-pane active">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_address; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="marketshop_address_status">
                          <option value="0"<?php if($marketshop_address_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_address_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_address[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_address[$language['language_id']]) ? $marketshop_address[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_mobile; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="marketshop_mobile_status">
                          <option value="0"<?php if($marketshop_mobile_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_mobile_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_mobile[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_mobile[$language['language_id']]) ? $marketshop_mobile[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_email; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="marketshop_email_status">
                          <option value="0"<?php if($marketshop_email_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($marketshop_email_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="marketshop_email[<?php echo $language['language_id']; ?>]" value="<?php echo isset($marketshop_email[$language['language_id']]) ? $marketshop_email[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div id="about_details" class="tab-pane">
                    <div class="tab-content">
                      <ul id="language10" class="nav nav-tabs">
                        <?php foreach ($languages as $language) { ?>
                        <li><a data-toggle="tab" href="#tab10-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php } ?>
                      </ul>
                      <div class="tab-content">
                        <?php foreach ($languages as $language) { ?>
                        <div id="tab10-language-<?php echo $language['language_id']; ?>" class="tab-pane">
                          <div class="form-group">
                            <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                            <div class="col-sm-10">
                              <textarea id="input-description10<?php echo $language['language_id']; ?>" name="marketshop_about_details[<?php echo $language['language_id']; ?>]" cols="50" rows="8" ><?php echo isset($marketshop_about_details[$language['language_id']]) ? $marketshop_about_details[$language['language_id']] : ''; ?></textarea>
                            </div>
                          </div>
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div id="tab_follow" class="tab-pane"> <br />
                <h2><?php echo $entry_follow_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_24.jpg">?</a></h2>
                <small>Note: Don't forget http:// before link.</small>
                <hr />
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/facebook.png" alt=""><?php echo $entry_facebook_url; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_facebook_id" value="<?php echo $marketshop_facebook_id; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/twitter.png" alt=""><?php echo $entry_twitter_username; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_twitter_username" value="<?php echo $marketshop_twitter_username; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/google_plus.png" alt=""><?php echo $entry_gplus_id; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_gplus_id" value="<?php echo $marketshop_gplus_id; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/pinterest.png" alt=""><?php echo $entry_pint_id; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_pint_id" value="<?php echo $marketshop_pint_id; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/rss.png" alt=""><?php echo $entry_RSS; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_rss" value="<?php echo $marketshop_rss; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/blogger.png" alt=""><?php echo $entry_blogger; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_blogger" value="<?php echo $marketshop_blogger; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/myspace.png" alt=""><?php echo $entry_myspace; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_myspace" value="<?php echo $marketshop_myspace; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/linkedin.png" alt=""><?php echo $entry_linkedin; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_linkedin" value="<?php echo $marketshop_linkedin; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/evernote.png" alt=""><?php echo $entry_evernote; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_evernote" value="<?php echo $marketshop_evernote; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/dopplr.png" alt=""><?php echo $entry_dopplr; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_dopplr" value="<?php echo $marketshop_dopplr; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/ember.png" alt=""><?php echo $entry_ember; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_ember" value="<?php echo $marketshop_ember; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/flickr.png" alt=""><?php echo $entry_flickr; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_flickr" value="<?php echo $marketshop_vimeo; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/picasa.png" alt=""><?php echo $entry_picasa_web; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_picasa_web" value="<?php echo $marketshop_picasa_web; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/youtube.png" alt=""><?php echo $entry_youtube; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_youtube" value="<?php echo $marketshop_youtube; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/technorati.png" alt=""><?php echo $entry_technorati; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_technorati" value="<?php echo $marketshop_technorati; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/grooveshark.png" alt=""><?php echo $entry_grooveshark; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_grooveshark" value="<?php echo $marketshop_grooveshark; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/vimeo.png" alt=""><?php echo $entry_vimeo; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_vimeo" value="<?php echo $marketshop_vimeo; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/sharethis.png" alt=""><?php echo $entry_sharethis; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_sharethis" value="<?php echo $marketshop_sharethis; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/yahoobuzz.png" alt=""><?php echo $entry_yahoobuzz; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_yahoobuzz" value="<?php echo $marketshop_yahoobuzz; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/viddler.png" alt=""><?php echo $entry_viddler; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_viddler" value="<?php echo $marketshop_viddler; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/skype.png" alt=""><?php echo $entry_skype; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_skype" value="<?php echo $marketshop_skype; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/googletalk.png" alt=""><?php echo $entry_google_googletalk; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_google_googletalk" value="<?php echo $marketshop_google_googletalk; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/digg.png" alt=""><?php echo $entry_digg; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_digg" value="<?php echo $marketshop_digg; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/reddit.png" alt=""><?php echo $entry_reddit; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_reddit" value="<?php echo $marketshop_reddit; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/delicious.png" alt=""><?php echo $entry_delicious; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_delicious" value="<?php echo $marketshop_delicious; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/stumbleupon.png" alt=""><?php echo $entry_stumbleupon; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_stumbleupon" value="<?php echo $marketshop_stumbleupon; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/friendfeed.png" alt=""><?php echo $entry_friendfeed; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_friendfeed" value="<?php echo $marketshop_friendfeed; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/tumblr.png" alt=""><?php echo $entry_tumblr; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_tumblr" value="<?php echo $marketshop_tumblr; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/yelp.png" alt=""><?php echo $entry_yelp; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_yelp" value="<?php echo $marketshop_yelp; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/posterous.png" alt=""><?php echo $entry_posterous; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_posterous" value="<?php echo $marketshop_posterous; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/bebo.png" alt=""><?php echo $entry_bebo; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_bebo" value="<?php echo $marketshop_bebo; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/virb.png" alt=""><?php echo $entry_virb; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_virb" value="<?php echo $marketshop_virb; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/lastfm.png" alt=""><?php echo $entry_last_fm; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_last_fm" value="<?php echo $marketshop_last_fm; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/pandora.png" alt=""><?php echo $entry_pandora; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_pandora" value="<?php echo $marketshop_pandora; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/mixx.png" alt=""><?php echo $entry_mixx; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_mixx" value="<?php echo $marketshop_mixx; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/newsvine.png" alt=""><?php echo $entry_newsvine; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_newsvine" value="<?php echo $marketshop_newsvine; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/openid.png" alt=""><?php echo $entry_openid; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_openid" value="<?php echo $marketshop_openid; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/readernaut.png" alt=""><?php echo $entry_readernaut; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_readernaut" value="<?php echo $marketshop_readernaut; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/xing.png" alt=""><?php echo $entry_xing_me; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_xing_me" value="<?php echo $marketshop_xing_me; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/instagram.png" alt=""><?php echo $entry_instagram; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_instagram" value="<?php echo $marketshop_instagram; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/spotify.png" alt=""><?php echo $entry_spotify; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_spotify" value="<?php echo $marketshop_spotify; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/forrst.png" alt=""><?php echo $entry_forrst; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_forrst" value="<?php echo $marketshop_forrst; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/viadeo.png" alt=""><?php echo $entry_viadeo; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_viadeo" value="<?php echo $marketshop_viadeo; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../catalog/view/theme/marketshop/image/socialicons/vk.png" alt=""><?php echo $entry_vk_com; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="marketshop_vk_com" value="<?php echo $marketshop_vk_com; ?>" />
                  </div>
                </div>
              </div>
              <div id="tab_powered" class="tab-pane">
                <h2><?php echo $entry_powered; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_25.jpg">?</a></h2>
                <hr>
                <ul id="language7" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab7-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab7-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description7<?php echo $language['language_id']; ?>" name="marketshop_powered[<?php echo $language['language_id']; ?>]" cols="50" rows="8" id="marketshop_powered[<?php echo $language['language_id']; ?>]">
                        <?php echo isset($marketshop_powered[$language['language_id']]) ? $marketshop_powered[$language['language_id']] : ''; ?>
                        </textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div id="tab_custom_column_footer" class="tab-pane">
                <h2><?php echo $entry_custom_column_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_26.jpg">?</a></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_column_footer_status">
                      <option value="0"<?php if($marketshop_custom_column_footer_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_column_footer_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <ul id="language3" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab3-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab3-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description3<?php echo $language['language_id']; ?>" name="marketshop_custom_column_footer[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_column_footer[$language['language_id']]) ? $marketshop_custom_column_footer[$language['language_id']] : ''; ?></textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div id="tab_payments" class="tab-pane"> <br />
                <h2><?php echo $entry_payments_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_27.jpg">?</a></h2>
                <br />
                <div class="well">
                  <table class="table table-hover" style="margin-bottom:0px;">
                    <tr>
                      <td style="border:none;">Upload your Custom payment image:</td>
                      <td style="border:none;"><input class="form-control" type="checkbox" name="marketshop_custom_payment_image_status"<?php if ($marketshop_custom_payment_image_status) echo 'checked="checked"';?>></td>
                      <td style="border:none;"><a href="" id="payment-thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $marketshop_custom_payment_image_preview; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                        <input type="hidden" name="marketshop_custom_payment_image" value="<?php echo $marketshop_custom_payment_image; ?>" id="marketshop-custom-payment-input-image" /></td>
                      <td style="border:none;">URL:
                        <input class="form-control" type="text" name="marketshop_custom_payment_image_url" value="<?php echo $marketshop_custom_payment_image_url; ?>" /></td>
                    </tr>
                  </table>
                </div>
                <h2>Marketshop Payment Images:</h2>
                <br />
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><?php echo $entry_url; ?></td>
                    </tr>
                  </thead>
                  <tr>
                    <td style="width:25%;"><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_paypal.png" alt="paypal" title="PayPal"><?php echo $entry_paypal; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_paypal"<?php if ($marketshop_paypal) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_paypal_url" value="<?php echo $marketshop_paypal_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_american.png" alt="american-express" title="American Express"><?php echo $entry_american; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_american"<?php if ($marketshop_american) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_american_url" value="<?php echo $marketshop_american_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_2checkout.png" alt="2checkout" title="2checkout"><?php echo $entry_2checkout; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_2checkout"<?php if ($marketshop_2checkout) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_2checkout_url" value="<?php echo $marketshop_2checkout_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_maestro.png" alt="maestro" title="Maestro"><?php echo $entry_maestro; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_maestro"<?php if ($marketshop_maestro) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_maestro_url" value="<?php echo $marketshop_maestro_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_discover.png" alt="discover" title="Discover"><?php echo $entry_discover; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_discover"<?php if ($marketshop_discover) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_discover_url" value="<?php echo $marketshop_discover_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_mastercard.png" alt="mastercard" title="MasterCard"><?php echo $entry_mastercard; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_mastercard"<?php if ($marketshop_mastercard) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_mastercard_url" value="<?php echo $marketshop_mastercard_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_visa.png" alt="visa" title="Visa"><?php echo $entry_visa; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_visa"<?php if ($marketshop_visa) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_visa_url" value="<?php echo $marketshop_visa_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img  style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_sagepay.png" alt="sagepay" title="sagepay"><?php echo $entry_sagepay; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_sagepay"<?php if ($marketshop_sagepay) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_sagepay_url" value="<?php echo $marketshop_sagepay_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;"  src="../catalog/view/theme/marketshop/image/payment_moneybookers.png" alt="moneybookers" title="Moneybookers"><?php echo $entry_moneybookers; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_moneybookers"<?php if ($marketshop_moneybookers) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="marketshop_moneybookers_url" value="<?php echo $marketshop_moneybookers_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_cirrus.png" alt="cirrus" title="Cirrus"><?php echo $entry_cirrus; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_cirrus"<?php if ($marketshop_cirrus) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_cirrus_url" value="<?php echo $marketshop_cirrus_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_delta.png" alt="delta" title="Delta"><?php echo $entry_delta; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_delta"<?php if ($marketshop_delta) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_delta_url" value="<?php echo $marketshop_delta_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_direct.png" alt="direct" title="direct"><?php echo $entry_direct; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_direct"<?php if ($marketshop_direct) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_direct_url" value="<?php echo $marketshop_direct_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_google.png" alt="google" title="google"><?php echo $entry_google; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_google"<?php if ($marketshop_google) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_google_url" value="<?php echo $marketshop_google_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_solo.png" alt="solo" title="solo"><?php echo $entry_solo; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_solo"<?php if ($marketshop_solo) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_solo_url" value="<?php echo $marketshop_solo_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_switch.png" alt="switch" title="switch"><?php echo $entry_switch; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_switch"<?php if ($marketshop_switch) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_switch_url" value="<?php echo $marketshop_switch_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_western_union.png" alt="western_union" title="western union"><?php echo $entry_western_union; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_western_union"<?php if ($marketshop_western_union) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_western_union_url" value="<?php echo $marketshop_western_union_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../catalog/view/theme/marketshop/image/payment_ebay.png" alt="ebay" title="ebay"><?php echo $entry_ebay; ?></td>
                    <td><input class="form-control" type="checkbox" name="marketshop_ebay"<?php if ($marketshop_ebay) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="marketshop_ebay_url" value="<?php echo $marketshop_ebay_url; ?>" /></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane" id="tab_side_blocks">
          <div class="col-sm-2">
            <ul id="side_blocks_tabs" class="nav nav-pills nav-stacked">
              <li class="active"><a data-toggle="tab" href="#tab_facebook_box"><?php echo $entry_facebook_box; ?></a></li>
              <li><a data-toggle="tab" href="#tab_twitter_block"><?php echo $entry_twitter_block_title; ?></a></li>
              <li><a data-toggle="tab" href="#tab_video_box">Video Box</a></li>
              <li><a data-toggle="tab" href="#tab_custom_column">Custom Block</a></li>
            </ul>
          </div>
          <div class="col-sm-10">
            <div class="tab-content">
              <div id="tab_facebook_box" class="tab-pane active">
                <h2><?php echo $entry_facebook_box; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2>
                <hr />
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Status</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_facebook_block_status">
                      <option value="0"<?php if($marketshop_facebook_block_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_facebook_block_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Position</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_facebook_box_align">
                      <option value="1"<?php if($marketshop_facebook_box_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                      <option value="2"<?php if($marketshop_facebook_box_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Sort Order</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_facebook_block_sort_order">
                      <option value="1"<?php if($marketshop_facebook_block_sort_order == '1') echo ' selected="selected"';?>>1</option>
                      <option value="2"<?php if($marketshop_facebook_block_sort_order == '2') echo ' selected="selected"';?>>2</option>
                      <option value="3"<?php if($marketshop_facebook_block_sort_order == '3') echo ' selected="selected"';?>>3</option>
                      <option value="4"<?php if($marketshop_facebook_block_sort_order == '4') echo ' selected="selected"';?>>4</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_facebook_id; ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" type="text" name="marketshop_facebook_id_box" value="<?php echo($marketshop_facebook_id_box); ?>" />
                    <a class="link" target="_blank" href="http://findmyfacebookid.com/"><?php echo $entry_find_id_facebook; ?></a></div>
                </div>
              </div>
              <div id="tab_twitter_block" class="tab-pane">
                <h2><?php echo $entry_twitter_block_title; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Status</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_twitter_block_status">
                      <option value="0"<?php if($marketshop_twitter_block_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_twitter_block_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Position</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_twitter_box_align">
                      <option value="1"<?php if($marketshop_twitter_box_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                      <option value="2"<?php if($marketshop_twitter_box_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Sort Order</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_twitter_block_sort_order">
                      <option value="1"<?php if($marketshop_twitter_block_sort_order == '1') echo ' selected="selected"';?>>1</option>
                      <option selected="selected" value="2"<?php if($marketshop_twitter_block_sort_order == '2') echo ' selected="selected"';?>>2</option>
                      <option value="3"<?php if($marketshop_twitter_block_sort_order == '3') echo ' selected="selected"';?>>3</option>
                      <option value="4"<?php if($marketshop_twitter_block_sort_order == '4') echo ' selected="selected"';?>>4</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_twitter_block; ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" type="text" name="twitter_username" value="<?php echo ($twitter_username); ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Widget ID</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="text" name="marketshop_widget_id" value="<?php echo($marketshop_widget_id); ?>" />
                    <a class="link" target="_blank" href="http://demo.harnishdesign.net/opencart/bigshop/twitter-widget-id.jpg">Find your Widget ID >></a></div>
                </div>
              </div>
              <div id="tab_video_box" class="tab-pane">
                <h2>Video Box<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Status</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_video_box_status">
                      <option value="0"<?php if($marketshop_video_box_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_video_box_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Position</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_video_box_align">
                      <option value="1"<?php if($marketshop_video_box_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                      <option value="2"<?php if($marketshop_video_box_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Sort Order</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_video_box_sort_order">
                      <option value="1"<?php if($marketshop_video_box_sort_order == '1') echo ' selected="selected"';?>>1</option>
                      <option value="2"<?php if($marketshop_video_box_sort_order == '2') echo ' selected="selected"';?>>2</option>
                      <option value="3"<?php if($marketshop_video_box_sort_order == '3') echo ' selected="selected"';?>>3</option>
                      <option value="4"<?php if($marketshop_video_box_sort_order == '4') echo ' selected="selected"';?>>4</option>
                    </select>
                  </div>
                </div>
                <ul id="language11" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab11-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab11-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description11<?php echo $language['language_id']; ?>" name="marketshop_video_box_content[<?php echo $language['language_id']; ?>]" cols="50" rows="8" id="marketshop_video_box_content[<?php echo $language['language_id']; ?>]">
                        <?php echo isset($marketshop_video_box_content[$language['language_id']]) ? $marketshop_video_box_content[$language['language_id']] : ''; ?>
                        </textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div id="tab_custom_column" class="tab-pane">
                <h2>Custom Block<a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_28.jpg">?</a></h2>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Status</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_column_status">
                      <option value="0"<?php if($marketshop_custom_column_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($marketshop_custom_column_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Position</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_side_block_align">
                      <option value="1"<?php if($marketshop_custom_side_block_align == '1') echo ' selected="selected"';?>><?php echo $text_left; ?></option>
                      <option value="2"<?php if($marketshop_custom_side_block_align == '2') echo ' selected="selected"';?>><?php echo $text_right; ?></option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" >Sort Order</label>
                  <div class="col-sm-10">
                    <select class="form-control" name="marketshop_custom_side_block_sort_order">
                      <option value="1"<?php if($marketshop_custom_side_block_sort_order == '1') echo ' selected="selected"';?>>1</option>
                      <option value="2"<?php if($marketshop_custom_side_block_sort_order == '2') echo ' selected="selected"';?>>2</option>
                      <option value="3"<?php if($marketshop_custom_side_block_sort_order == '3') echo ' selected="selected"';?>>3</option>
                      <option value="4"<?php if($marketshop_custom_side_block_sort_order == '4') echo ' selected="selected"';?>>4</option>
                    </select>
                  </div>
                </div>
                <div class="tab-content">
                  <ul id="language6" class="nav nav-tabs">
                    <?php foreach ($languages as $language) { ?>
                    <li><a data-toggle="tab" href="#tab6-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <div class="tab-content">
                    <?php foreach ($languages as $language) { ?>
                    <div id="tab6-language-<?php echo $language['language_id']; ?>" class="tab-pane">
                      <div class="form-group">
                        <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                        <div class="col-sm-10">
                          <textarea class="form-control" id="input-description6<?php echo $language['language_id']; ?>" name="marketshop_custom_column[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($marketshop_custom_column[$language['language_id']]) ? $marketshop_custom_column[$language['language_id']] : ''; ?></textarea>
                        </div>
                      </div>
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane" id="tab_background">
          <h2><?php echo $entry_background_color; ?><a class="marketshop_help" target="_blank" href="../catalog/view/theme/marketshop/image/help/option_29.jpg">?</a></h2>
          <hr>
          <div class="form-group">
            <label class="col-sm-2 control-label" ><?php echo $entry_pattern_overlay; ?></label>
            <div class="col-sm-10">
              <?php for ($i = 1; $i <= 53; $i++) { ?>
              <div class="img-patt"><small><?php echo $i; ?></small><img src="view/image/patterns/<?php echo $i; ?>.png" alt="pattern <?php echo $i; ?>"></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" ></label>
            <div class="col-sm-10">
              <select class="form-control" name="marketshop_pattern_overlay" style="padding:5px;">
                <option value="none"selected="selected">None</option>
                <?php 
                  global $config;
                  for ($i = 1; $i <= 53; $i++) { 
									($config->get('marketshop_pattern_overlay')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
                <option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>
                <?php } ?>
              </select>
              <small><?php echo $entry_pattern_overlay_help; ?></small></div>
          </div>
          <div class="well">
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_custom_image; ?></label>
              <div class="col-sm-10"> <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $marketshop_image_preview; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                <input type="hidden" name="marketshop_custom_image" value="<?php echo $marketshop_custom_image; ?>" id="input-image" />
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" ><?php echo $entry_custom_image_postion; ?></label>
              <div class="col-sm-10">
                <select class="form-control" name="marketshop_custom_image_position">
                  <option value="top center"<?php if($marketshop_custom_image_position == 'top center') echo ' selected="selected"';?>>Top Center</option>
                  <option value="top left"<?php if($marketshop_custom_image_position == 'top left') echo ' selected="selected"';?>>Top Left</option>
                  <option value="top right"<?php if($marketshop_custom_image_position == 'top right') echo ' selected="selected"';?>>Top Right</option>
                  <option value="center center"<?php if($marketshop_custom_image_position == 'center center') echo ' selected="selected"';?>>Center Center</option>
                  <option value="bottom center"<?php if($marketshop_custom_image_position == 'bottom center') echo ' selected="selected"';?>>Bottom Center</option>
                  <option value="bottom left"<?php if($marketshop_custom_image_position == 'bottom left') echo ' selected="selected"';?>>Bottom Left</option>
                  <option value="bottom right"<?php if($marketshop_custom_image_position == 'bottom right') echo ' selected="selected"';?>>Bottom Right</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" ><?php echo $entry_custom_image_repeat; ?></label>
              <div class="col-sm-10">
                <select class="form-control" name="marketshop_custom_image_repeat">
                  <option value="no-repeat"<?php if($marketshop_custom_image_repeat == 'no-repeat') echo ' selected="selected"';?>>No Repeat</option>
                  <option value="repeat"<?php if($marketshop_custom_image_repeat == 'repeat') echo ' selected="selected"';?>>Repeat</option>
                  <option value="repeat-x"<?php if($marketshop_custom_image_repeat == 'repeat-x') echo ' selected="selected"';?>>Repeat-x</option>
                  <option value="repeat-y"<?php if($marketshop_custom_image_repeat == 'repeat-y') echo ' selected="selected"';?>>Repeat-y</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" ><?php echo $entry_custom_image_attachment; ?></label>
              <div class="col-sm-10">
                <select class="form-control" name="marketshop_custom_image_attachment">
                  <option value="scroll"<?php if($marketshop_custom_image_attachment == 'scroll') echo ' selected="selected"';?>>Scroll</option>
                  <option value="fixed"<?php if($marketshop_custom_image_attachment == 'fixed') echo ' selected="selected"';?>>Fixed</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane" id="tab_colors">
          <div class="col-sm-2">
            <ul id="color_bg" class="nav nav-pills nav-stacked">
              <li class="active"><a data-toggle="tab" href="#tab_general_color"><?php echo $entry_general; ?></a></li>
              <li><a data-toggle="tab" href="#tab_top_bar_color">Header</a></li>
              <li><a data-toggle="tab" href="#tab_main_menu_color"><?php echo $entry_main_menu; ?></a></li>
              <li><a data-toggle="tab" href="#tab_feature_box_color">Feature Box</a></li>
              <li><a data-toggle="tab" href="#tab_footer_color"><?php echo $entry_footer; ?></a></li>
              <li><a data-toggle="tab" href="#tab_price_color"><?php echo $entry_price; ?></a></li>
              <li><a data-toggle="tab" href="#tab_button_color"><?php echo $entry_Button; ?></a></li>
              <li><a data-toggle="tab" href="#tab_side_blocks_color">Side Blocks</a></li>
            </ul>
          </div>
          <div class="col-sm-10">
            <div class="tab-content">
              <div id="tab_general_color" class="tab-pane active">
                <h2><?php echo $entry_general; ?></h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br>
                <br>
                <table class="table table-hover">
                  <tr>
                    <td style="width:30%;" class="text-right">Body Background Color:</td>
                    <td><input type="text" name="marketshop_background_color" value="<?php echo $marketshop_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td class="text-right"><?php echo $entry_body_text_color; ?></td>
                    <td><input type="text" name="marketshop_body_text_color" value="<?php echo $marketshop_body_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td class="text-right">General Links Color:</td>
                    <td><input  type="text" name="marketshop_general_links_color" value="<?php echo $marketshop_general_links_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td class="text-right">General Links Hover Color:</td>
                    <td><input  type="text" name="marketshop_general_links_hover_color" value="<?php echo $marketshop_general_links_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td class="text-right">Titles Text Color:</td>
                    <td><input  type="text" name="marketshop_heading_color" value="<?php echo $marketshop_heading_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td class="text-right">Secondary Titles Text Color:</td>
                    <td><input  type="text" name="marketshop_secondary_heading_color" value="<?php echo $marketshop_secondary_heading_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td class="text-right">Secondary Titles Border Bottom Color:</td>
                    <td><input  type="text" name="marketshop_secondary_heading_border_color" value="<?php echo $marketshop_secondary_heading_border_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
              </div>
              <div id="tab_top_bar_color" class="tab-pane">
                <h2>Top Bar</h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br>
                <br>
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_pattern_sub; ?></td>
                    <td><input  type="text" name="marketshop_top_bar_bg_color" value="<?php echo $marketshop_top_bar_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Links Color:</td>
                    <td><input  type="text" name="marketshop_top_bar_link_color" value="<?php echo $marketshop_top_bar_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
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
                    <td><input  type="text" name="marketshop_top_bar_sub_link_color" value="<?php echo $marketshop_top_bar_sub_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Sub Links Hover Color:</td>
                    <td><input  type="text" name="marketshop_top_bar_sub_link_hover_color" value="<?php echo $marketshop_top_bar_sub_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                
                <div class="well">
                <h2>Header</h2>
                <table class="table table-hover mytable">
                <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_header_bg_color" value="<?php echo $marketshop_header_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  </table>
                </div>
                
                
                  <h2>Mini Cart</h2>
                  <small><?php echo $entry_colors_sub_help; ?></small> <br>
                  <br>
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Cart Icon Color:</td>
                      <td><input  type="text" name="marketshop_mini_cart_icon_color" value="<?php echo $marketshop_mini_cart_icon_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color:</td>
                      <td><input  type="text" name="marketshop_mini_cart_link_color" value="<?php echo $marketshop_mini_cart_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Active Link Color:</td>
                      <td><input  type="text" name="marketshop_mini_cart_active_link_color" value="<?php echo $marketshop_mini_cart_active_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                <div class="well">
                <h2>Search Bar</h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br>
                <br>
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_search_bar_background_color" value="<?php echo $marketshop_search_bar_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Border Color:</td>
                    <td><input  type="text" name="marketshop_search_bar_border_color" value="<?php echo $marketshop_search_bar_border_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Border Hover Color:</td>
                    <td><input  type="text" name="marketshop_search_bar_border_hover_color" value="<?php echo $marketshop_search_bar_border_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Text Color:</td>
                    <td><input  type="text" name="marketshop_search_bar_text_color" value="<?php echo $marketshop_search_bar_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Search Icon Color:</td>
                    <td><input  type="text" name="marketshop_search_bar_icon_color" value="<?php echo $marketshop_search_bar_icon_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                </div>
              </div>
              <div id="tab_main_menu_color" class="tab-pane">
                <h2>Main Menu Bar</h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br />
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td>Show Background Color:</td>
                    <td><select name="marketshop_menu_bg_color_status" >
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
                    <td><input  type="text" name="marketshop_menu_link_color" value="<?php echo $marketshop_menu_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_link_color_hover; ?></td>
                    <td><input  type="text" name="marketshop_menu_link_hover_color" value="<?php echo $marketshop_menu_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link background Color Hover:</td>
                    <td><input  type="text" name="marketshop_menu_link_hover_bg_color" value="<?php echo $marketshop_menu_link_hover_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Separator:</td>
                    <td> Status:
                      <select  name="marketshop_menu_link_separator_status">
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
                      <input  type="text" name="marketshop_menu_link_separator_color" value="<?php echo $marketshop_menu_link_separator_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Border Top:</td>
                    <td> Status:
                      <select  name="marketshop_menu_link_border_top_status">
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
                      <input  type="text" name="marketshop_menu_link_border_top_color" value="<?php echo $marketshop_menu_link_border_top_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Border Bottom:</td>
                    <td> Status:
                      <select  name="marketshop_menu_link_border_bottom_status" >
                        <option value="1"<?php if($marketshop_menu_link_border_bottom_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        <option value="2"<?php if($marketshop_menu_link_border_bottom_status == '2') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      </select>
                      <br />
                      <br />
                      Size:
                      <select  name="marketshop_menu_link_border_bottom_size">
                        <option value="1"<?php if($marketshop_menu_link_border_bottom_size == '1') echo ' selected="selected"';?>>1</option>
                        <option value="2"<?php if($marketshop_menu_link_border_bottom_size == '2') echo ' selected="selected"';?>>2</option>
                        <option value="3"<?php if($marketshop_menu_link_border_bottom_size == '3') echo ' selected="selected"';?>>3</option>
                      </select>
                      <br />
                      <br />
                      Style:
                      <select  name="marketshop_menu_link_border_bottom_style">
                        <option value="solid"<?php if($marketshop_menu_link_border_bottom_style == 'solid') echo ' selected="selected"';?>>Solid</option>
                        <option value="dotted"<?php if($marketshop_menu_link_border_bottom_style == 'dotted') echo ' selected="selected"';?>>Dotted</option>
                        <option value="dashed"<?php if($marketshop_menu_link_border_bottom_style == 'dashed') echo ' selected="selected"';?>>Dashed</option>
                      </select>
                      <br />
                      <br />
                      Color:
                      <input  type="text" name="marketshop_menu_link_border_bottom_color" value="<?php echo $marketshop_menu_link_border_bottom_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Home Page Link</h2>
                  <br />
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Background Color:</td>
                      <td><input  type="text" name="marketshop_home_page_link_background_color" value="<?php echo $marketshop_home_page_link_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Background Color hover:</td>
                      <td><input  type="text" name="marketshop_home_page_link_background_color_hover" value="<?php echo $marketshop_home_page_link_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color:</td>
                      <td><input  type="text" name="marketshop_home_page_link_link_color" value="<?php echo $marketshop_home_page_link_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color hover:</td>
                      <td><input  type="text" name="marketshop_home_page_link_link_color_hover" value="<?php echo $marketshop_home_page_link_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Icon Color:</td>
                      <td><input  type="text" name="marketshop_home_page_link_icon_color" value="<?php echo $marketshop_home_page_link_icon_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Icon Color hover:</td>
                      <td><input  type="text" name="marketshop_home_page_link_icon_color_hover" value="<?php echo $marketshop_home_page_link_icon_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
                <h2>Categories Section</h2>
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_categories_section_background_color" value="<?php echo $marketshop_categories_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Color hover:</td>
                    <td><input  type="text" name="marketshop_categories_section_background_color_hover" value="<?php echo $marketshop_categories_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color:</td>
                    <td><input  type="text" name="marketshop_categories_section_link_color" value="<?php echo $marketshop_categories_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color hover:</td>
                    <td><input  type="text" name="marketshop_categories_section_link_color_hover" value="<?php echo $marketshop_categories_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Brands Section</h2>
                  <br>
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Background Color:</td>
                      <td><input  type="text" name="marketshop_brands_section_background_color" value="<?php echo $marketshop_brands_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Background Color hover:</td>
                      <td><input  type="text" name="marketshop_brands_section_background_color_hover" value="<?php echo $marketshop_brands_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color:</td>
                      <td><input  type="text" name="marketshop_brands_section_link_color" value="<?php echo $marketshop_brands_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color hover:</td>
                      <td><input  type="text" name="marketshop_brands_section_link_color_hover" value="<?php echo $marketshop_brands_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
                <h2>Custom Links Section</h2>
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_custom_link_section_background_color" value="<?php echo $marketshop_custom_link_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Color hover:</td>
                    <td><input  type="text" name="marketshop_custom_link_section_background_color_hover" value="<?php echo $marketshop_custom_link_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color:</td>
                    <td><input  type="text" name="marketshop_custom_link_section_link_color" value="<?php echo $marketshop_custom_link_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color hover:</td>
                    <td><input  type="text" name="marketshop_custom_link_section_link_color_hover" value="<?php echo $marketshop_custom_link_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Custom Blocks Section</h2>
                  <br />
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Background Color:</td>
                      <td><input  type="text" name="marketshop_custom_block_section_background_color" value="<?php echo $marketshop_custom_block_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Background Color hover:</td>
                      <td><input  type="text" name="marketshop_custom_block_section_background_color_hover" value="<?php echo $marketshop_custom_block_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color:</td>
                      <td><input  type="text" name="marketshop_custom_block_section_link_color" value="<?php echo $marketshop_custom_block_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color hover:</td>
                      <td><input  type="text" name="marketshop_custom_block_section_link_color_hover" value="<?php echo $marketshop_custom_block_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
                <h2>My Account Section</h2>
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_myaccount_section_background_color" value="<?php echo $marketshop_myaccount_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Color hover:</td>
                    <td><input  type="text" name="marketshop_myaccount_section_background_color_hover" value="<?php echo $marketshop_myaccount_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color:</td>
                    <td><input  type="text" name="marketshop_myaccount_section_link_color" value="<?php echo $marketshop_myaccount_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color hover:</td>
                    <td><input  type="text" name="marketshop_myaccount_section_link_color_hover" value="<?php echo $marketshop_myaccount_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Information Section</h2>
                  <br />
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Background Color:</td>
                      <td><input  type="text" name="marketshop_information_section_background_color" value="<?php echo $marketshop_information_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Background Color hover:</td>
                      <td><input  type="text" name="marketshop_information_section_background_color_hover" value="<?php echo $marketshop_information_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color:</td>
                      <td><input  type="text" name="marketshop_information_section_link_color" value="<?php echo $marketshop_information_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color hover:</td>
                      <td><input  type="text" name="marketshop_information_section_link_color_hover" value="<?php echo $marketshop_information_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
                <h2>Contact Link</h2>
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_contact_section_background_color" value="<?php echo $marketshop_contact_section_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Color hover:</td>
                    <td><input  type="text" name="marketshop_contact_section_background_color_hover" value="<?php echo $marketshop_contact_section_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color:</td>
                    <td><input  type="text" name="marketshop_contact_section_link_color" value="<?php echo $marketshop_contact_section_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Color hover:</td>
                    <td><input  type="text" name="marketshop_contact_section_link_color_hover" value="<?php echo $marketshop_contact_section_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Custom Link for Right Side</h2>
                  <br>
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Background Color:</td>
                      <td><input  type="text" name="marketshop_custom_link_right_background_color" value="<?php echo $marketshop_custom_link_right_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Background Color hover:</td>
                      <td><input  type="text" name="marketshop_custom_link_right_background_color_hover" value="<?php echo $marketshop_custom_link_right_background_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color:</td>
                      <td><input  type="text" name="marketshop_custom_link_right_link_color" value="<?php echo $marketshop_custom_link_right_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Link Color hover:</td>
                      <td><input  type="text" name="marketshop_custom_link_right_link_color_hover" value="<?php echo $marketshop_custom_link_right_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
                <h2>Sub Menu</h2>
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_sub_menu_background_color" value="<?php echo $marketshop_sub_menu_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Top Border Color:</td>
                    <td><input  type="text" name="marketshop_sub_menu_top_border_color" value="<?php echo $marketshop_sub_menu_top_border_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Links Color:</td>
                    <td><input  type="text" name="marketshop_sub_menu_link_color" value="<?php echo $marketshop_sub_menu_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Links Color Hover:</td>
                    <td><input  type="text" name="marketshop_sub_menu_link_hover_color" value="<?php echo $marketshop_sub_menu_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Link Separator:</td>
                    <td>Color:
                      <input  type="text" name="marketshop_sub_menu_link_separator_color" value="<?php echo $marketshop_sub_menu_link_separator_color; ?>" size="6" class="color {required:false,hash:true}" />
                      <br />
                      <br />
                      Style:
                      <select  name="marketshop_sub_menu_link_separator_style">
                        <option value="solid"<?php if($marketshop_sub_menu_link_separator_style == '1') echo ' selected="selected"';?>>Solid</option>
                        <option value="dotted"<?php if($marketshop_sub_menu_link_separator_style == '2') echo ' selected="selected"';?>>Dotted</option>
                        <option value="dashed"<?php if($marketshop_sub_menu_link_separator_style == '3') echo ' selected="selected"';?>>Dashed</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td>Heading Text Color:<br />
                      <small>Only for Categories Horizontal Style</small></td>
                    <td><input  type="text" name="marketshop_sub_menu_heading_text_color" value="<?php echo $marketshop_sub_menu_heading_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Heading Text Separator:<br />
                      <small>Only for Categories Horizontal Style</small></td>
                    <td>Color:
                      <input  type="text" name="marketshop_sub_menu_heading_text_separator_color" value="<?php echo $marketshop_sub_menu_heading_text_separator_color; ?>" size="6" class="color {required:false,hash:true}"  />
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
              <div id="tab_feature_box_color" class="tab-pane ">
                <h2>Feature Box 1</h2>
                <table class="table table-hover mytable">
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
                <div class="well">
                  <h2>Feature Box 2</h2>
                  <table class="table table-hover mytable">
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
                </div>
                <h2>Feature Box 3</h2>
                <table class="table table-hover mytable">
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
                <div class="well">
                  <h2>Feature Box 4</h2>
                  <table class="table table-hover mytable">
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
              </div>
              <div id="tab_footer_color" class="tab-pane">
                <h2>Footer Part 1</h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br />
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_pattern_sub; ?></td>
                    <td><input  type="text" name="marketshop_footer_bg_color" value="<?php echo $marketshop_footer_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_titles_color; ?></td>
                    <td><input  type="text" name="marketshop_footer_titles_color" value="<?php echo $marketshop_footer_titles_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color; ?></td>
                    <td><input  type="text" name="marketshop_footer_text_color" value="<?php echo $marketshop_footer_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_link_color; ?></td>
                    <td><input  type="text" name="marketshop_footer_link_color" value="<?php echo $marketshop_footer_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_link_color_hover; ?></td>
                    <td><input  type="text" name="marketshop_footer_link_hover_color" value="<?php echo $marketshop_footer_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Contact Icon Color:</td>
                    <td><input  type="text" name="marketshop_contact_icon_color" value="<?php echo $marketshop_contact_icon_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Footer Part 2</h2>
                  <small><?php echo $entry_colors_sub_help; ?></small> <br />
                  <br />
                  <table class="table table-hover mytable">
                    <tr>
                      <td><?php echo $entry_pattern_sub; ?></td>
                      <td><input  type="text" name="marketshop_footer_second_bg_color" value="<?php echo $marketshop_footer_second_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_text_color; ?></td>
                      <td><input  type="text" name="marketshop_footer_second_text_color" value="<?php echo $marketshop_footer_second_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link_color; ?></td>
                      <td><input  type="text" name="marketshop_footer_second_link_color" value="<?php echo $marketshop_footer_second_link_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_link_color_hover; ?></td>
                      <td><input  type="text" name="marketshop_footer_second_link_hover_color" value="<?php echo $marketshop_footer_second_link_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
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
                        <input  type="text" name="marketshop_footer_second_separator_color" value="<?php echo $marketshop_footer_second_separator_color; ?>" size="6" class="color {required:false,hash:true}" /></td>
                    </tr>
                  </table>
                </div>
                <h2>Back to Top Button</h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br />
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_pattern_sub; ?></td>
                    <td><input  type="text" name="marketshop_footer_backtotop_bg_color" value="<?php echo $marketshop_footer_backtotop_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
              </div>
              <div id="tab_price_color" class="tab-pane">
                <h2><?php echo $entry_price; ?></h2>
                <small><?php echo $entry_colors_sub_help; ?></small> <br />
                <br />
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_price_color; ?></td>
                    <td><input  type="text" name="marketshop_price_color" value="<?php echo $marketshop_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_old_price_color; ?></td>
                    <td><input  type="text" name="marketshop_old_price_color" value="<?php echo $marketshop_old_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_new_price_color; ?></td>
                    <td><input  type="text" name="marketshop_new_price_color" value="<?php echo $marketshop_new_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_tax_price_color; ?></td>
                    <td><input  type="text" name="marketshop_tax_price_color" value="<?php echo $marketshop_tax_price_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Saving Percentage</h2>
                  <table class="table table-hover mytable">
                    <tr>
                      <td>Background Color:</td>
                      <td><input  type="text" name="marketshop_saving_percentage_bg_color" value="<?php echo $marketshop_saving_percentage_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Text Color:</td>
                      <td><input  type="text" name="marketshop_saving_percentage_text_color" value="<?php echo $marketshop_saving_percentage_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
              </div>
              <div id="tab_button_color" class="tab-pane">
                <h2>General Buttons</h2>
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_pattern_sub; ?></td>
                    <td><input  type="text" name="marketshop_button_bg_color" value="<?php echo $marketshop_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Hover Color:</td>
                    <td><input  type="text" name="marketshop_button_bg_hover_color" value="<?php echo $marketshop_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color; ?></td>
                    <td><input  type="text" name="marketshop_button_text_color" value="<?php echo $marketshop_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color_hover; ?></td>
                    <td><input  type="text" name="marketshop_button_text_hover_color" value="<?php echo $marketshop_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <h2>Default Buttons</h2>
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_pattern_sub; ?></td>
                    <td><input  type="text" name="marketshop_default_button_bg_color" value="<?php echo $marketshop_default_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Hover Color:</td>
                    <td><input  type="text" name="marketshop_default_button_bg_hover_color" value="<?php echo $marketshop_default_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color; ?></td>
                    <td><input  type="text" name="marketshop_default_button_text_color" value="<?php echo $marketshop_default_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color_hover; ?></td>
                    <td><input  type="text" name="marketshop_default_button_text_hover_color" value="<?php echo $marketshop_default_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
                <div class="well">
                  <h2>Add to Cart Buttons</h2>
                  <table class="table table-hover mytable">
                    <tr>
                      <td><?php echo $entry_pattern_sub; ?></td>
                      <td><input  type="text" name="marketshop_cart_button_bg_color" value="<?php echo $marketshop_cart_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td>Background Hover Color:</td>
                      <td><input  type="text" name="marketshop_cart_button_bg_hover_color" value="<?php echo $marketshop_cart_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_text_color; ?></td>
                      <td><input  type="text" name="marketshop_cart_button_text_color" value="<?php echo $marketshop_cart_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_text_color_hover; ?></td>
                      <td><input  type="text" name="marketshop_cart_button_text_hover_color" value="<?php echo $marketshop_cart_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                  </table>
                </div>
                <h2>Exclusive Buttons</h2>
                <table class="table table-hover mytable">
                  <tr>
                    <td><?php echo $entry_pattern_sub; ?></td>
                    <td><input  type="text" name="marketshop_excl_button_bg_color" value="<?php echo $marketshop_excl_button_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td>Background Hover Color:</td>
                    <td><input  type="text" name="marketshop_excl_button_bg_hover_color" value="<?php echo $marketshop_excl_button_bg_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color; ?></td>
                    <td><input  type="text" name="marketshop_excl_button_text_color" value="<?php echo $marketshop_excl_button_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_text_color_hover; ?></td>
                    <td><input  type="text" name="marketshop_excl_button_text_hover_color" value="<?php echo $marketshop_excl_button_text_hover_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
              </div>
              <div id="tab_side_blocks_color" class="tab-pane">
                <h2>Custom Block</h2>
                <table class="table table-hover mytable">
                  <tr>
                    <td>Background Color:</td>
                    <td><input  type="text" name="marketshop_custom_block_bg_color" value="<?php echo $marketshop_custom_block_bg_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane" id="tab_fonts">
          <table class="table table-hover">
            <thead>
              <tr>
                <td>&nbsp;</td>
                <td>Fonts:</td>
                <td>Fonts Size:</td>
                <td>Weight:</td>
                <td>Text Transform:</td>
              </tr>
            </thead>
            <tr>
              <td><?php echo $entry_body_font ?></td>
              <td><select class="form-control" name="marketshop_body_font">
                  <?php global $config; foreach ($fonts as $fv => $fc) { ?>
                  <?php ($fv ==  $config->get('marketshop_body_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                  <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                  <?php } ?>
                </select></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Top Bar:</td>
              <td><select class="form-control" name="marketshop_top_bar_font">
                  <?php global $config; foreach ($fonts as $fv => $fc) { ?>
                  <?php ($fv ==  $config->get('marketshop_top_bar_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                  <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="marketshop_top_bar_font_size">
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
                </select></td>
              <td><select class="form-control" name="marketshop_top_bar_font_weight">
                  <option value=""<?php if($marketshop_top_bar_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_top_bar_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_top_bar_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td><select class="form-control" name="marketshop_top_bar_font_uppercase">
                  <option value=""<?php if($marketshop_top_bar_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_top_bar_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_top_bar_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
            <tr>
              <td>Main Menu:</td>
              <td><select class="form-control" name="marketshop_main_menu_font">
                  <?php global $config; foreach ($fonts as $fv => $fc) { ?>
                  <?php ($fv ==  $config->get('marketshop_main_menu_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                  <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="marketshop_main_menu_font_size">
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
                </select></td>
              <td><select class="form-control" name="marketshop_main_menu_font_weight">
                  <option value=""<?php if($marketshop_main_menu_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_main_menu_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_main_menu_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td><select class="form-control" name="marketshop_main_menu_font_uppercase">
                  <option value=""<?php if($marketshop_main_menu_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_main_menu_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_main_menu_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_title_font; ?></td>
              <td><select class="form-control" name="marketshop_title_font">
                  <?php global $config; foreach ($fonts as $fv => $fc) { ?>
                  <?php ($fv ==  $config->get('marketshop_title_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                  <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="marketshop_title_font_size">
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
                </select></td>
              <td><select class="form-control" name="marketshop_title_font_weight">
                  <option value=""<?php if($marketshop_title_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_title_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_title_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td><select class="form-control" name="marketshop_title_font_uppercase">
                  <option value=""<?php if($marketshop_title_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_title_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_title_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
            <tr>
              <td>Secondary Titles:</td>
              <td><select class="form-control" name="marketshop_secondary_titles_font">
                  <?php global $config; foreach ($fonts as $fv => $fc) { ?>
                  <?php ($fv ==  $config->get('marketshop_secondary_titles_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                  <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="marketshop_secondary_titles_font_size">
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
                </select></td>
              <td><select class="form-control" name="marketshop_secondary_titles_font_weight">
                  <option value=""<?php if($marketshop_secondary_titles_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_secondary_titles_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_secondary_titles_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td><select class="form-control" name="marketshop_secondary_titles_font_uppercase">
                  <option value=""<?php if($marketshop_secondary_titles_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_secondary_titles_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_secondary_titles_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
            <tr>
              <td>Footer Titles:</td>
              <td><select class="form-control" name="marketshop_footer_titles_font">
                  <?php global $config; foreach ($fonts as $fv => $fc) { ?>
                  <?php ($fv ==  $config->get('marketshop_footer_titles_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
                  <option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="marketshop_footer_titles_font_size">
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
                </select></td>
              <td><select class="form-control" name="marketshop_footer_titles_font_weight">
                  <option value=""<?php if($marketshop_footer_titles_font_weight == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="normal"<?php if($marketshop_footer_titles_font_weight == 'normal') echo ' selected="selected"';?>>Normal</option>
                  <option value="bold"<?php if($marketshop_footer_titles_font_weight == 'bold') echo ' selected="selected"';?>>Bold</option>
                </select></td>
              <td><select class="form-control" name="marketshop_footer_titles_font_uppercase">
                  <option value=""<?php if($marketshop_footer_titles_font_uppercase == '0') echo ' selected="selected"';?>>Default</option>
                  <option value="uppercase"<?php if($marketshop_footer_titles_font_uppercase == 'uppercase') echo ' selected="selected"';?>>Uppercase</option>
                  <option value="lowercase"<?php if($marketshop_footer_titles_font_uppercase == 'lowercase') echo ' selected="selected"';?>>Lowercase</option>
                </select></td>
            </tr>
          </table>
        </div>
        <div class="tab-pane" id="tab_custom_css">
          <div class="form-group">
            <label class="col-sm-2 control-label" ><?php echo $entry_custom_css; ?></label>
            <div class="col-sm-10">
              <textarea class="form-control" name="marketshop_custom_css" cols="52" rows="16"><?php echo $marketshop_custom_css; ?></textarea>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
</div>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-description8<?php echo $language['language_id']; ?>, #input-description9<?php echo $language['language_id']; ?>, #input-description2<?php echo $language['language_id']; ?>, #input-description4<?php echo $language['language_id']; ?>, #input-description5<?php echo $language['language_id']; ?>, #input-description10<?php echo $language['language_id']; ?>, #input-description7<?php echo $language['language_id']; ?>, #input-description3<?php echo $language['language_id']; ?>, #input-description11<?php echo $language['language_id']; ?>, #input-description6<?php echo $language['language_id']; ?>').summernote({height: 300});
<?php } ?>
//--></script>
<script type="text/javascript"><!--
$('#language8 a:first,#language9 a:first,#language2 a:first,#language4 a:first,#language5 a:first,#language10 a:first,#language7 a:first,#language3 a:first,#language11 a:first,#language6 a:first').tab('show');
//--></script>
</div>
<?php echo $footer; ?>