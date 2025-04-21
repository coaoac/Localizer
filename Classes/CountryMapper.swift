import Foundation

/// Helper enum for mapping country names to ISO codes
public enum CountryCode: String, CaseIterable, Sendable, Codable {
    // European countries
    case AD = "AD"  // Andorra
    case AL = "AL"  // Albania
    case AT = "AT"  // Austria
    case BA = "BA"  // Bosnia and Herzegovina
    case BE = "BE"  // Belgium
    case BG = "BG"  // Bulgaria
    case BY = "BY"  // Belarus
    case CH = "CH"  // Switzerland
    case CY = "CY"  // Cyprus
    case CZ = "CZ"  // Czech Republic
    case DE = "DE"  // Germany
    case DK = "DK"  // Denmark
    case EE = "EE"  // Estonia
    case ES = "ES"  // Spain
    case FI = "FI"  // Finland
    case FO = "FO"  // Faroe Islands
    case FR = "FR"  // France
    case GB = "GB"  // United Kingdom
    case GR = "GR"  // Greece
    case HR = "HR"  // Croatia
    case HU = "HU"  // Hungary
    case IE = "IE"  // Ireland
    case IS = "IS"  // Iceland
    case IT = "IT"  // Italy
    case LI = "LI"  // Liechtenstein
    case LT = "LT"  // Lithuania
    case LU = "LU"  // Luxembourg
    case LV = "LV"  // Latvia
    case MC = "MC"  // Monaco
    case MD = "MD"  // Moldova
    case ME = "ME"  // Montenegro
    case MK = "MK"  // North Macedonia
    case MT = "MT"  // Malta
    case NL = "NL"  // Netherlands
    case NO = "NO"  // Norway
    case PL = "PL"  // Poland
    case PT = "PT"  // Portugal
    case RO = "RO"  // Romania
    case RS = "RS"  // Serbia
    case RU = "RU"  // Russia
    case SE = "SE"  // Sweden
    case SI = "SI"  // Slovenia
    case SK = "SK"  // Slovakia
    case TR = "TR"  // Turkey
    case UA = "UA"  // Ukraine
    case XK = "XK"  // Kosovo
    
    // Asian countries
    case AE = "AE"  // United Arab Emirates
    case AF = "AF"  // Afghanistan
    case AM = "AM"  // Armenia
    case AZ = "AZ"  // Azerbaijan
    case BD = "BD"  // Bangladesh
    case BN = "BN"  // Brunei
    case BT = "BT"  // Bhutan
    case CN = "CN"  // China
    case GE = "GE"  // Georgia
    case ID = "ID"  // Indonesia
    case IL = "IL"  // Israel
    case IN = "IN"  // India
    case IQ = "IQ"  // Iraq
    case IR = "IR"  // Iran
    case JO = "JO"  // Jordan
    case JP = "JP"  // Japan
    case KG = "KG"  // Kyrgyzstan
    case KH = "KH"  // Cambodia
    case KP = "KP"  // North Korea
    case KR = "KR"  // South Korea
    case KW = "KW"  // Kuwait
    case KZ = "KZ"  // Kazakhstan
    case LA = "LA"  // Laos
    case LB = "LB"  // Lebanon
    case LK = "LK"  // Sri Lanka
    case MM = "MM"  // Myanmar
    case MN = "MN"  // Mongolia
    case MV = "MV"  // Maldives
    case MY = "MY"  // Malaysia
    case NP = "NP"  // Nepal
    case OM = "OM"  // Oman
    case PH = "PH"  // Philippines
    case PK = "PK"  // Pakistan
    case PS = "PS"  // Palestine
    case QA = "QA"  // Qatar
    case SA = "SA"  // Saudi Arabia
    case SG = "SG"  // Singapore
    case SY = "SY"  // Syria
    case TH = "TH"  // Thailand
    case TJ = "TJ"  // Tajikistan
    case TL = "TL"  // Timor-Leste
    case TM = "TM"  // Turkmenistan
    case TW = "TW"  // Taiwan
    case UZ = "UZ"  // Uzbekistan
    case VN = "VN"  // Vietnam
    case YE = "YE"  // Yemen
    
