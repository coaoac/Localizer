import Foundation

public enum Language: RawRepresentable, CustomStringConvertible, Sendable, CaseIterable {
    case af
    case ak
    case sq
    case am
    case ar
    case hy
    case `as`
    case asa
    case az
    case bm
    case eu
    case be
    case bem
    case bez
    case bn
    case bs
    case bg
    case my
    case ca
    case tzm
    case chr
    case cgg
    case zh
    case kw
    case hr
    case cs
    case da
    case nl
    case ebu
    case en
    case eo
    case et
    case ee
    case fo
    case fil
    case fi
    case fr
    case ff
    case gl
    case lg
    case ka
    case de
    case el
    case gu
    case guz
    case ha
    case haw
    case he
    case hi
    case hu
    case `is`
    case ig
    case id
    case ga
    case it
    case ja
    case kea
    case kab
    case kl
    case kln
    case kam
    case kn
    case kk
    case km
    case ki
    case rw
    case kok
    case ko
    case khq
    case ses
    case lag
    case lv
    case lt
    case luo
    case luy
    case mk
    case jmc
    case kde
    case mg
    case ms
    case ml
    case mt
    case gv
    case mr
    case mas
    case mer
    case mfe
    case naq
    case ne
    case nd
    case nb
    case nn
    case nyn
    case or
    case om
    case ps
    case fa
    case pl
    case pt
    case pa
    case ro
    case rm
    case rof
    case ru
    case rwk
    case saq
    case sg
    case seh
    case sr
    case sn
    case ii
    case si
    case sk
    case sl
    case xog
    case so
    case es
    case sw
    case sv
    case gsw
    case shi
    case dav
    case ta
    case te
    case teo
    case th
    case bo
    case ti
    case to
    case tr
    case uk
    case ur
    case uz
    case vi
    case vun
    case cy
    case yo
    case zu
    
    public init?(rawValue: String) {
        switch rawValue {
        case "af": self = .af
        case "ak": self = .ak
        case "sq": self = .sq
        case "am": self = .am
        case "ar": self = .ar
        case "hy": self = .hy
        case "as": self = .as
        case "asa": self = .asa
        case "az": self = .az
        case "bm": self = .bm
        case "eu": self = .eu
        case "be": self = .be
        case "bem": self = .bem
        case "bez": self = .bez
        case "bn": self = .bn
        case "bs": self = .bs
        case "bg": self = .bg
        case "my": self = .my
        case "ca": self = .ca
        case "chr": self = .chr
        case "cgg": self = .cgg
        case "zh": self = .zh
        case "kw": self = .kw
        case "hr": self = .hr
        case "cs": self = .cs
        case "da": self = .da
        case "nl": self = .nl
        case "ebu": self = .ebu
        
        case "en": self = .en
        case "eo": self = .eo
        case "et": self = .et
        case "ee": self = .ee
        case "fo": self = .fo
        case "fil": self = .fil
        case "fi": self = .fi
        case "ta": self = .ta
        case "te": self = .te
        case "teo": self = .teo
        case "th": self = .th
        case "bo": self = .bo
        case "ti": self = .ti
        case "to": self = .to
        case "tr": self = .tr
        case "uk": self = .uk
        case "ur": self = .ur
        case "uz": self = .uz
        case "vi": self = .vi
        case "vun": self = .vun
        case "cy": self = .cy
        case "yo": self = .yo
        case "zu": self = .zu
        default: return nil
        }
    }
    
