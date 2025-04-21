import Foundation

public enum Language: String, CustomStringConvertible, Sendable, CaseIterable, Codable {
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

    public static var current: Language {
        let localeIdentifier = Locale.current.languageCode ?? "sv"
        return Language(rawValue: localeIdentifier) ?? .sv
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