    // African countries
    case AO = "AO"  // Angola
    case BF = "BF"  // Burkina Faso
    case BI = "BI"  // Burundi
    case BJ = "BJ"  // Benin
    case BW = "BW"  // Botswana
    case CD = "CD"  // Democratic Republic of the Congo
    case CF = "CF"  // Central African Republic
    case CG = "CG"  // Congo
    case CI = "CI"  // Côte d'Ivoire
    case CM = "CM"  // Cameroon
    case CV = "CV"  // Cape Verde
    case DJ = "DJ"  // Djibouti
    case DZ = "DZ"  // Algeria
    case EG = "EG"  // Egypt
    case ER = "ER"  // Eritrea
    case ET = "ET"  // Ethiopia
    case GA = "GA"  // Gabon
    case GH = "GH"  // Ghana
    case GM = "GM"  // Gambia
    case GN = "GN"  // Guinea
    case GQ = "GQ"  // Equatorial Guinea
    case GW = "GW"  // Guinea-Bissau
    case KE = "KE"  // Kenya
    case KM = "KM"  // Comoros
    case LR = "LR"  // Liberia
    case LS = "LS"  // Lesotho
    case LY = "LY"  // Libya
    case MA = "MA"  // Morocco
    case MG = "MG"  // Madagascar
    case ML = "ML"  // Mali
    case MR = "MR"  // Mauritania
    case MU = "MU"  // Mauritius
    case MW = "MW"  // Malawi
    case MZ = "MZ"  // Mozambique
    case NA = "NA"  // Namibia
    case NE = "NE"  // Niger
    case NG = "NG"  // Nigeria
    case RW = "RW"  // Rwanda
    case SC = "SC"  // Seychelles
    case SD = "SD"  // Sudan
    case SH = "SH"  // Saint Helena
    case SL = "SL"  // Sierra Leone
    case SN = "SN"  // Senegal
    case SO = "SO"  // Somalia
    case SS = "SS"  // South Sudan
    case ST = "ST"  // São Tomé and Príncipe
    case SZ = "SZ"  // Swaziland
    case TD = "TD"  // Chad
    case TG = "TG"  // Togo
    case TN = "TN"  // Tunisia
    case TZ = "TZ"  // Tanzania
    case UG = "UG"  // Uganda
    case ZA = "ZA"  // South Africa
    case ZM = "ZM"  // Zambia
    case ZW = "ZW"  // Zimbabwe
    
    // Americas
    case AG = "AG"  // Antigua and Barbuda
    case AR = "AR"  // Argentina
    case BB = "BB"  // Barbados
    case BO = "BO"  // Bolivia
    case BR = "BR"  // Brazil
    case BS = "BS"  // Bahamas
    case BZ = "BZ"  // Belize
    case CA = "CA"  // Canada
    case CL = "CL"  // Chile
    case CO = "CO"  // Colombia
    case CR = "CR"  // Costa Rica
    case CU = "CU"  // Cuba
    case DM = "DM"  // Dominica
    case DO = "DO"  // Dominican Republic
    case EC = "EC"  // Ecuador
    case GD = "GD"  // Grenada
    case GT = "GT"  // Guatemala
    case GY = "GY"  // Guyana
    case HN = "HN"  // Honduras
    case HT = "HT"  // Haiti
    case JM = "JM"  // Jamaica
    case KN = "KN"  // Saint Kitts and Nevis
    case LC = "LC"  // Saint Lucia
    case MX = "MX"  // Mexico
    case NI = "NI"  // Nicaragua
    case PA = "PA"  // Panama
    case PE = "PE"  // Peru
    case PY = "PY"  // Paraguay
    case SR = "SR"  // Suriname
    case SV = "SV"  // El Salvador
    case TT = "TT"  // Trinidad and Tobago
    case US = "US"  // United States
    case UY = "UY"  // Uruguay
    case VC = "VC"  // Saint Vincent and the Grenadines
    case VE = "VE"  // Venezuela
    