    public var rawValue: String {
        switch self {
        case .af: return "af"
        case .ak: return "ak"
        case .sq: return "sq"
        case .am: return "am"
        case .ar: return "ar"
        case .hy: return "hy"
        case .as: return "as"
        case .asa: return "asa"
        case .az: return "az"
        case .bm: return "bm"
        case .eu: return "eu"
        case .be: return "be"
        case .bem: return "bem"
        case .bez: return "bez"
        case .bn: return "bn"
        case .bs: return "bs"
        case .bg: return "bg"
        case .my: return "my"
        case .ca: return "ca"
        case .tzm: return "tzm"
        case .chr: return "chr"
        case .cgg: return "cgg"
        case .zh: return "zh"
        case .kw: return "kw"
        case .hr: return "hr"
        case .cs: return "cs"
        case .da: return "da"
        case .nl: return "nl"
        case .ebu: return "ebu"
        case .en: return "en"
        case .eo: return "eo"
        case .et: return "et"
        case .ee: return "ee"
        case .fo: return "fo"
        case .fil: return "fil"
        case .fi: return "fi"
        case .fr: return "fr"
        case .ff: return "ff"
        case .gl: return "gl"
        case .lg: return "lg"
        case .ka: return "ka"
        case .de: return "de"
        case .el: return "el"
        case .gu: return "gu"
        case .guz: return "guz"
        case .ha: return "ha"
        case .haw: return "haw"
        case .he: return "he"
        case .hi: return "hi"
        case .hu: return "hu"
        case .is: return "is"
        case .ig: return "ig"
        case .id: return "id"
        case .ga: return "ga"
        case .it: return "it"
        case .ja: return "ja"
        case .kea: return "kea"
        case .kab: return "kab"
        case .kl: return "kl"
        case .kln: return "kln"
        case .kam: return "kam"
        case .kn: return "kn"
        case .kk: return "kk"
        case .km: return "km"
        case .ki: return "ki"
        case .rw: return "rw"
        case .kok: return "kok"
        case .ko: return "ko"
        case .khq: return "khq"
        case .ses: return "ses"
        case .lag: return "lag"
        case .lv: return "lv"
        case .lt: return "lt"
        case .luo: return "luo"
        case .luy: return "luy"
        case .mk: return "mk"
        case .jmc: return "jmc"
        case .kde: return "kde"
        case .mg: return "mg"
        case .ms: return "ms"
        case .ml: return "ml"
        case .mt: return "mt"
        case .gv: return "gv"
        case .mr: return "mr"
        case .mas: return "mas"
        case .mer: return "mer"
        case .mfe: return "mfe"
        case .naq: return "naq"
        case .ne: return "ne"
        case .nd: return "nd"
        case .nb: return "nb"
        case .nn: return "nn"
        case .nyn: return "nyn"
        case .or: return "or"
        case .om: return "om"
        case .ps: return "ps"
        case .fa: return "fa"
        case .pl: return "pl"
        case .pt: return "pt"
        case .pa: return "pa"
        case .ro: return "ro"
        case .rm: return "rm"
        case .rof: return "rof"
        case .ru: return "ru"
        case .rwk: return "rwk"
        case .saq: return "saq"
        case .sg: return "sg"
        case .seh: return "seh"
        case .sr: return "sr"
        case .sn: return "sn"
        case .ii: return "ii"
        case .si: return "si"
        case .sk: return "sk"
        case .sl: return "sl"
        case .xog: return "xog"
        case .so: return "so"
        case .es: return "es"
        case .sw: return "sw"
        case .sv: return "sv"
        case .gsw: return "gsw"
        case .shi: return "shi"
        case .dav: return "dav"
        case .ta: return "ta"
        case .te: return "te"
        case .teo: return "teo"
        case .th: return "th"
        case .bo: return "bo"
        case .ti: return "ti"
        case .to: return "to"
        case .tr: return "tr"
        case .uk: return "uk"
        case .ur: return "ur"
        case .uz: return "uz"
        case .vi: return "vi"
        case .vun: return "vun"
        case .cy: return "cy"
        case .yo: return "yo"
        case .zu: return "zu"
        }
    }
    
    public var prefix: String {
        return rawValue.components(separatedBy: "_").first ?? rawValue
    }
    
    public static var current: Language {
        let localeIdentifier = Locale.current.identifier
        if let language = Language(rawValue: localeIdentifier) {
            return language
        } else {
            // Handle case where the exact locale isn't in our enum
            // Extract the language code from the locale identifier
            let languageCode = localeIdentifier.components(separatedBy: "_").first ?? "en"
            return Language(rawValue: languageCode) ?? .en
        }
    }
    
