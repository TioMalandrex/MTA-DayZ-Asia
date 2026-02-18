local languages = {
	en = "English",
	lv = "Latviešu",
	ru = "Русский",
	br = "Português (BR)",
}

local translation = {
	["weapon1"] = {
		en = "VKS", 
		lv = "VKS",
		ru = "VKS",

		br = "VKS"
	},
	["weapon2"] = {
		en = "DMR", 
		lv = "DMR",
		ru = "DMR",

		br = "DMR"
	},
	["weapon3"] = {
		en = "CZ 550", 
		lv = "CZ 550",
		ru = "CZ 550",

		br = "CZ 550"
	},
	["weapon4"] = {
		en = "SVD Dragunov Camo", 
		lv = "SVD Dragunov Camo",
		ru = "SVD Dragunov Camo",

		br = "SVD Dragunov Camuflado"
	},
	["weapon5"] = {
		en = "M24", 
		lv = "M24",
		ru = "M24",

		br = "M24"
	},
	["weapon6"] = {
		en = "AKS Gold", 
		lv = "Zelta AKS",
		ru = "Золотой AKS",

		br = "AKS Dourado"
	},
	["weapon7"] = {
		en = "Winchester 1866", 
		lv = "Vinčesteris 1866",
		ru = "Винчестер 1866",

		br = "Winchester 1866"
	},
	["weapon8"] = {
		en = "Crossbow", 
		lv = "Arbaleta Loks",
		ru = "Арбалет",

		br = "Besta"
	},
	["weapon9"] = {
		en = "AKS-74U", 
		lv = "AKS-74U",
		ru = "AKS-74U",

		br = "AKS-74U"
	},
	["weapon10"] = {
		en = "AK-107", 
		lv = "AK-107",
		ru = "AK-107",

		br = "AK-107"
	},
	["weapon11"] = {
		en = "M4A1 Holo", 
		lv = "M4A1 Holo",
		ru = "M4A1 Holo",

		br = "M4A1 Holo"
	},
	["weapon12"] = {
		en = "MK 48 CCO", 
		lv = "MK 48 CCO",
		ru = "MK 48 CCO",

		br = "MK 48 CCO"
	},
	["weapon13"] = {
		en = "RPK", 
		lv = "RPK",
		ru = "RPK",

		br = "RPK"
	},
	["weapon14"] = {
		en = "SA-58V ACOG", 
		lv = "SA-58V ACOG",
		ru = "SA-58V ACOG",

		br = "SA-58V ACOG"
	},
	["weapon15"] = {
		en = "Saiga 12K", 
		lv = "Saiga 12K",
		ru = "Saiga 12K",

		br = "Saiga 12K"
	},
	["weapon16"] = {
		en = "Grenade", 
		lv = "Granāta",
		ru = "Граната",

		br = "Granada"
	},
	["weapon17"] = {
		en = "Machete", 
		lv = "Mačete",
		ru = "Мачете",

		br = "Facão"
	},
	["weapon18"] = {
		en = "MP5A5", 
		lv = "MP5A5",
		ru = "MP5A5",

		br = "MP5A5"
	},
	["weapon19"] = {
		en = "Revolver", 
		lv = "Revolveris",
		ru = "Револьвер",

		br = "Revólver"
	},
	["weapon20"] = {
		en = "Micro UZI", 
		lv = "Mikro UZI",
		ru = "Micro UZI",

		br = "Micro UZI"
	},
	["weapon21"] = {
		en = "M1911", 
		lv = "M1911",
		ru = "M1911",

		br = "M1911"
	},
	["weapon22"] = {
		en = "Hatchet", 
		lv = "Cirvis",
		ru = "Топор",

		br = "Machadinha"
	},
	["weapon23"] = {
		en = "M9 SD", 
		lv = "M9 Klusinātājs",
		ru = "M9 Глушитель",

		br = "M9 SD"
	},
	["weapon24"] = {
		en = "Hunting Knife", 
		lv = "Medību Nazis",
		ru = "Охотничий нож",

		br = "Faca de Caça"
	},
	["weapon25"] = {
		en = "G17", 
		lv = "G17",
		ru = "G17",

		br = "G17"
	},
	["weapon26"] = {
		en = "Baseball Bat", 
		lv = "Beisbola Nūja",
		ru = "Бейсбольная бита",

		br = "Bastão de Baseball"
	},
	["weapon27"] = {
		en = "Shovel", 
		lv = "Lāpsta",
		ru = "Лопата",

		br = "Pá"
	},
	["weapon28"] = {
		en = "Binoculars", 
		lv = "Binoklis",
		ru = "Бинокль",

		br = "Binóculos"
	},

	["mag1"] = {
		en = "_45ACP Mag", 
		lv = "_45ACP Munīcija",
		ru = "_45ACP Обойма",

		br = "Carregador .45ACP"
	},
	["mag1description"] = {
		en = "Suitable for weapons\n  G17\n  M9 SD\n  M1911", 
		lv = "Derīgs priekš ieročiem\n  G17\n  M9 SD\n  M1911",
		ru = "Подходит для таких оружий\n  G17\n  M9 SD\n  M1911",

		br = "Compatível com\n  G17\n  M9 SD\n  M1911"
	},
	["mag2"] = {
		en = "_45ACP Clip", 
		lv = "_45ACP Klip",
		ru = "_45ACP Обойма",

		br = "Pente .45ACP"
	},
	["mag2description"] = {
		en = "Suitable for weapons\n  Revolver", 
		lv = "Derīgs priekš ieročiem\n  Revolveris",
		ru = "Подходит для таких оружий\n  Револьвер",

		br = "Compatível com\n  Revólver"
	},
	["mag3"] = {
		en = "5_45x39 Mag", 
		lv = "5_45x39 Munīcija",
		ru = "5_45x39 Обойма",

		br = "Carregador 5.45x39"
	},
	["mag3description"] = {
		en = "Suitable for weapons\n  Micro UZI\n  MP5A5", 
		lv = "Derīgs priekš ieročiem\n  Mikro UZI\n  MP5A5",
		ru = "Подходит для таких оружий\n  Micro UZI\n  MP5A5",

		br = "Compatível com\n  Micro UZI\n  MP5A5"
	},
	["mag4"] = {
		en = "7_62 Mag", 
		lv = "7_62 Munīcija",
		ru = "7_62 Обойма",

		br = "Carregador 7.62"
	},
	["mag4description"] = {
		en = "Suitable for weapons\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  AKS Gold", 
		lv = "Derīgs priekš ieročiem\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  Zelta AKS",
		ru = "Подходит для таких оружий\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  Золотой AKS",

		br = "Compatível com\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  AKS Dourado"
	},
	["mag5"] = {
		en = "7_62x39 Mag", 
		lv = "7_62x39 Munīcija",
		ru = "7_62x39 Обойма",

		br = "Carregador 7.62x39"
	},
	["mag5description"] = {
		en = "Suitable for weapons\n  M4A1 Holo", 
		lv = "Derīgs priekš ieročiem\n  M4A1 Holo",
		ru = "Подходит для таких оружий\n  M4A1 Holo",

		br = "Compatível com\n  M4A1 Holo"
	},
	["mag6"] = {
		en = "5_56Box Mag", 
		lv = "5_56Box Munīcija",
		ru = "7_62x39 Обойма",

		br = "Caixa de Munição 5.56"
	},
	["mag6description"] = {
		en = "Suitable for weapons\n  MK 48 CCO\n  RPK", 
		lv = "Derīgs priekš ieročiem\n  MK 48 CCO\n  RPK",
		ru = "Подходит для таких оружий\n  MK 48 CCO\n  RPK",

		br = "Compatível com\n  MK 48 CCO\n  RPK"
	},
	["mag7"] = {
		en = "_10 Bullets", 
		lv = "_10 Lodes",
		ru = "_10 Патроны",

		br = "Balas .10"
	},
	["mag7description"] = {
		en = "Suitable for weapons\n  Winchester 1866\n  Saiga 12K", 
		lv = "Derīgs priekš ieročiem\n  Vinčesteris 1866\n  Saiga 12K",
		ru = "Подходит для таких оружий\n  Винчестер 1866\n  Saiga 12K",

		br = "Compatível com\n  Winchester 1866\n  Saiga 12K"
	},
	["mag8"] = {
		en = "_300 Bullets", 
		lv = "_300 Lodes",
		ru = "_300 Патроны",

		br = "Balas .300"
	},
	["mag8description"] = {
		en = "Suitable for weapons\n  CZ 550\n  SVD Dragunov Camo\n  M24", 
		lv = "Derīgs priekš ieročiem\n  CZ 550\n  SVD Dragunov Camo\n  M24",
		ru = "Подходит для таких оружий\n  CZ 550\n  SVD Dragunov Camo\n  M24",

		br = "Compatível com\n  CZ 550\n  SVD Dragunov Camuflado\n  M24"
	},
	["mag9"] = {
		en = "Bolt", 
		lv = "Būlta",
		ru = "Стрела",

		br = "Flecha"
	},
	["mag9description"] = {
		en = "Suitable for weapons\n  Crossbow", 
		lv = "Derīgs priekš ieročiem\n  Arbalets",
		ru = "Подходит для таких оружий\n Арбалет",

		br = "Compatível com\n  Besta"
	},
	["mag10"] = {
		en = "_303 Bullets", 
		lv = "_303 Lodes",
		ru = "_303 Патроны",

		br = "Balas .303"
	},
	["mag10description"] = {
		en = "Suitable for weapons\n  VKS\n  DMR", 
		lv = "Derīgs priekš ieročiem\n  VKS\n  DMR",
		ru = "Подходит для таких оружий\n  VKS\n  DMR",

		br = "Compatível com\n  VKS\n  DMR"
	},

	["item1"] = {
		en = "Wood Pile", 
		lv = "Koku Čupa",
		ru = "Куча дров",

		br = "Pilha de Madeira"
	},
	["item2"] = {
		en = "Wire Fence", 
		lv = "Vadu Sēta",
		ru = "Колючая проволока",

		br = "Cerca de Arame"
	},
	["item3"] = {
		en = "Tent", 
		lv = "Telts",
		ru = "Палатка",

		br = "Barraca"
	},
	["item4"] = {
		en = "Safe", 
		lv = "Seifs",
		ru = "Сейф",

		br = "Cofre"
	},
	["item5"] = {
		en = "Roadflare [Red]", 
		lv = "Ceļa Uzliesmojums [Sarkans]",
		ru = "Сигнальная ракета [Красный]",

		br = "Roadflare [Red]"
	},
	["item6"] = {
		en = "Trash", 
		lv = "Musars",
		ru = "Мусор",

		br = "Trash"
	},
	["item7"] = {
		en = "C4", 
		lv = "C4",
		ru = "C4",

		br = "C4"
	},
	["item8"] = {
		en = "Supply Signal", 
		lv = "Piegādes Signāls",
		ru = "Сигнал поставки",

		br = "Supply Signal"
	},
	["item9"] = {
		en = "Full Gas Canister", 
		lv = "Pilna Benzīn Kana",
		ru = "Наполненная канистра",

		br = "Cheio Gas Canister"
	},
	["item10"] = {
		en = "Empty Gas Canister", 
		lv = "Tukša Benzīn Kana",
		ru = "Пустая канистра",

		br = "Vazio Gas Canister"
	},
	["item11"] = {
		en = "Roadflare [Green]", 
		lv = "Ceļa Uzliesmojums [Zaļš]",
		ru = "Сигнальная ракета [Зеленый]",

		br = "Roadflare [Green]"
	},
	["item12"] = {
		en = "Roadflare [Blue]", 
		lv = "Ceļa Uzliesmojums [Zils]",
		ru = "Сигнальная ракета [Синий]",

		br = "Roadflare [Blue]"
	},
	["item13"] = {
		en = "Mine", 
		lv = "Mīna",
		ru = "Мина",

		br = "Mine"
	},
	["item14"] = {
		en = "Key", 
		lv = "Atslēga",
		ru = "Ключ",

		br = "Key"
	},

	["clothing1"] = {
		en = "Ghillie Suit", 
		lv = "Snaipera Uzvelks",
		ru = "Снайперский камуфляж",

		br = "Traje Ghillie"
	},
	["clothing2"] = {
		en = "Camouflage Clothing", 
		lv = "Armīnieka Drēbes",
		ru = "Армейский камуфляж",

		br = "Camouflage Roupa"
	},
	["clothing3"] = {
		en = "Civilian Clothing", 
		lv = "Iedzīvotāja Drēbes",
		ru = "Гражданская одежда",

		br = "Roupa Civil"
	},
	["clothing4"] = {
		en = "Survivor Clothing [Brown]", 
		lv = "Izdzīvotāja Drēbes [Brūnas]",
		ru = "Одежда выжившего [Коричневый]",

		br = "Survivor Roupa [Brown]"
	},
	["clothing5"] = {
		en = "Survivor Clothing [Grey]", 
		lv = "Izdzīvotāja Drēbes [Pelēkas]",
		ru = "Одежда выжившего [Серый]",

		br = "Survivor Roupa [Grey]"
	},
	["clothing6"] = {
		en = "Survivor Clothing [Black]", 
		lv = "Izdzīvotāja Drēbes [Melnas]",
		ru = "Одежда выжившего [Черный]",

		br = "Survivor Roupa [Black]"
	},

	--[[
	["currency1"] = {
		en = "Briefcase [Gold]", 
		lv = "Koferis [Zelts]",
		ru = "",

		br = "Briefcase [Gold]"
	},
	["currency2"] = {
		en = "Briefcase [Silver]", 
		lv = "Koferis [Sudrabs]",
		ru = "",

		br = "Briefcase [Silver]"
	},
	["currency3"] = {
		en = "Briefcase [Copper]", 
		lv = "Koferis [Varš]",
		ru = "",

		br = "Briefcase [Copper]"
	},
	]]--

	["vehiclepart1"] = {
		en = "Engine", 
		lv = "Dzinējs",
		ru = "Двигатель",

		br = "Engine"
	},
	["vehiclepart2"] = {
		en = "Rotor", 
		lv = "Turbīnas Rats",
		ru = "Ротор",

		br = "Roparar"
	},
	["vehiclepart3"] = {
		en = "Tire", 
		lv = "Riepa",
		ru = "Колесо",

		br = "Tire"
	},
	["vehiclepart4"] = {
		en = "Tank Parts", 
		lv = "Degvielas Tvertne",
		ru = "Бензобак",

		br = "Tank Parts"
	},
	["vehiclepart5"] = {
		en = "Scrap Metal", 
		lv = "Metāllūžņi",
		ru = "Металлолом",

		br = "Sucata"
	},

	["medicine1"] = {
		en = "Large Medic Kit", 
		lv = "Lielā Aptieciņa",
		ru = "Больщая Аптечка",

		br = "Large Medic Kit"
	},
	["medicine2"] = {
		en = "Medic Kit", 
		lv = "Aptieciņa",
		ru = "Аптечка",

		br = "Medic Kit"
	},
	["medicine3"] = {
		en = "Small Medic Kit", 
		lv = "Mazā Aptieciņa",
		ru = "Маленькая Аптечка",

		br = "Small Medic Kit"
	},
	["medicine4"] = {
		en = "Heat Pack", 
		lv = "Siltumu Paka",
		ru = "Грелка",

		br = "Pacote Térmico"
	},
	["medicine5"] = {
		en = "Bandage", 
		lv = "Binde",
		ru = "Бинт",

		br = "Bandagemm"
	},
	["medicine6"] = {
		en = "Painkiller", 
		lv = "Pretsāpju Līdzeklis",
		ru = "Болеутоляющее",

		br = "Analgésico"
	},
	["medicine7"] = {
		en = "Blood Bag", 
		lv = "Asins Paka",
		ru = "Пакет крови",

		br = "Bolsa de Sangue"
	},
	["medicine8"] = {
		en = "Morphine", 
		lv = "Morfīns",
		ru = "Морфий",

		br = "Morfina"
	},

	["fooditem1"] = {
		en = "Water Bottle", 
		lv = "Ūdens Pudele",
		ru = "Фляга",

		br = "Garrafa d'Água"
	},
	["fooditem2"] = {
		en = "Empty Water Bottle", 
		lv = "Tukša Ūdens Pudele",
		ru = "Пустая фляга",

		br = "Vazio Água Bottle"
	},
	["fooditem3"] = {
		en = "Pasta Can", 
		lv = "Pastu Kana",
		ru = "Банка макарон",

		br = "Macarrão Can"
	},
	["fooditem4"] = {
		en = "Beans Can", 
		lv = "Pupu Kana",
		ru = "Банка бобов",

		br = "Feijão Can"
	},
	["fooditem5"] = {
		en = "Jollibee Pack", 
		lv = "Jollibee Pack",
		ru = "Пакет «Джоллиби»",

		br = "Jollibee Pack"
	},
	["fooditem6"] = {
		en = "Milk", 
		lv = "Piens",
		ru = "Молоко",

		br = "Milk"
	},
	["fooditem7"] = {
		en = "Soda Can", 
		lv = "Sodas Kana",
		ru = "Банка соды",

		br = "Soda Can"
	},
	["fooditem8"] = {
		en = "Empty Soda Can", 
		lv = "Tukša Sodas Kana",
		ru = "Пустая банка соды",

		br = "Vazio Soda Can"
	},
	["fooditem9"] = {
		en = "Pizza", 
		lv = "Pica",
		ru = "Пицца",

		br = "Pizza"
	},
	["fooditem10"] = {
		en = "Cooked Meat", 
		lv = "Uzcepta Gaļa",
		ru = "Жареное мясо",

		br = "Carne Cozida"
	},
	["fooditem11"] = {
		en = "Raw Meat", 
		lv = "Jēla Gaļa",
		ru = "Сырое мясо",

		br = "Carne Crua"
	},

	["toolbelt1"] = {
		en = "Map", 
		lv = "Karte",
		ru = "Карта",

		br = "Mapaa"
	},
	["toolbelt2"] = {
		en = "GPS", 
		lv = "Navigācija",
		ru = "GPS",

		br = "GPS"
	},
	["toolbelt3"] = {
		en = "Watch", 
		lv = "Pūlkstenis",
		ru = "Часы",

		br = "Relógio"
	},
	["toolbelt4"] = {
		en = "Toolbox", 
		lv = "Instrumentu Kaste",
		ru = "Инструменты",

		br = "Caixa de Ferramentas"
	},
	["toolbelt5"] = {
		en = "Box of Matches", 
		lv = "Sērkoku Kaste",
		ru = "Спички",

		br = "Caixa of Fósforos"
	},
	["toolbelt6"] = {
		en = "Infrared Goggles", 
		lv = "Infrasarkanās Brilles",
		ru = "Инфокрасные очки",

		br = "Infrared Goggles"
	},
	["toolbelt7"] = {
		en = "Night Vision Goggles", 
		lv = "Nakts Redzamības Brilles",
		ru = "Очки ночного видения",

		br = "Night Vision Goggles"
	},
	["toolbelt9"] = {
		en = "Advanced Toolbox", 
		lv = "Advancēta Instrumentu Kaste",
		ru = "Расширенный набор инструментов",

		br = "Advanced Caixa de Ferramentas"
	},

	["vehiclehudtext1"] = {
		en = "ENGINE", 
		lv = "DZINĒJS",
		ru = "ДВИГАТЕЛЬ",

		br = "ENGINE"
	},
	["vehiclehudtext2"] = {
		en = "ROTOR", 
		lv = "TURBĪNAS RATS",
		ru = "РОТОР",

		br = "ROTOR"
	},
	["vehiclehudtext3"] = {
		en = "TIRE", 
		lv = "RIEPA",
		ru = "КОЛЕСО",

		br = "TIRE"
	},
	["vehiclehudtext4"] = {
		en = "TANK PARTS", 
		lv = "DEGVIELAS TVERTNE",
		ru = "БЕНЗОБАК",

		br = "TANK PARTS"
	},
	["vehiclehudtext5"] = {
		en = "SCRAP METAL", 
		lv = "METĀLLŪŽŅI",
		ru = "МЕТАЛЛОЛОМ",

		br = "SCRAP METAL"
	},
	--[[
	["vehiclehudtext6"] = {
		en = "Fuel:", 
		lv = "Benzīns:",
		ru = "",

		br = "Fuel:"
	},
	]]

	["logintext"] = {
		en = "has logged in!", 
		lv = "pieslēdzās!",
		ru = "вошел в систему!",

		br = "has logged in!"
	},
	["jointext"] = {
		en = "joined the game", 
		lv = "pievienojās spēlē",
		ru = "присоединился к игре",

		br = "joined the game"
	},
	["leavetext"] = {
		en = "left the game", 
		lv = "atvienojās no spēles",
		ru = "покинул игру",

		br = "left the game"
	},
	["changenicktext"] = {
		en = "is now known as", 
		lv = "ir tagad zināms kā",
		ru = "известен как",

		br = "is now known as"
	},

	["inventoryactiontext1"] = {
		en = "Arm Primary Weapon", 
		lv = "Uzvilkt Primāro Ieroci",
		ru = "Взять в руки",

		br = "Arm Arma Primária"
	},
	["inventoryactiontext2"] = {
		en = "Unarm Primary Weapon", 
		lv = "Novilkt Primāro Ieroci",
		ru = "Убрать из рук",

		br = "Unarm Arma Primária"
	},
	["inventoryactiontext3"] = {
		en = "Arm Secondary Weapon", 
		lv = "Uzvilkt Sekundāro Ieroci",
		ru = "Взять в руки",

		br = "Arm Arma Secundária"
	},
	["inventoryactiontext4"] = {
		en = "Unarm Secondary Weapon", 
		lv = "Novilkt Sekundāro Ieroci",
		ru = "Убрать из рук",

		br = "Unarm Arma Secundária"
	},
	["inventoryactiontext5"] = {
		en = "Arm Special Weapon", 
		lv = "Uzvilkt Speciālo Ieroci",
		ru = "Взять в руки",

		br = "Arm Special Arma"
	},
	["inventoryactiontext6"] = {
		en = "Unarm Special Weapon", 
		lv = "Novilkt Speciālo Ieroci",
		ru = "Убрать из рук",

		br = "Unarm Special Arma"
	},
	["inventoryactiontext7"] = {
		en = "Drink", 
		lv = "Dzert",
		ru = "Попить",

		br = "Beber"
	},
	["inventoryactiontext8"] = {
		en = "Eat", 
		lv = "Ēst",
		ru = "Съесть",

		br = "Comer"
	},
	["inventoryactiontext9"] = {
		en = "Bandage yourself", 
		lv = "Aptīt bindi ap sevi",
		ru = "Опбинтовать себья",

		br = "Bandagem yourself"
	},
	["inventoryactiontext10"] = {
		en = "Place", 
		lv = "Uzlikt",
		ru = "Надеть",

		br = "Place"
	},
	["inventoryactiontext11"] = {
		en = "Use", 
		lv = "Lietot",
		ru = "Использовать",

		br = "Usar"
	},
	["inventoryactiontext12"] = {
		en = "Build a wire fence", 
		lv = "Uzcelt vadu sētu",
		ru = "поставить Колючую проволоку",

		br = "Construir a wire fence"
	},
	["inventoryactiontext13"] = {
		en = "Pitch a tent", 
		lv = "Uzlikt telti",
		ru = "поставить палатку",

		br = "Montar barraca"
	},
	["inventoryactiontext14"] = {
		en = "Build a safe", 
		lv = "Uzlikt seifu",
		ru = "поставить сейф",

		br = "Construir cofre"
	},
	["inventoryactiontext15"] = {
		en = "Put clothes on", 
		lv = "Uzvilkt drēbes",
		ru = "Надеть",

		br = "Put clothes on"
	},
	["inventoryactiontext16"] = {
		en = "Fill bottle up", 
		lv = "Piepildīt pudeli",
		ru = "Наполнить",

		br = "Fill bottle up"
	},
	["inventoryactiontext17"] = {
		en = "Call Airdrop", 
		lv = "Izsaukt Airdropu",
		ru = "Вызвать Airdrop",

		br = "Call Airdrop"
	},
	["inventoryactiontext18"] = {
		en = "Equip Backpack", 
		lv = "Uzvilkt Somu",
		ru = "Надеть рюкзак",

		br = "Equipar Mochila"
	},
	["inventoryactiontext19"] = {
		en = "Make a Fire", 
		lv = "Uztaisīt Ugunskuru",
		ru = "Зделать костер",

		br = "Make a Fire"
	},
	["inventorytext1"] = {
		en = "SLOTS", 
		lv = "VIETA",
		ru = "СЛОТЫ",

		br = "SLOTS"
	},
	["inventorydescription1"] = {
		en = "Damage", 
		lv = "Stiprums",
		ru = "Урон",

		br = "Dano"
	},

	--[[ netiek izmantots
	["inventorydescription2"] = {
		en = "Knife for hunting", 
		lv = "Nazis priekš medīšanas",
		ru = "",

		br = "Faca for hunting"
	},
	["inventorydescription3"] = {
		en = "Just a sharp Hatchet", 
		lv = "Ass cirvis",
		ru = "",

		br = "Just a sharp Machadinha"
	},
	["inventorydescription4"] = {
		en = "get some faces beaten up", 
		lv = "stipra nūja",
		ru = "",

		br = "get some faces beaten up"
	},
	["inventorydescription5"] = {
		en = "can be used to bury bodies", 
		lv = "var tikt izmantots lai apglabātu līķus",
		ru = "",

		br = "can be used para bury bodies"
	},
	]]--

	["inventorydescription6"] = {
		en = "Can view long distances", 
		lv = "Var skatīties lielus attālumus",
		ru = "Можно наблюдать большие дистанции",

		br = "Can view long distances"
	},
	--[[
	["inventorydescription7"] = {
		en = "Ammunition for gun", 
		lv = "Munīcija priekš ieroča",
		ru = "",

		br = "Ammunition for gun"
	},
	]]--
	["inventorydescription8"] = {
		en = "Clean Water", 
		lv = "Tīrs Ūdens",
		ru = "Чистая вода",

		br = "Clean Água"
	},
	["inventorydescription9"] = {
		en = "Eatable Pasta", 
		lv = "Ēdama Pasta",
		ru = "Съедобная паста",

		br = "Comerable Macarrão"
	},
	["inventorydescription10"] = {
		en = "Fresh Food", 
		lv = "Svaigs Ēdiens",
		ru = "Свежая еда",

		br = "Fresh Comida"
	},
	["inventorydescription11"] = {
		en = "Unopened Soda", 
		lv = "Neatvērta Soda",
		ru = "Неоткрытая сода",

		br = "Unopened Soda"
	},
	["inventorydescription12"] = {
		en = "Fresh Milk", 
		lv = "Svaigs Piens",
		ru = "Свежее молоко",

		br = "Fresh Milk"
	},
	["inventorydescription13"] = {
		en = "Fresh Steak", 
		lv = "Svaigs Steiks",
		ru = "Свежий стейк",

		br = "Fresh Steak"
	},
	["inventorydescription14"] = {
		en = "Stack of wood", 
		lv = "Čupa ar pagalēm",
		ru = "Куча дров",

		br = "Stack of wood"
	},
	["inventorydescription15"] = {
		en = "Can stop bleeding", 
		lv = "Var apstādināt asiņošanu",
		ru = "Может остановить кровотечение",

		br = "Can sparap bleeding"
	},
	["inventorydescription16"] = {
		en = "Lights up road", 
		lv = "Iededzina ceļu",
		ru = "Подсветка дороги",

		br = "Lights up road"
	},
	["inventorydescription17"] = {
		en = "Can store gas", 
		lv = "Kana lai uzturētu benzīnu",
		ru = "Может хранить бензин",

		br = "Can sparare gas"
	},
	["inventorydescription18"] = {
		en = "Fresh Gas", 
		lv = "Svaigs benzīns",
		ru = "Свежий бензин",

		br = "Fresh Gas"
	},
	["inventorydescription19"] = {
		en = "Restores lost blood", 
		lv = "Atgriež pazudušās asinis",
		ru = "Восстанавливает потерянную кровь",

		br = "Resparares lost sangue"
	},
	["inventorydescription20"] = {
		en = "Worms you up", 
		lv = "Sasildina tevi",
		ru = "Согреет вас",

		br = "Worms you up"
	},
	["inventorydescription21"] = {
		en = "Removes pain", 
		lv = "Noņem sāpes",
		ru = "Снежает боль",

		br = "Removers pain"
	},
	["inventorydescription22"] = {
		en = "Restores broken bones", 
		lv = "Salabo beigtus kaulus",
		ru = "Восстанавливает сломанные кости",

		br = "Resparares broken bones"
	},
	["inventorydescription23"] = {
		en = "Can restore blood for other players", 
		lv = "Var atgriest asinis priekš citiem spēlētājiem",
		ru = "Может восстановить кровь для других игроков",

		br = "Can resparare sangue for other players"
	},
	["inventorydescription24"] = {
		en = "Fence that can be placed", 
		lv = "Sēta kas var tikt uzlikta",
		ru = "Забор, который можно разместить где вы хотите",

		br = "Fence that can be placed"
	},
	["inventorydescription25"] = {
		en = "Very dangerous explosive", 
		lv = "Ļoti bīstama sprāgstviela",
		ru = "Очень опасное взрывчатое вещество",

		br = "Very dangerous explosive"
	},
	["inventorydescription26"] = {
		en = "Can be cooked", 
		lv = "Var tikt uzcepta",
		ru = "Можно пожарить",

		br = "Can be cooked"
	},
	["inventorydescription27"] = {
		en = "Part of a vehicle\nToolbox required to install", 
		lv = "Detaļa no mašīnas\nInstrumenta kaste nepieciešams lai ienstalētu",
		ru = "Часть транспортного средства\nНужны Инструменты",

		br = "Part of a vehicle\nCaixa de Ferramentas required para install"
	},
	["inventorydescription28"] = {
		en = "Can be used as storage", 
		lv = "Var tikt izmantots kā noliktava",
		ru = "Можно использоваться как хранилище",

		br = "Pode ser usado como armazenamenpara"
	},
	["inventorydescription29"] = {
		en = "Lockable Safe with Pin Code", 
		lv = "Aizstaisāms seifs ar pin kodu",
		ru = "Блокируемый сейф с PIN-кодом",

		br = "Cofre com Código PIN"
	},
	["inventorydescription30"] = {
		en = "Fresh Clothes", 
		lv = "Svaigas Drēbes",
		ru = "Свежая одежда",

		br = "Fresh Clothes"
	},
	["inventorydescription31"] = {
		en = "Can be filled with water", 
		lv = "Var tikt piepildīts ar ūdeni",
		ru = "Можно наполнить водой",

		br = "Can be filled with water"
	},
	["inventorydescription32"] = {
		en = "Unusable item", 
		lv = "Neizmantojama manta",
		ru = "нелзя пользоваться",

		br = "Unusable item"
	},
	["inventorydescription33"] = {
		en = "Unusable item", 
		lv = "Neizmantojama manta",
		ru = "нелзя пользоваться",

		br = "Unusable item"
	},
	--[[
	["inventorydescription34"] = {
		en = "Game Currency - Tier 1", 
		lv = "Spēles valūta - Tier 1",
		ru = "",

		br = "Game Currency - Tier 1"
	},
	["inventorydescription35"] = {
		en = "Game Currency - Tier 2", 
		lv = "Spēles valūta - Tier 2",
		ru = "",

		br = "Game Currency - Tier 2"
	},
	["inventorydescription36"] = {
		en = "Game Currency - Tier 3", 
		lv = "Spēles valūta - Tier 3",
		ru = "",

		br = "Game Currency - Tier 3"
	},
	]]--
	["inventorydescription37"] = {
		en = "Blows up locked storages", 
		lv = "Uzspridzina aizstaisāmus seifus",
		ru = "Взрывает заблокированные хранилища",

		br = "Explode armazenamenparas trancados"
	},
	["inventorydescription38"] = {
		en = "Want some high tier loot? Use this", 
		lv = "Gribi labas mantas? Izmanto šito",
		ru = "Хочешь хорощие вещи? Пользуйсья етим",

		br = "Want some high tier loot? Usar this"
	},
	["inventorydescription39"] = {
		en = "Slots: 12", 
		lv = "Sloti: 12",
		ru = "Слоты: 12",

		br = "Slots: 12"
	},
	["inventorydescription40"] = {
		en = "Slots: 16", 
		lv = "Sloti: 16",
		ru = "Слоты: 16",

		br = "Slots: 16"
	},
	["inventorydescription41"] = {
		en = "Slots: 24", 
		lv = "Sloti: 24",
		ru = "Слоты: 24",

		br = "Slots: 24"
	},
	["inventorydescription42"] = {
		en = "Slots: 36", 
		lv = "Sloti: 36",
		ru = "Слоты: 36",

		br = "Slots: 36"
	},
	["inventorydescription43"] = {
		en = "Goggles for night", 
		lv = "Brilles priekš nakts",
		ru = "очки ночного видения",

		br = "Goggles for night"
	},
	["inventorydescription44"] = {
		en = "Goggles for pros", 
		lv = "Brilles priekš profiņiem",
		ru = "Очки для профессионалов",

		br = "Goggles for pros"
	},
	["inventorydescription45"] = {
		en = "Shows your location", 
		lv = "Rāda tavu lokāciju",
		ru = "Показывает ваше местоположение",

		br = "Shows your location"
	},
	["inventorydescription46"] = {
		en = "Lights up wood", 
		lv = "Uzliesmo koku",
		ru = "поджигает дерево",

		br = "Lights up wood"
	},
	["inventorydescription47"] = {
		en = "Shows time", 
		lv = "Rāda laiku",
		ru = "Показывает время",

		br = "Mostra hora"
	},
	["inventorydescription48"] = {
		en = "For technical things", 
		lv = "Priekš Tehnikas",
		ru = "Для технических вещей",

		br = "For technical things"
	},
	["inventorydescription49"] = {
		en = "no use yet\nbut if you somehow got this, then you're a total cheater. :D", 
		lv = "nav mērķa vēl, bet ja tu dabuji šito mantu kaut kā, tad tu toč esi čīteris. :D",
		ru = "nav mērķa vēl, bet ja tu dabuji šito mantu kaut kā, tad tu toč esi čīteris. :D",

		br = "no use yet\nbut if you somehow got this, then you're a paratal cheater. :D"
	},
	["inventorydescription51"] = {
		en = "Slots: 48", 
		lv = "Sloti: 48",
		ru = "Слоты: 48",

		br = "Slots: 48"
	},
	["inventorydescription52"] = {
		en = "Capacity", 
		lv = "Vieta",
		ru = "Вместимость",

		br = "Capacity"
	},
	["inventorydescription53"] = {
		en = "Vehicle Damage", 
		lv = "Mašīnas Bojājumi",
		ru = "Повреждения машины",

		br = "Vehicle Damage"
	},
	["inventorydescription54"] = {
		en = "Fire Rate", 
		lv = "Šaušanas Ātrums",
		ru = "Скорострельность",

		br = "Fire Rate"
	},
	["inventorydescription55"] = {
		en = "Very Fast", 
		lv = "Ļoti Ātrs",
		ru = "Очень быстро",

		br = "Very Fast"
	},
	["inventorydescription56"] = {
		en = "Fast", 
		lv = "Ātrs",
		ru = "Быстро",

		br = "Fast"
	},
	["inventorydescription57"] = {
		en = "Medium", 
		lv = "Vidējs",
		ru = "Средний",

		br = "Medium"
	},
	["inventorydescription58"] = {
		en = "Slow", 
		lv = "Lēns",
		ru = "",

		br = "Slow"
	},
	["inventorydescription59"] = {
		en = "Very Slow", 
		lv = "Ļoti Lēns",
		ru = "Медленный",

		br = "Very Slow"
	},
	["inventorydescription60"] = {
		en = "Statistics", 
		lv = "Statistika",
		ru = "Статистика",

		br = "Statistics"
	},
	["inventorydescription61"] = {
		en = "Noise", 
		lv = "Skaļums",
		ru = "Шум",

		br = "Noise"
	},
	["inventorydescription62"] = {
		en = "Very High", 
		lv = "Ļoti Augsts",
		ru = "Очень высокий",

		br = "Very High"
	},
	["inventorydescription63"] = {
		en = "High", 
		lv = "Augsts",
		ru = "Высокая",

		br = "High"
	},
	["inventorydescription64"] = {
		en = "Low", 
		lv = "Zems",
		ru = "Низкий",

		br = "Low"
	},
	["inventorydescription65"] = {
		en = "Slots: 63", 
		lv = "Sloti: 63",
		ru = "Слоты: 63",

		br = "Slots: 63"
	},
	["inventorydescription66"] = {
		en = "Slots: 72", 
		lv = "Sloti: 72",
		ru = "Слоты: 72",

		br = "Slots: 72"
	},
	["inventorydescription67"] = {
		en = "Locks/Unlocks Vehicle", 
		lv = "Aizslēdz/Atslēdz Mašīnu",
		ru = "",

		br = "Trancars/Destrancars Vehicle"
	},

	["deathtext1"] = {
		en = "You are dead!\nRespawning in", 
		lv = "Tu esi miris!\nAtdzīvosies pēc",
		ru = "Ты умер!\nВозрождение через",

		br = "You are dead!\nRespawning in"
	},
	["deathtext2"] = {
		en = "seconds", 
		lv = "sekundēm",
		ru = "секунд",

		br = "seconds"
	},
	["deathtext3"] = {
		en = "spawning...", 
		lv = "atdzīvojamies...",
		ru = "Возрождение...",

		br = "spawning..."
	},

	["deadplayertext1"] = {
		en = "is dead. Cause of death:", 
		lv = "ir miris. Nāves iemesls:",
		ru = "мертв. Причина смерти:",

		br = "is dead. Cause of death:"
	},
	["deadplayertext2"] = {
		en = "Unknown", 
		lv = "Nezināms",
		ru = "Неизвестный",

		br = "Unknown"
	},
	["deadplayertext3"] = {
		en = "Time of death:", 
		lv = "Nāves laiks:",
		ru = "Время смерти:",

		br = "Time of death:"
	},
	["deadanimaltext"] = {
		en = "This animal was killed around", 
		lv = "Šis dzīvnieks bija nogalināts ap",
		ru = "Это животное было убито в",

		br = "This animal was killed around"
	},
	["deadzombietext"] = {
		en = "Looks like it's finally dead. Estimated time of death:", 
		lv = "Izskatās ka beidzot viņš ir miris. Apmērais laiks no nāves:",
		ru = "Похоже, он наконец то мертв. Расчетное время смерти:",

		br = "Looks like it's finally dead. Estimated time of death:"
	},
	["zombiename"] = {
		en = "Zombie", 
		lv = "Zombijs",
		ru = "Зомби",

		br = "Zumbi"
	},
	["clocktext"] = {
		en = "o'clock", 
		lv = "pūlkstens",
		ru = "часов",

		br = "o'clock"
	},

	["helicrash"] = {
		en = "Helicrash", 
		lv = "Avarējis Heli",
		ru = "Упал вертолет",

		br = "Helicrash"
	},
	["hospitalbox"] = {
		en = "Hospitalbox", 
		lv = "Slimnīcaskaste",
		ru = "Медицинский ящик",

		br = "Hospitalbox"
	},

	["clientinfotext2"] = {
		en = "No mags left for this weapon!", 
		lv = "Nav vairāk ložu priekš šī ieroča!",
		ru = "Нет патронов!",

		br = "No mags left for this weapon!"
	},
	["clientinfotext3"] = {
		en = "You consumed", 
		lv = "Tu izlietoji",
		ru = "Вы потребляете",

		br = "You consumed"
	},
	["clientinfotext4"] = {
		en = "You filled", 
		lv = "Tu piepildiji",
		ru = "Ты наполнил",

		br = "You filled"
	},
	["clientinfotext5"] = {
		en = "You must be in water!", 
		lv = "Tev ir jābūt ūdenī!",
		ru = "Вы должны быть в воде!",

		br = "You must be in water!"
	},
	["clientinfotext6"] = {
		en = "You cooked", 
		lv = "Tu uzcepi",
		ru = "Вы приготовили",

		br = "You cooked"
	},
	["clientinfotext8"] = {
		en = "I'm too cold, I have to worm up!", 
		lv = "Man ir pārāk auksti, Man vajag uzsildīties!",
		ru = "Мне слишком холодно, мне нужно разогреться!",

		br = "I'm parao cold, I have para worm up!"
	},
	["clientinfotext9"] = {
		en = "I'm trembling, I need Painkiller!", 
		lv = "Es trīcu, Man vajag sāpes mazinātāju!",
		ru = "Я дрожу, мне нужны обезбаливаюшие!",

		br = "I'm trembling, I need Analgésico!"
	},
	["clientinfotext10"] = {
		en = "I'm starving, I need something to eat!", 
		lv = "Esmu izsalcis, Man vajag kaut ko paēst!",
		ru = "Я голоден, мне нужно что-нибудь поесть!",

		br = "I'm starving, I need something para eat!"
	},
	["clientinfotext11"] = {
		en = "I'm thirsty, I need some water!", 
		lv = "Esmu izslāpis, Man vajag ūdeni!",
		ru = "Я хочу пить, мне нужна вода!",

		br = "I'm thirsty, I need some water!"
	},
	["clientinfotext12"] = {
		en = "I'm bleeding, I have to use bandage!", 
		lv = "Es asiņoju, Man vajag bindi!",
		ru = "У меня кровотечение, мне нужен бинт!",

		br = "I'm bleeding, I have para use bandage!"
	},
	["clientinfotext13"] = {
		en = "Fuel tank is full!", 
		lv = "Benzīn tanks ir pilns!",
		ru = "Топливный бак заполнен!",

		br = "Fuel tank is full!"
	},
	["clientinfotext14"] = {
		en = "Gas filled into vehicle!", 
		lv = "Benzīns iepildīts mašīnā!",
		ru = "Топливо заполнено в транспортное средство!",

		br = "Gas filled inpara vehicle!"
	},
	["clientinfotext15"] = {
		en = "Loot is full!", 
		lv = "Loots ir pilns!",
		ru = "Тут нету места!",

		br = "Loot is full!"
	},
	["clientinfotext16"] = {
		en = "Inventory is full!", 
		lv = "Inventārs ir pilns!",
		ru = "Инвентарь заполнен!",

		br = "Invenparary is full!"
	},
	["clientinfotext17"] = {
		en = "You can't do another thing while being in this action!", 
		lv = "Tu nevari darīt citu lietu kāmēr dari šo darbību!",
		ru = "Вы не можете делать другое дело, находясь в этом действии!",

		br = "You can't do another thing while being in this action!"
	},
	["clientinfotext18"] = {
		en = "You installed", 
		lv = "Tu ienstalēji",
		ru = "Ты установил",

		br = "You installed"
	},
	["clientinfotext19"] = {
		en = "into vehicle", 
		lv = "mašīnā",
		ru = "в мащину",

		br = "no veículo"
	},
	["clientinfotext20"] = {
		en = "You removed", 
		lv = "Tu noņēmi",
		ru = "Ты снял",

		br = "You removed"
	},
	["clientinfotext21"] = {
		en = "from vehicle", 
		lv = "no mašīnas",
		ru = "с мащины",

		br = "do veículo"
	},
	["clientinfotext22"] = {
		en = "Wait... You can't move while looting!", 
		lv = "Pagaidi... Tu nedrīksti kustēties kāmēr cel mantas!",
		ru = "Подождите ... Вы не можете двигаться!",

		br = "Wait... You can't move while looting!"
	},
	["clientinfotext23"] = {
		en = "Safe Installed", 
		lv = "Seifs Ienstalēts",
		ru = "Сейф установлен",

		br = "Cofre Instalared"
	},
	["clientinfotext24"] = {
		en = "Access Granted", 
		lv = "Pieeja Atļauta",
		ru = "Доступ разрешен",

		br = "Access Granted"
	},
	["clientinfotext25"] = {
		en = "Access Denied", 
		lv = "Pieeja Neatļauta",
		ru = "Доступ закрыт",

		br = "Access Denied"
	},
	["clientinfotext26"] = {
		en = "Placed", 
		lv = "Uzlikts",
		ru = "Поставлен",

		br = "Placed"
	},
	["clientinfotext27"] = {
		en = "Code Changed", 
		lv = "Kods Nomainīts",
		ru = "Код изменен ",

		br = "Code Mudard"
	},
	["clientinfotext28"] = {
		en = "Airdrop Incoming!", 
		lv = "Airdrops Pienāk!",
		ru = "Входящий Airdrop!",

		br = "Airdrop Incoming!"
	},
	["clientinfotext29"] = {
		en = "I'm too hot, I have to сщщд down!", 
		lv = "Man ir pārāk karsti, Man vajag nosildīties!",
		ru = "Мне слишком жарко, мне нужно остыть!",

		br = "I'm parao hot, I have para сщщд down!"
	},
	["clientinfotext30"] = {
		en = "Press 'K' to toggle the engine!", 
		lv = "Spied 'K' lai ieslēgtu/izslēgtu dzinēju!",
		ru = "Нажмите «K», чтобы включить двигатель!",

		br = "Pressione 'K' para paraggle the engine!"
	},
	["clientinfotext31"] = {
		en = "Fuel tank is empty!", 
		lv = "Benzīn bāka ir tukša!",
		ru = "Топливный бак пуст!",

		br = "Fuel tank is empty!"
	},
	["clientinfotext32"] = {
		en = "Rotor is missing!", 
		lv = "Turbīnas Rats pietrūkst!",
		ru = "Ротор отсутствует!",

		br = "Roparar is missing!"
	},
	["clientinfotext33"] = {
		en = "Engine missing!", 
		lv = "Dzinējs pietrūkst!",
		ru = "Двигатель отсутствует!",

		br = "Engine missing!"
	},
	["clientinfotext34"] = {
		en = "Some Scrap Metal is missing!", 
		lv = "Metāllūžņi pietrūkst!",
		ru = "Некоторый металлолом отсутствует!",

		br = "Some Sucata is missing!"
	},
	["clientinfotext35"] = {
		en = "Some Tires are missing!", 
		lv = "Dažas Riepas pietrūkst!",
		ru = "Некоторые шины отсутствуют!",

		br = "Some Tires are missing!"
	},
	["clientinfotext36"] = {
		en = "Engine started!", 
		lv = "Dzinējs iedarbināts!",
		ru = "Двигатель запущен!",

		br = "Engine started!"
	},
	["clientinfotext37"] = {
		en = "Engine stopped!", 
		lv = "Dzinējs izslēgts!",
		ru = "Двигатель остановлен!",

		br = "Engine sparapped!"
	},
	["clientinfotext38"] = {
		en = "is already in repair!", 
		lv = "tiek jau labots!",
		ru = "уже ремонтируется!",

		br = "is already in repair!"
	},
	["clientinfotext39"] = {
		en = "Started to repair", 
		lv = "Sāki labot",
		ru = "Начался ремонт",

		br = "Started para repair"
	},
	["clientinfotext40"] = {
		en = "You repaired", 
		lv = "Tu salaboji",
		ru = "Вы отремонтировали",

		br = "You repaired"
	},
	["clientinfotext41"] = {
		en = "You can't chat that fast!", 
		lv = "Tu nevari čatot tik ātri!",
		ru = "Вы не можете так быстро общаться!",

		br = "You can't chat that fast!"
	},
	["clientinfotext42"] = {
		en = "Vehicle repair has been cancelled!", 
		lv = "Mašīnas labošana tika atcelta!",
		ru = "Ремонт автомобиля отменен!",

		br = "Vehicle repair has been cancelled!"
	},
	["clientinfotext43"] = {
		en = "You are muted!", 
		lv = "Tu esi nomutots!",
		ru = "Вы отключены!",

		br = "You are muted!"
	},
	["clientinfotext44"] = {
		en = "You can't open/close that fast!", 
		lv = "Tu nevari atvērt/aizvērt tik ātri!",
		ru = "Вы не можете быстро открывать / закрывать это!",

		br = "You can't open/close that fast!"
	},
	["menuclienttext1"] = {
		en = "Take", 
		lv = "Paņemt",
		ru = "Взять",

		br = "Pegar"
	},
	["menuclienttext2"] = {
		en = "Gear", 
		lv = "Loots",
		ru = "Лут",

		br = "Equiparamenpara"
	},
	["menuclienttext3"] = {
		en = "Refill Gas", 
		lv = "Uzpildīt Benzīnu",
		ru = "Наполнить топливо",

		br = "Refill Gas"
	},
	["menuclienttext4"] = {
		en = "Repair", 
		lv = "Salabot",
		ru = "Починить",

		br = "Reparar"
	},
	["menuclienttext5"] = {
		en = "Install Parts", 
		lv = "Ienstalēt Detaļas",
		ru = "Установить детали",

		br = "Instalar Parts"
	},
	["menuclienttext6"] = {
		en = "Remove Parts", 
		lv = "Noņemt Detaļas",
		ru = "Удалить детали",

		br = "Remover Parts"
	},
	["menuclienttext7"] = {
		en = "Press 'J' to access the Gear!", 
		lv = "Spied 'J' lai atvērtu šo Lootu!",
		ru = "Нажмите «J», чтобы открыть!",

		br = "Pressione 'J' para access the Gear!"
	},
	["menuclienttext8"] = {
		en = "Press 'J' to access the Safe!", 
		lv = "Spied 'J' lai atvērtu šo Seifu!",
		ru = "Нажмите «J», чтобы открыть сейф!",

		br = "Pressione 'J' para access the Cofre!"
	},
	["menuclienttext9"] = {
		en = "Enter code to access the Safe!", 
		lv = "Ievadi kodu lai atvērtu šo Seifu!",
		ru = "Введите код",

		br = "Entrar code para access the Cofre!"
	},
	["menuclienttext10"] = {
		en = "Press 'J' to access the Airdrop!", 
		lv = "Spied 'J' lai atvērtu šo Airdropu",
		ru = "Нажмите «J», чтобы открыть!",

		br = "Pressione 'J' para access the Airdrop!"
	},
	["menuclienttext11"] = {
		en = "Airdrop", 
		lv = "Airdrops",
		ru = "Airdrop",

		br = "Airdrop"
	},
	["menuclienttext12"] = {
		en = "Open", 
		lv = "Atvērt",
		ru = "Открыть",

		br = "Abrir"
	},
	["menuclienttext13"] = {
		en = "Raided Safe", 
		lv = "Izreidots Seifs",
		ru = "Взломанный сейф",

		br = "Raided Cofre"
	},
	["menuclienttext14"] = {
		en = "Remove Tent", 
		lv = "Noņemt Telti",
		ru = "Удалить палатку",

		br = "Remover Barraca"
	},
	["menuclienttext15"] = {
		en = "Enter Code", 
		lv = "Ievadīt Kodu",
		ru = "Введите код",

		br = "Entrar Code"
	},
	["menuclienttext16"] = {
		en = "Place", 
		lv = "Uzlikt",
		ru = "Поставить",

		br = "Place"
	},
	["menuclienttext17"] = {
		en = "Change Code", 
		lv = "Nomainīt Kodu",
		ru = "Поменять код",

		br = "Mudar Code"
	},
	["menuclienttext18"] = {
		en = "Remove Safe", 
		lv = "Noņemt Seifu",
		ru = "Убрать сейф",

		br = "Remover Cofre"
	},
	["menuclienttext19"] = {
		en = "Give",
		lv = "Iedot",
		ru = "Дать",

		br = "Dar"
	},
	["menuclienttext20"] = {
		en = "Check Body",
		lv = "Pārbaudīt Līķi",
		ru = "Проверить труп",

		br = "Check Body"
	},
	["menuclienttext21"] = {
		en = "Bury Body",
		lv = "Noglabāt Līķi",
		ru = "Похоронить труп",

		br = "Bury Body"
	},
	["menuclienttext22"] = {
		en = "Cook",
		lv = "Uzcept",
		ru = "Жарить",

		br = "Cook"
	},
	["menuclienttext23"] = {
		en = "Refill",
		lv = "Uzpildīt",
		ru = "Пополнение",

		br = "Refill"
	},
	["menuclienttext24"] = {
		en = "Remove",
		lv = "Noņemt",
		ru = "Убрать",

		br = "Removerr"
	},
	["menuclienttext25"] = {
		en = "REQUIRE:",
		lv = "VAJADZĪGS:",
		ru = "ТРЕБУЕТСЯ:",

		br = "REQUIRE:"
	},
	["menuclienttext26"] = {
		en = "Gas Station",
		lv = "Gāzes Stacija",
		ru = "Бензоколонка",

		br = "Gas Station"
	},
	["menuclienttext27"] = {
		en = "Water Station",
		lv = "Ūdens Stacija",
		ru = "Водная станция",

		br = "Posto de Água"
	},
	["menuclienttext28"] = {
		en = "Fire Place",
		lv = "Ugunskurs",
		ru = "Костер",

		br = "Fire Place"
	},
	["menuclienttext29"] = {
		en = "Item Pickup",
		lv = "Itemu Pacelšana",
		ru = "Перевозка предметов",

		br = "Item Pickup"
	},
	["menuclienttext30"] = {
		en = "Press",
		lv = "Spied",
		ru = "Нажми",

		br = "Pressioneione"
	},
	["menuclienttext31"] = {
		en = "to refill",
		lv = "lai uzpildītu",
		ru = "чтобы пополнять",

		br = "para reabastecer"
	},
	["menuclienttext32"] = {
		en = "to remove",
		lv = "lai noņemtu",
		ru = "чтобы убрать",

		br = "para remover"
	},
	["menuclienttext33"] = {
		en = "to cook",
		lv = "lai uzceptu",
		ru = "чтобы пожарить",

		br = "para cozinhar"
	},
	["menuclienttext34"] = {
		en = "to pick this item up",
		lv = "lai paceltu šo itemu",
		ru = "чтобы поднять",

		br = "para pegar este item"
	},
	["menuclienttext35"] = {
		en = "Press 'E' to detonate this mine!",
		lv = "Spied 'E' lai atmīnētu šo mīnu!",
		ru = "Нажмите «E», чтобы взорвать мину!",

		br = "Pressione 'E' para deparanate this mine!"
	},
	["menuclienttext36"] = {
		en = "Detonate",
		lv = "Atmīnēt",
		ru = "Детонировать",

		br = "Deparanate"
	},
	["menuclienttext37"] = {
		en = "Mine",
		lv = "Mīna",
		ru = "Мина",

		br = "Mine"
	},
	["menuclienttext38"] = {
		en = "You don't have that item!",
		lv = "Tev nav tā itema!",
		ru = "У вас нет этого предмета!",

		br = "You don't have that item!"
	},

	["pingfailtext"] = {
		en = "Your ping is over 450!", 
		lv = "Tavs pings ir pāri 450!",
		ru = "Ваш пинг составляет более 450!",

		br = "Your ping is over 450!"
	},

	["waskilledtext1"] = {
		en = "was killed by", 
		lv = "tika nogalināts no",
		ru = "был убит",

		br = "was killed by"
	},
	["waskilledtext2"] = {
		en = "was killed", 
		lv = "tika nogalināts",
		ru = "был убит",

		br = "was killed"
	},

	["statname1"] = {
		en = "Zombies killed", 
		lv = "Nogalinātie zombiji",
		ru = "Зомби убито",

		br = "Zombies killed"
	},
	["statname2"] = {
		en = "Headshots", 
		lv = "Galvā nogalināti",
		ru = "В голову",

		br = "Tiros na Cabeça"
	},
	["statname3"] = {
		en = "Murders", 
		lv = "Slepkavības",
		ru = "Убийства",

		br = "Assassinaparas"
	},
	["statname4"] = {
		en = "Bandits killed", 
		lv = "Bandīti nogalināti",
		ru = "Бандиты убиты",

		br = "Bandits killed"
	},
	["statname5"] = {
		en = "Blood", 
		lv = "Asinis",
		ru = "Кровь",

		br = "Sangue"
	},
	["statname6"] = {
		en = "Temperature", 
		lv = "Temperatūra",
		ru = "Температура",

		br = "Temperatura"
	},
	["statname7"] = {
		en = "Humanity", 
		lv = "Cilvēciba",
		ru = "Человечество",

		br = "Humanidade"
	},
	["statname8"] = {
		en = "Alive time", 
		lv = "Dzīves laiks",
		ru = "Прожито",

		br = "Alive time"
	},
	["statname9"] = {
		en = "Ping", 
		lv = "Pings",
		ru = "Пинг",

		br = "Ping"
	},
	["scoreboard1"] = {
		en = "Player", 
		lv = "Spēlētājs",
		ru = "Игрок",

		br = "Player"
	},
	["scoreboard2"] = {
		en = "Players", 
		lv = "Spēlētāji",
		ru = "Игроки",

		br = "Jogadores"
	},
	["scoreboard3"] = {
		en = "*Hold 'RMB' to toggle cursor", 
		lv = "*Turi 'RMB' lai ieslēgtu peli",
		ru = "* Удерживайте «RMB» для включения курсора",

		br = "*Hold 'RMB' para paraggle cursor"
	},
	["scoreboard4"] = {
		en = " #", 
		lv = " #",
		ru = " №",

		br = " #"
	},

	["newbiehelp1"] = {
		en = "Press 'F1' to open help panel", 
		lv = "Spied 'F1' lai atvērtu palīdzības paneli",
		ru = "Нажмите «F1», открыть панель помощи",

		br = "Pressione 'F1' para open help panel"
	},
	["newbiehelp2"] = {
		en = "Press 'F2' to open settings panel", 
		lv = "Spied 'F2' lai atvērtu opcijas paneli",
		ru = "Нажмите «F2», чтобы открыть панель настроек",

		br = "Pressione 'F2' para open settings panel"
	},
	["newbiehelp3"] = {
		en = "Press 'F6' to create team", 
		lv = "Spied 'F6' lai izveidotu komandu",
		ru = "Нажмите «F6», чтобы создать команду",

		br = "Pressione 'F6' para create team"
	},
	["newbiehelp4"] = {
		en = "Press 'J' to open inventory", 
		lv = "Spied 'J' lai atvērtu inventāru",
		ru = "Нажмите «J», чтобы открыть инвентарь.",

		br = "Pressione 'J' para open invenparary"
	},
	["newbiehelp5"] = {
		en = "Press 'T' to local chat", 
		lv = "Spied 'T' lai čatotu vietējiem",
		ru = "Нажмите «T» для локального чата",

		br = "Pressione 'T' para local chat"
	},
	["newbiehelp6"] = {
		en = "Press 'Y' to team chat", 
		lv = "Spied 'Y' lai čatotu komandai",
		ru = "Нажмите «Y» для чата с командой",

		br = "Pressione 'Y' para team chat"
	},
	["newbiehelp7"] = {

		en = "Press 'U' to global chat", 
		lv = "Spied 'U' lai čatotu globāliski",
		ru = "Нажмите «U» для глобального чата",

		br = "Pressione 'U' para global chat"
	},
	["newbiehelp8"] = {
		en = "Press 'L' to prone", 
		lv = "Spied 'L' lai apgūltos",
		ru = "Нажмите «L», чтобы лечь ",

		br = "Pressione 'L' para prone"
	},
	["newbiehelp9"] = {
		en = "Press ',' to sit", 
		lv = "Spied ',' lai apsēstos ",
		ru = "Нажмите «,», чтобы сесть",

		br = "Pressione ',' para sit"
	},
	["newbiehelp10"] = {
		en = "Press '.' to show hands", 
		lv = "Spied '.' lai parādītu rokas",
		ru = "Нажмите '.' чтобы показывать руки",

		br = "Pressione '.' para show hands"
	},
	["newbiehelp11"] = {
		en = "Press ';' to shout friendly", 
		lv = "Spied ';' lai bļautu draudzīgs",
		ru = "Нажмите ';' чтобы кричать дружелюбно",

		br = "Pressione ';' para shout friendly"
	},

	["hint1"] = {
		en = "killing zombies give you 1 php sometimes, killing players will give you random amount.", 
		lv = "zombiju nogalināšana dažreiz dod jums 1 php, nogalinot spēlētājus, jūs saņemsit nejaušu summu.",
		ru = "за убийство зомби иногда вы получаете 1 php, за убийство игроков вы получаете случайную сумму.",

		br = "killing zombies give you 1 php sometimes, killing players will give you random amount."
	},
	["hint2"] = {
		en = "People in same team as you they will have green triangle on top of their head", 
		lv = "Cilvēki tajā pašā komanda kurā esi tu viņiem būs zaļš trīstūris virs viņu galvas",
		ru = "Люди в той же команде, что и вы, у них будет зеленый треугольник поверх головы",

		br = "People in same team as you they will have green triangle on parap of their head"
	},
	["hint3"] = {
		en = "Press 'J' to access the Inventory", 
		lv = "Spied 'J' lai atvērtu Inventāru",
		ru = "Нажмите «J» для доступа к инвентарю",

		br = "Pressione 'J' para access the Invenparary"
	},
	["hint4"] = {
		en = "Different type of shops have their own benefits", 
		lv = "Katram veikala tipam ir savi labumi",
		ru = "У разных типов магазинов есть свои преимущества",

		br = "Different type of shops have their own benefits"
	},
	["hint5"] = {
		en = "To detonate Mine you must need Toolbox", 
		lv = "Lai atmīnētu Mīnu tev vajag Instrumentu Kasti",
		ru = "Для детонации мины вам понадобится инструменты",

		br = "To deparanate Mine you must need Caixa de Ferramentas"
	},
	["hint6"] = {
		en = "Missions spawn once every 15 minutes and loot depends on online players", 
		lv = "Misijas notiek reizi 15 minūtēs, un laupījums ir atkarīgs no tiešsaistes spēlētājiem",
		ru = "Миссии появляются раз в 15 минут, а добыча зависит от онлайн-игроков.",

		br = "Missions spawn once every 15 minutes and loot depends on online players"
	},
	["hint7"] = {
		en = "WARNING: Be careful in shop areas, there is NO safe zone", 
		lv = "BRĪDINĀJUMS: Esi uzmanīgs pie veikaliem, tur NAV drošās zonas",
		ru = "ПРЕДУПРЕЖДЕНИЕ. Будьте осторожны в зонах магазина, нет безопасной зоны",

		br = "WARNING: Be careful in shop areas, there is NO safe zone"
	},
	["hint8"] = {
		en = "Use 'Heat Pack' to worm up", 
		lv = "Lieto 'Siltumu Paku' lai uzsildītos",
		ru = "Используйте «Heat Pack» для разогрева",

		br = "Usar 'Pacote Térmico' para worm up"
	},
	["hint9"] = {
		en = "To install/desamble parts in vehicle you must need Toolbox", 
		lv = "Lai salabotu/izjauktu mašīnu tev vajag Instrumentu Kasti",
		ru = "Чтобы установить / деамплировать детали в автомобиле, вам понадобится ящик инструментов",

		br = "To install/desamble parts in vehicle you must need Caixa de Ferramentas"
	},
	["hint10"] = {
		en = "Player name tag color depends on their humanity", 
		lv = "Spēlētāja vārdu krāsa atbilst viņu cilvēcībai",
		ru = "Цвет тега имени игрока зависит от их гуманности",

		br = "Player name tag color depends on their humanity"
	},
	["hint11"] = {
		en = "If you have any bug reports or want to suggest something you can do so by typing /report in chat",
		lv = "Ja tu esi atradis kādu bugu vai gribi ieteikt kaut ko, tu vari to izdarīt rakstot /report čatā",
		ru = "Если у вас есть отчеты об ошибках или вы хотите предложить что-то, вы можете сделать это, набрав / сообщив в чате",

		br = "If you have any bug reports or want para suggest something you can do so by typing /report in chat"
	},

	["backpack1"] = {
		en = "Coyote Backpack", 
		lv = "Kojotu Mugursoma",
		ru = "Рюкзак койот",

		br = "Mochila Coyote"
	},
	["backpack2"] = {
		en = "Boulder Backpack", 
		lv = "Laukakmeņu Mugursoma",
		ru = "Рюкзак колхоз",

		br = "Boulder Mochila"
	},
	["backpack3"] = {
		en = "Hunting Backpack", 
		lv = "Medību Mugursoma",
		ru = "Рюкзак охотника",

		br = "Hunting Mochila"
	},
	["backpack4"] = {
		en = "Leather Sack", 
		lv = "Ādas Maiss",
		ru = "Кожаный мешок",

		br = "Leather Sack"
	},
	["backpack5"] = {
		en = "Dry Bag", 
		lv = "Sausā Mugursoma",
		ru = "Сухой мешок",

		br = "Dry Bag"
	},
	["backpack6"] = {
		en = "Tortilla Backpack", 
		lv = "Tortillas Mugursoma",
		ru = "Рюкзак Tortilla",

		br = "Tortilla Mochila"
	},
	["backpack7"] = {
		en = "Field Backpack", 
		lv = "Lauks Mugursoma",
		ru = "Поле Рюкзак",

		br = "Field Mochila"
	},


	["helmet1"] = {		
		en = "Special Forces Helmet", 		
		lv = "Īpašo Spēku Ķivere",		
		ru = "Шлем спецназа",

		br = "Special Forces Capacete"
	},		
	["helmet2"] = {		
		en = "Military Helmet", 		
		lv = "Militārā Ķivere",		
		ru = "Военный шлем",

		br = "Capacete Militar"
	},		
	["helmet3"] = {		
		en = "Motorcycle Helmet", 		
		lv = "Motorciklu Ķivere",		
		ru = "Мотоциклетный шлем",

		br = "Capacete de Mopara"
	},		
	["helmet4"] = {		
		en = "SWAT Helmet", 		
		lv = "SWAT Ķivere",		
		ru = "Шлем SWAT",

		br = "SWAT Capacete"
	},		
	["helmet5"] = {		
		en = "Welder Helmet", 		
		lv = "Metinātāja Ķivere",		
		ru = "Шлем сварщика",

		br = "Welder Capacete"
	},		
	["helmet6"] = {		
		en = "Cap", 		
		lv = "Cepure",		
		ru = "Кепка",

		br = "Cap"
	},		
	["helmet7"] = {		
		en = "Ushanka", 		
		lv = "Ushanka",		
		ru = "Ушанка",

		br = "Ushanka"
	},		
		
	["vest1"] = {		
		en = "Police Vest", 		
		lv = "Policijas Veste",		
		ru = "Полицейский жилет",

		br = "Police Colete"
	},		
	["vest2"] = {		
		en = "Military Vest", 		
		lv = "Militārā Veste",		
		ru = "Военный жилет",

		br = "Colete Militar"
	},


	["inventoryactiontext22"] = {
		en = "Wear Helmet", 
		lv = "Uzvilkt Ķiveri",
		ru = "Надеть шлем",

		br = "Coleteir Capacete"
	},
	["inventoryactiontext23"] = {
		en = "Wear Vest", 
		lv = "Uzvilkt Vesti",
		ru = "Надеть жилет",

		br = "Coleteir Colete"
	},


	["inventorytext2"] = {
		en = "* You can also move items by double clicking on them", 
		lv = "* Tu arī vari divreiz uzpiest uz itēma lai pārnestu",
		ru = "* Вы можете перемещать объекты, дважды щелкая",

		br = "* You can also move items by double clicking on them"
	},

	["inventorydescription68"] = {
		en = "Protects your head", 
		lv = "Aizsargā tavu galvu",
		ru = "Защищает голову",

		br = "Protects your head"
	},
	["inventorydescription69"] = {
		en = "Protects your chest", 
		lv = "Aizsargā tavu vēdaru",
		ru = "Защищает грудь",

		br = "Protects your chest"
	},
	["inventorydescription70"] = {
		en = "Be stylish", 
		lv = "Esi modīgs",
		ru = "Будьте стильными",

		br = "Be stylish"
	},

	["inventorycolumntext1"] = {
		en = "Primary Weapon:", 
		lv = "Primārais Ierocis:",
		ru = "Первичное оружие:",

		br = "Arma Primária:"
	},
	["inventorycolumntext2"] = {
		en = "Secondary Weapon:", 
		lv = "Sekundārais Ierocis:",
		ru = "Вторичное оружие:",

		br = "Arma Secundária:"
	},
	["inventorycolumntext3"] = {
		en = "Specially Weapon:", 
		lv = "Speciālais Ierocis:",
		ru = "Специальное оружие:",

		br = "Specially Arma:"
	},
	["inventorycolumntext4"] = {
		en = "Ammo:", 
		lv = "Patronas:",
		ru = "Боеприпасы:",

		br = "Munição:"
	},
	["inventorycolumntext5"] = {
		en = "Food:", 
		lv = "Ēdiens:",
		ru = "Еда:",

		br = "Comida:"
	},
	["inventorycolumntext6"] = {
		en = "Medicaments:", 
		lv = "Medikamenti:",
		ru = "Медикаменты:",

		br = "Medicamentos:"
	},
	["inventorycolumntext7"] = {
		en = "Items:", 
		lv = "Mantas:",
		ru = "Предметы:",

		br = "Itens:"
	},
	["inventorycolumntext8"] = {
		en = "Equipment:", 
		lv = "Ekipējums:",
		ru = "Оборудование:",

		br = "Equiparment:"
	},
	["inventorycolumntext9"] = {
		en = "Toolbelt:", 
		lv = "Rīki:",
		ru = "Пояс с инструментами:",

		br = "Cinto de Ferramentas:"
	},

	["clientinfotext45"] = {
		en = "You already have equipped this helmet!", 
		lv = "Tev jau ir uzvilkta šī ķivere!",
		ru = "Вы уже одели этот шлем!",

		br = "Você já tem equipped this capacete!"
	},

	["clothing7"] = {
		en = "Soldier Clothing", 
		lv = "Karavīra Drēbes",
		ru = "Одежда солдата",

		br = "Soldier Roupa"
	},
	["clothing8"] = {
		en = "Police Clothing", 
		lv = "Policiju Drēbes",
		ru = "Полицейская одежда",

		br = "Police Roupa"
	},
	["clothing9"] = {
		en = "Medic Clothing", 
		lv = "Ārsta Drēbes",
		ru = "Медицинская одежда",

		br = "Medic Roupa"
	},

	["clientinfotext0"] = {
		en = "You need to free up ", 
		lv = "Tev vajag atbrīvot ",
		ru = "Вам нужно освободить"
	},["clientinfotext1"] = {
		en = " slots to equip this", 
		lv = " slotus lai uzvilktu šo",
		ru = " слоты для оснащения",

		br = "Você precisa de para free up "
	},
}

function getPlayerLanguage(player)
	if (not player) then outputDebugString("Player expected got '"..tostring(player).."'",1,255,0,0) return; end
	if (getElementData(player,"language")) then
		return getElementData(player,"language");
	else
		return "en";
	end
	return false;
end

function getLanguageTextClient(text)
	if (not text) then outputDebugString("String expected got '"..tostring(text).."'",1,255,0,0) return; end
	local translationText = translation[text];
	if (translationText) then
		return translationText[getPlayerLanguage(localPlayer)];
	end
	return text;
end

function getLanguageTextServer(text,player)
	if (not text) then outputDebugString("String expected got '"..tostring(text).."'",1,255,0,0) return; end
	if (not text) then outputDebugString("Player expected got '"..tostring(player).."'",1,255,0,0) return; end
	local translationText = translation[text];
	if (translationText) then
		return translationText[getPlayerLanguage(player)];
	end
	return text;
end