    // Oceania
    case AU = "AU"  // Australia
    case FJ = "FJ"  // Fiji
    case FM = "FM"  // Micronesia
    case KI = "KI"  // Kiribati
    case MH = "MH"  // Marshall Islands
    case NR = "NR"  // Nauru
    case NZ = "NZ"  // New Zealand
    case PG = "PG"  // Papua New Guinea
    case PW = "PW"  // Palau
    case SB = "SB"  // Solomon Islands
    case TO = "TO"  // Tonga
    case TV = "TV"  // Tuvalu
    case VU = "VU"  // Vanuatu
    case WS = "WS"  // Samoa
    
    public static var current : CountryCode {
        let locale = Locale.current
        let countryCode = locale.regionCode ?? ""
        return CountryCode(rawValue: countryCode) ?? .SE
    }
    
    /// Maps a country name to its ISO 3166-1 alpha-2 code
    /// - Parameter text: Lowercased country name text
    /// - Returns: ISO country code if recognized
    public static func mapCountryNameToCode(_ text: String) -> CountryCode? {
        let text = text.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // Europe
        if text.contains("albania") { return .AL }
        if text.contains("andorra") { return .AD }
        if text.contains("austria") || text.contains("österreich") { return .AT }
        if text.contains("belarus") { return .BY }
        if text.contains("belgium") || text.contains("belgien") { return .BE }
        if text.contains("bosnia") || text.contains("herzegovina") { return .BA }
        if text.contains("bulgaria") { return .BG }
        if text.contains("croatia") { return .HR }
        if text.contains("cyprus") { return .CY }
        if text.contains("czech") || text.contains("česká") { return .CZ }
        if text.contains("denmark") || text.contains("danmark") { return .DK }
        if text.contains("estonia") { return .EE }
        if text.contains("finland") { return .FI }
        if text.contains("france") || text.contains("frankrike") { return .FR }
        if text.contains("germany") || text.contains("deutschland") { return .DE }
        if text.contains("greece") || text.contains("elláda") { return .GR }
        if text.contains("hungary") || text.contains("magyarország") { return .HU }
        if text.contains("iceland") || text.contains("ísland") { return .IS }
        if text.contains("ireland") { return .IE }
        if text.contains("italy") || text.contains("italien") { return .IT }
        if text.contains("kosovo") { return .XK }
        if text.contains("latvia") { return .LV }
        if text.contains("liechtenstein") { return .LI }
        if text.contains("lithuania") { return .LT }
        if text.contains("luxembourg") { return .LU }
        if text.contains("macedonia") { return .MK }
        if text.contains("malta") { return .MT }
        if text.contains("moldova") { return .MD }
        if text.contains("monaco") { return .MC }
        if text.contains("montenegro") { return .ME }
        if text.contains("netherlands") || text.contains("holland")
            || text.contains("nederländerna")
        {
            return .NL
        }
        if text.contains("norway") || text.contains("norge") { return .NO }
        if text.contains("poland") || text.contains("polska") { return .PL }
        if text.contains("portugal") { return .PT }
        if text.contains("romania") { return .RO }
        if text.contains("russia") || text.contains("russian") { return .RU }
        if text.contains("serbia") { return .RS }
        if text.contains("slovakia") { return .SK }
        if text.contains("slovenia") { return .SI }
        if text.contains("spain") || text.contains("españa") || text.contains("spanien") {
            return .ES
        }
        if text.contains("sweden") || text.contains("sverige") { return .SE }
        if text.contains("switzerland") || text.contains("schweiz") { return .CH }
        if text.contains("turkey") || text.contains("türkiye") { return .TR }
        if text.contains("ukraine") { return .UA }
        if text.contains("uk") || text.contains("united kingdom") || text.contains("great britain")
        {
            return .GB
        }
        
        // Africa
        if text.contains("algeria") { return .DZ }
        if text.contains("angola") { return .AO }
        if text.contains("benin") { return .BJ }
        if text.contains("botswana") { return .BW }
        if text.contains("burkina faso") { return .BF }
        if text.contains("burundi") { return .BI }
        if text.contains("cape verde") || text.contains("cabo verde") { return .CV }
        if text.contains("cameroon") { return .CM }
        if text.contains("central african republic") { return .CF }
        if text.contains("chad") { return .TD }
        if text.contains("comoros") { return .KM }
        if text.contains("congo") && !text.contains("democratic") { return .CG }
        if text.contains("democratic republic of the congo") { return .CD }
        if text.contains("djibouti") { return .DJ }
        if text.contains("egypt") { return .EG }
        if text.contains("equatorial guinea") { return .GQ }
        if text.contains("eritrea") { return .ER }
        if text.contains("eswatini") || text.contains("swaziland") { return .SZ }
        if text.contains("ethiopia") { return .ET }
        if text.contains("gabon") { return .GA }
        if text.contains("gambia") { return .GM }
        if text.contains("ghana") { return .GH }
        if text.contains("guinea") && !text.contains("bissau") && !text.contains("equatorial") { return .GN }
        if text.contains("guinea-bissau") { return .GW }
        if text.contains("ivory coast") || text.contains("côte d'ivoire") { return .CI }
        if text.contains("kenya") { return .KE }
        if text.contains("lesotho") { return .LS }
        if text.contains("liberia") { return .LR }
        if text.contains("libya") { return .LY }
        if text.contains("madagascar") { return .MG }
        if text.contains("malawi") { return .MW }
        if text.contains("mali") && !text.contains("so") { return .ML }
        if text.contains("mauritania") { return .MR }
        if text.contains("mauritius") { return .MU }
        if text.contains("morocco") { return .MA }
        if text.contains("mozambique") { return .MZ }
        if text.contains("namibia") { return .NA }
        if text.contains("niger") && !text.contains("ia") { return .NE }
        if text.contains("nigeria") { return .NG }
        if text.contains("rwanda") { return .RW }
        if text.contains("são tomé and príncipe") { return .ST }
        if text.contains("senegal") { return .SN }
        if text.contains("seychelles") { return .SC }
        if text.contains("sierra leone") { return .SL }
        if text.contains("somalia") { return .SO }
        if text.contains("south africa") { return .ZA }
        if text.contains("south sudan") { return .SS }
        if text.contains("sudan") && !text.contains("south") { return .SD }
        if text.contains("tanzania") { return .TZ }
        if text.contains("togo") { return .TG }
        if text.contains("tunisia") { return .TN }
        if text.contains("uganda") { return .UG }
        if text.contains("zambia") { return .ZM }
        if text.contains("zimbabwe") { return .ZW }
        
        // Asia
        if text.contains("afghanistan") { return .AF }
        if text.contains("armenia") { return .AM }
        if text.contains("azerbaijan") { return .AZ }
        if text.contains("bangladesh") { return .BD }
        if text.contains("bhutan") { return .BT }
        if text.contains("brunei") { return .BN }
        if text.contains("cambodia") { return .KH }
        if text.contains("china") || text.contains("kina") { return .CN }
        if text.contains("india") || text.contains("indien") { return .IN }
        if text.contains("indonesia") { return .ID }
        if text.contains("iran") { return .IR }
        if text.contains("iraq") { return .IQ }
        if text.contains("israel") { return .IL }
        if text.contains("japan") { return .JP }
        if text.contains("jordan") { return .JO }
        if text.contains("kazakhstan") { return .KZ }
        if text.contains("laos") { return .LA }
        if text.contains("lebanon") { return .LB }
        if text.contains("malaysia") { return .MY }
        if text.contains("maldives") { return .MV }
        if text.contains("mongolia") { return .MN }
        if text.contains("myanmar") || text.contains("burma") { return .MM }
        if text.contains("nepal") { return .NP }
        if text.contains("north korea") { return .KP }
        if text.contains("oman") { return .OM }
        if text.contains("pakistan") { return .PK }
        if text.contains("palestine") { return .PS }
        if text.contains("philippines") { return .PH }
        if text.contains("qatar") { return .QA }
        if text.contains("saudi arabia") { return .SA }
        if text.contains("singapore") { return .SG }
        if text.contains("south korea") { return .KR }
        if text.contains("sri lanka") { return .LK }
        if text.contains("syria") { return .SY }
        if text.contains("taiwan") { return .TW }
        if text.contains("tajikistan") { return .TJ }
        if text.contains("thailand") { return .TH }
        if text.contains("east timor") || text.contains("timor-leste") { return .TL }
        if text.contains("turkmenistan") { return .TM }
        if text.contains("united arab emirates") { return .AE }
        if text.contains("uzbekistan") { return .UZ }
        if text.contains("vietnam") { return .VN }
        if text.contains("yemen") { return .YE }


        // North America
        if text.contains("antigua") || text.contains("barbuda") { return .AG }
        if text.contains("bahamas") { return .BS }
        if text.contains("barbados") { return .BB }
        if text.contains("belize") { return .BZ }
        if text.contains("canada") { return .CA }
        if text.contains("costa rica") { return .CR }
        if text.contains("cuba") { return .CU }
        if text.contains("dominica") { return .DM }
        if text.contains("dominican republic") { return .DO }
        if text.contains("el salvador") { return .SV }
        if text.contains("grenada") { return .GD }
        if text.contains("guatemala") { return .GT }
        if text.contains("haiti") { return .HT }
        if text.contains("honduras") { return .HN }
        if text.contains("jamaica") { return .JM }
        if text.contains("mexico") { return .MX }
        if text.contains("nicaragua") { return .NI }
        if text.contains("panama") { return .PA }
        if text.contains("saint kitts") || text.contains("nevis") { return .KN }
        if text.contains("saint lucia") { return .LC }
        if text.contains("saint vincent") || text.contains("grenadines") { return .VC }
        if text.contains("trinidad") || text.contains("tobago") { return .TT }
        if text.contains("usa") || text.contains("united states") || text.contains("america") {
            return .US
        }
        
        // South America
        if text.contains("argentina") { return .AR }
        if text.contains("bolivia") { return .BO }
        if text.contains("brazil") || text.contains("brasil") { return .BR }
        if text.contains("chile") { return .CL }
        if text.contains("colombia") { return .CO }
        if text.contains("ecuador") { return .EC }
        if text.contains("guyana") { return .GY }
        if text.contains("paraguay") { return .PY }
        if text.contains("peru") { return .PE }
        if text.contains("suriname") { return .SR }
        if text.contains("uruguay") { return .UY }
        if text.contains("venezuela") { return .VE }
        
        // Oceania
        if text.contains("australia") { return .AU }
        if text.contains("fiji") { return .FJ }
        if text.contains("kiribati") { return .KI }
        if text.contains("marshall islands") { return .MH }
        if text.contains("micronesia") { return .FM }
        if text.contains("nauru") { return .NR }
        if text.contains("new zealand") { return .NZ }
        if text.contains("palau") { return .PW }
        if text.contains("papua new guinea") { return .PG }
        if text.contains("samoa") { return .WS }
        if text.contains("solomon islands") { return .SB }
        if text.contains("tonga") { return .TO }
        if text.contains("tuvalu") { return .TV }
        if text.contains("vanuatu") { return .VU }

        return nil
    }