    public var description: String {
        switch self {
        case .af: return "Afrikaans"
        case .ak: return "Akan"
        case .sq: return "Albanian"
        case .am: return "Amharic"
        case .ar: return "Arabic"
        case .hy: return "Armenian"
        case .as: return "Assamese"
        case .asa: return "Asu"
        case .az: return "Azerbaijani"
        case .bm: return "Bambara"
        case .eu: return "Basque"
        case .be: return "Belarusian"
        case .bem: return "Bemba"
        case .bez: return "Bena"
        case .bn: return "Bengali"
        case .bs: return "Bosnian"
        case .bg: return "Bulgarian"
        case .my: return "Burmese"
        case .ca: return "Catalan"
        case .chr: return "Cherokee"
        case .cgg: return "Chiga"
        case .zh: return "Chinese"
        case .kw: return "Cornish"
        case .hr: return "Croatian"
        case .cs: return "Czech"
        case .da: return "Danish"
        case .nl: return "Dutch"
        case .ebu: return "Embu"
        case .en: return "English"
        case .eo: return "Esperanto"
        case .et: return "Estonian"
        case .ee: return "Ewe"
        case .fo: return "Faroese"
        case .fil: return "Filipino"
        case .fi: return "Finnish"
        case .fr: return "French"
        case .ff: return "Fulah"
        case .gl: return "Galician"
        case .lg: return "Ganda"
        case .ka: return "Georgian"
        case .de: return "German"
        case .el: return "Greek"
        case .gu: return "Gujarati"
        case .guz: return "Gusii"
        case .ha: return "Hausa"
        case .haw: return "Hawaiian"
        case .he: return "Hebrew"
        case .hi: return "Hindi"
        case .hu: return "Hungarian"
        case .is: return "Icelandic"
        case .ig: return "Igbo"
        case .ga: return "Irish"
        case .it: return "Italian"
        case .ja: return "Japanese"
        case .kea: return "Kabuverdianu"
        case .kab: return "Kabyle"
        case .kl: return "Kalaallisut"
        case .kln: return "Kalenjin"
        case .kam: return "Kamba"
        case .kn: return "Kannada"
        case .kk: return "Kazakh"
        case .km: return "Khmer"
        case .ki: return "Kikuyu"
        case .rw: return "Kinyarwanda"
        case .kok: return "Konkani"
        case .ko: return "Korean"
        case .khq: return "Koyra Chiini"
        case .ses: return "Koyraboro Senni"
        case .lag: return "Langi"
        case .lv: return "Latvian"
        case .lt: return "Lithuanian"
        case .luo: return "Luo"
        case .luy: return "Luyia"
        case .mk: return "Macedonian"
        case .jmc: return "Machame"
        case .kde: return "Makonde"
        case .mg: return "Malagasy"
        case .ms: return "Malay"
        case .ml: return "Malayalam"
        case .mt: return "Maltese"
        case .mr: return "Marathi"
        case .mas: return "Masai"
        case .mfe: return "Morisyen"
        case .naq: return "Nama"
        case .ne: return "Nepali"
        case .nd: return "North Ndebele"
        case .nb: return "Norwegian Bokmål"
        case .nn: return "Norwegian Nynorsk"
        case .or: return "Oriya"
        case .om: return "Oromo"
        case .ps: return "Pashto"
        case .fa: return "Persian"
        case .pl: return "Polish"
        case .pt: return "Portuguese"
        case .pa: return "Punjabi"
        case .ro: return "Romanian"
        case .rm: return "Romansh"
        case .rof: return "Rombo"
        case .ru: return "Russian"
        case .rwk: return "Rwa"
        case .saq: return "Samburu"
        case .sg: return "Sango"
        case .seh: return "Sena"
        case .sr: return "Serbian"
        case .sn: return "Shona"
        case .ii: return "Sichuan Yi"
        case .si: return "Sinhala"
        case .sk: return "Slovak"
        case .sl: return "Slovenian"
        case .xog: return "Soga"
        case .so: return "Somali"
        case .es: return "Spanish"
        case .sw: return "Swahili"
        case .sv: return "Swedish"
        case .gsw: return "Swiss German"
        case .shi: return "Tachelhit"
        case .dav: return "Taita"
        case .ta: return "Tamil"
        case .te: return "Telugu"
        case .teo: return "Teso"
        case .th: return "Thai"
        case .bo: return "Tibetan"
        case .ti: return "Tigrinya"
        case .to: return "Tonga"
        case .tr: return "Turkish"
        case .uk: return "Ukrainian"
        case .ur: return "Urdu"
        case .uz: return "Uzbek"
        case .vi: return "Vietnamese"
        case .cy: return "Welsh"
        case .yo: return "Yoruba"
        case .zu: return "Zulu"
        case .tzm: return "Tamaha"
        case .id: return "Bahasa Indonesia"
        case .gv: return "Gaelic"
        case .mer: return "Meru"
        case .nyn: return "Nyankole"
        case .vun: return "Vunjo"
        }
    }

    public func toCountryCode() -> String {
        return CountryCode.countryCode(for: self)
    }
}