    /// Maps an ISO 3166-1 alpha-2 code to a country name
    /// - Parameter code: The ISO country code
    /// - Returns: The country name if recognized
    public func name() -> String? {
        guard let country = CountryCode(rawValue: self.rawValue.uppercased()) else { return nil }
        switch country {
        case .GB: return "United Kingdom"
        case .US: return "United States"
        case .DE: return "Germany"
        case .FR: return "France"
        case .IT: return "Italy"
        case .ES: return "Spain"
        case .PT: return "Portugal"
        case .NL: return "Netherlands"
        case .BE: return "Belgium"
        case .CH: return "Switzerland"
        case .AT: return "Austria"
        case .DK: return "Denmark"
        case .SE: return "Sweden"
        case .NO: return "Norway"
        case .FI: return "Finland"
        case .IE: return "Ireland"
        case .IS: return "Iceland"
        case .GR: return "Greece"
        case .PL: return "Poland"
        case .CZ: return "Czech Republic"
        case .SK: return "Slovakia"
        case .HU: return "Hungary"
        case .RO: return "Romania"
        case .BG: return "Bulgaria"
        case .HR: return "Croatia"
        case .SI: return "Slovenia"
        case .EE: return "Estonia"
        case .LV: return "Latvia"
        case .LT: return "Lithuania"
        case .UA: return "Ukraine"
        case .BY: return "Belarus"
        case .RU: return "Russia"
        case .TR: return "Turkey"
        case .JP: return "Japan"
        case .CN: return "China"
        case .KR: return "South Korea"
        case .IN: return "India"
        case .ID: return "Indonesia"
        case .MY: return "Malaysia"
        case .TH: return "Thailand"
        case .VN: return "Vietnam"
        case .PH: return "Philippines"
        case .SG: return "Singapore"
        case .AU: return "Australia"
        case .NZ: return "New Zealand"
        case .CA: return "Canada"
        case .MX: return "Mexico"
        case .BR: return "Brazil"
        case .AR: return "Argentina"
        case .CL: return "Chile"
        case .CO: return "Colombia"
        case .PE: return "Peru"
        case .VE: return "Venezuela"
        case .ZA: return "South Africa"
        case .EG: return "Egypt"
        case .MA: return "Morocco"
        case .NG: return "Nigeria"
        case .KE: return "Kenya"
        case .ET: return "Ethiopia"
        case .TZ: return "Tanzania"
        case .UG: return "Uganda"
        case .GH: return "Ghana"
        case .CI: return "Côte d'Ivoire"
        case .AO: return "Angola"
        default: return country.rawValue
        }
    }

    // MARK: - Country Codes


    /// Returns the country code associated with a language
    /// - Parameter language: The language to get the country code for
    /// - Returns: The two-letter ISO 3166-1 alpha-2 country code
    public static func countryCode(for language: Language) -> String {
        switch language {
        // European languages
        case .be: return CountryCode.BY.rawValue  // Belarusian
        case .bg: return CountryCode.BG.rawValue  // Bulgarian
        case .bs: return CountryCode.BA.rawValue  // Bosnian
        case .ca: return CountryCode.ES.rawValue  // Catalan
        case .cs: return CountryCode.CZ.rawValue  // Czech
        case .da: return CountryCode.DK.rawValue  // Danish
        case .de: return CountryCode.DE.rawValue  // German
        case .el: return CountryCode.GR.rawValue  // Greek
        case .en: return CountryCode.GB.rawValue  // English
        case .es: return CountryCode.ES.rawValue  // Spanish
        case .et: return CountryCode.EE.rawValue  // Estonian
        case .eu: return CountryCode.ES.rawValue  // Basque
        case .fi: return CountryCode.FI.rawValue  // Finnish
        case .fo: return CountryCode.FO.rawValue  // Faroese
        case .fr: return CountryCode.FR.rawValue  // French
        case .ga: return CountryCode.IE.rawValue  // Irish
        case .gl: return CountryCode.ES.rawValue  // Galician
        case .hr: return CountryCode.HR.rawValue  // Croatian
        case .hu: return CountryCode.HU.rawValue  // Hungarian
        case .is: return CountryCode.IS.rawValue  // Icelandic
        case .it: return CountryCode.IT.rawValue  // Italian
        case .lt: return CountryCode.LT.rawValue  // Lithuanian
        case .lv: return CountryCode.LV.rawValue  // Latvian
        case .mk: return CountryCode.MK.rawValue  // Macedonian
        case .mt: return CountryCode.MT.rawValue  // Maltese
        case .nb: return CountryCode.NO.rawValue  // Norwegian Bokmål
        case .nl: return CountryCode.NL.rawValue  // Dutch
        case .nn: return CountryCode.NO.rawValue  // Norwegian Nynorsk
        case .pl: return CountryCode.PL.rawValue  // Polish
        case .pt: return CountryCode.PT.rawValue  // Portuguese
        case .ro: return CountryCode.RO.rawValue  // Romanian
        case .ru: return CountryCode.RU.rawValue  // Russian
        case .sk: return CountryCode.SK.rawValue  // Slovak
        case .sl: return CountryCode.SI.rawValue  // Slovenian
        case .sq: return CountryCode.AL.rawValue  // Albanian
        case .sr: return CountryCode.RS.rawValue  // Serbian
        case .sv: return CountryCode.SE.rawValue  // Swedish
            
        // Asian languages
        case .ar: return CountryCode.SA.rawValue  // Arabic
        case .as: return CountryCode.IN.rawValue  // Assamese
        case .bn: return CountryCode.BD.rawValue  // Bengali
        case .gu: return CountryCode.IN.rawValue  // Gujarati
        case .he: return CountryCode.IL.rawValue  // Hebrew
        case .hi: return CountryCode.IN.rawValue  // Hindi
        case .hy: return CountryCode.AM.rawValue  // Armenian
        case .id: return CountryCode.ID.rawValue  // Indonesian
        case .ja: return CountryCode.JP.rawValue  // Japanese
        case .ka: return CountryCode.GE.rawValue  // Georgian
        case .kk: return CountryCode.KZ.rawValue  // Kazakh
        case .km: return CountryCode.KH.rawValue  // Khmer
        case .kn: return CountryCode.IN.rawValue  // Kannada
        case .ko: return CountryCode.KR.rawValue  // Korean
        case .ml: return CountryCode.IN.rawValue  // Malayalam
        case .mr: return CountryCode.IN.rawValue  // Marathi
        case .ms: return CountryCode.MY.rawValue  // Malay
        case .my: return CountryCode.MM.rawValue  // Burmese
        case .ne: return CountryCode.NP.rawValue  // Nepali
        case .or: return CountryCode.IN.rawValue  // Oriya
        case .pa: return CountryCode.IN.rawValue  // Punjabi
        case .si: return CountryCode.LK.rawValue  // Sinhala
        case .ta: return CountryCode.IN.rawValue  // Tamil
        case .te: return CountryCode.IN.rawValue  // Telugu
        case .th: return CountryCode.TH.rawValue  // Thai
        case .tr: return CountryCode.TR.rawValue  // Turkish
        case .uk: return CountryCode.UA.rawValue  // Ukrainian
        case .ur: return CountryCode.PK.rawValue  // Urdu
        case .uz: return CountryCode.UZ.rawValue  // Uzbek
        case .vi: return CountryCode.VN.rawValue  // Vietnamese
        case .zh: return CountryCode.CN.rawValue  // Chinese
            
        // African languages
        case .am: return CountryCode.ET.rawValue  // Amharic
        case .ff: return CountryCode.SN.rawValue  // Fulah
        case .ha: return CountryCode.NG.rawValue  // Hausa
        case .ig: return CountryCode.NG.rawValue  // Igbo
        case .ki: return CountryCode.KE.rawValue  // Kikuyu
        case .lg: return CountryCode.UG.rawValue  // Ganda
        case .rw: return CountryCode.RW.rawValue  // Kinyarwanda
        case .so: return CountryCode.SO.rawValue  // Somali
        case .sw: return CountryCode.TZ.rawValue  // Swahili
        case .yo: return CountryCode.NG.rawValue  // Yoruba
        case .zu: return CountryCode.ZA.rawValue  // Zulu
            
        // Default to Sweden as fallback
        default: return CountryCode.SE.rawValue
        }
    }
}