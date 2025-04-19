import Foundation

public enum LocalizedString: Sendable, Codable, Equatable, Hashable {
    /// Afrikaans (Namibia)
    case af_NA(String)
    /// Afrikaans (South Africa)
    case af_ZA(String)
    /// Afrikaans
    case af(String)
    /// Akan (Ghana)
    case ak_GH(String)
    /// Akan
    case ak(String)
    /// Albanian (Albania)
    case sq_AL(String)
    /// Albanian
    case sq(String)
    /// Amharic (Ethiopia)
    case am_ET(String)
    /// Amharic
    case am(String)
    /// Arabic (Algeria)
    case ar_DZ(String)
    /// Arabic (Bahrain)
    case ar_BH(String)
    /// Arabic (Egypt)
    case ar_EG(String)
    /// Arabic (Iraq)
    case ar_IQ(String)
    /// Arabic (Jordan)
    case ar_JO(String)
    /// Arabic (Kuwait)
    case ar_KW(String)
    /// Arabic (Lebanon)
    case ar_LB(String)
    /// Arabic (Libya)
    case ar_LY(String)
    /// Arabic (Morocco)
    case ar_MA(String)
    /// Arabic (Oman)
    case ar_OM(String)
    /// Arabic (Qatar)
    case ar_QA(String)
    /// Arabic (Saudi Arabia)
    case ar_SA(String)
    /// Arabic (Sudan)
    case ar_SD(String)
    /// Arabic (Syria)
    case ar_SY(String)
    /// Arabic (Tunisia)
    case ar_TN(String)
    /// Arabic (United Arab Emirates)
    case ar_AE(String)
    /// Arabic (Yemen)
    case ar_YE(String)
    /// Arabic
    case ar(String)
    /// Armenian (Armenia)
    case hy_AM(String)
    /// Armenian
    case hy(String)
    /// Assamese (India)
    case as_IN(String)
    /// Assamese
    case `as`(String)
    /// Asu (Tanzania)
    case asa_TZ(String)
    /// Asu
    case asa(String)
    /// Azerbaijani (Cyrillic)
    case az_Cyrl(String)
    /// Azerbaijani (Cyrillic, Azerbaijan)
    case az_Cyrl_AZ(String)
    /// Azerbaijani (Latin)
    case az_Latn(String)
    /// Azerbaijani (Latin, Azerbaijan)
    case az_Latn_AZ(String)
    /// Azerbaijani
    case az(String)
    /// Bambara (Mali)
    case bm_ML(String)
    /// Bambara
    case bm(String)
    /// Basque (Spain)
    case eu_ES(String)
    /// Basque
    case eu(String)
    /// Belarusian (Belarus)
    case be_BY(String)
    /// Belarusian
    case be(String)
    /// Bemba (Zambia)
    case bem_ZM(String)
    /// Bemba
    case bem(String)
    /// Bena (Tanzania)
    case bez_TZ(String)
    /// Bena
    case bez(String)
    /// Bengali (Bangladesh)
    case bn_BD(String)
    /// Bengali (India)
    case bn_IN(String)
    /// Bengali
    case bn(String)
    /// Bosnian (Bosnia and Herzegovina)
    case bs_BA(String)
    /// Bosnian
    case bs(String)
    /// Bulgarian (Bulgaria)
    case bg_BG(String)
    /// Bulgarian
    case bg(String)
    /// Burmese (Myanmar [Burma])
    case my_MM(String)
    /// Burmese
    case my(String)
    /// Cantonese (Traditional, Hong Kong SAR China)
    case yue_Hant_HK(String)
    /// Catalan (Spain)
    case ca_ES(String)
    /// Catalan
    case ca(String)
    /// Central Morocco Tamazight (Latin)
    case tzm_Latn(String)
    /// Central Morocco Tamazight (Latin, Morocco)
    case tzm_Latn_MA(String)
    /// Central Morocco Tamazight
    case tzm(String)
    /// Cherokee (United States)
    case chr_US(String)
    /// Cherokee
    case chr(String)
    /// Chiga (Uganda)
    case cgg_UG(String)
    /// Chiga
    case cgg(String)
    /// Chinese (Simplified Han)
    case zh_Hans(String)
    /// Chinese (Simplified Han, China)
    case zh_Hans_CN(String)
    /// Chinese (Simplified Han, Hong Kong SAR China)
    case zh_Hans_HK(String)
    /// Chinese (Simplified Han, Macau SAR China)
    case zh_Hans_MO(String)
    /// Chinese (Simplified Han, Singapore)
    case zh_Hans_SG(String)
    /// Chinese (Traditional Han)
    case zh_Hant(String)
    /// Chinese (Traditional Han, Hong Kong SAR China)
    case zh_Hant_HK(String)
    /// Chinese (Traditional Han, Macau SAR China)
    case zh_Hant_MO(String)
    /// Chinese (Traditional Han, Taiwan)
    case zh_Hant_TW(String)
    /// Chinese
    case zh(String)
    /// Cornish (United Kingdom)
    case kw_GB(String)
    /// Cornish
    case kw(String)
    /// Croatian (Croatia)
    case hr_HR(String)
    /// Croatian
    case hr(String)
    /// Czech (Czech Republic)
    case cs_CZ(String)
    /// Czech
    case cs(String)
    /// Danish (Denmark)
    case da_DK(String)
    /// Danish
    case da(String)
    /// Dutch (Belgium)
    case nl_BE(String)
    /// Dutch (Netherlands)
    case nl_NL(String)
    /// Dutch
    case nl(String)
    /// Embu (Kenya)
    case ebu_KE(String)
    /// Embu
    case ebu(String)
    /// English (American Samoa)
    case en_AS(String)
    /// English (Australia)
    case en_AU(String)
    /// English (Belgium)
    case en_BE(String)
    /// English (Belize)
    case en_BZ(String)
    /// English (Botswana)
    case en_BW(String)
    /// English (Canada)
    case en_CA(String)
    /// English (Guam)
    case en_GU(String)
    /// English (Hong Kong SAR China)
    case en_HK(String)
    /// English (India)
    case en_IN(String)
    /// English (Ireland)
    case en_IE(String)
    /// English (Israel)
    case en_IL(String)
    /// English (Jamaica)
    case en_JM(String)
    /// English (Malta)
    case en_MT(String)
    /// English (Marshall Islands)
    case en_MH(String)
    /// English (Mauritius)
    case en_MU(String)
    /// English (Namibia)
    case en_NA(String)
    /// English (New Zealand)
    case en_NZ(String)
    /// English (Northern Mariana Islands)
    case en_MP(String)
    /// English (Pakistan)
    case en_PK(String)
    /// English (Philippines)
    case en_PH(String)
    /// English (Singapore)
    case en_SG(String)
    /// English (South Africa)
    case en_ZA(String)
    /// English (Trinidad and Tobago)
    case en_TT(String)
    /// English (U.S. Minor Outlying Islands)
    case en_UM(String)
    /// English (U.S. Virgin Islands)
    case en_VI(String)
    /// English (United Kingdom)
    case en_GB(String)
    /// English (United States)
    case en_US(String)
    /// English (Zimbabwe)
    case en_ZW(String)
    /// English
    case en(String)
    /// Esperanto
    case eo(String)
    /// Estonian (Estonia)
    case et_EE(String)
    /// Estonian
    case et(String)
    /// Ewe (Ghana)
    case ee_GH(String)
    /// Ewe (Togo)
    case ee_TG(String)
    /// Ewe
    case ee(String)
    /// Faroese (Faroe Islands)
    case fo_FO(String)
    /// Faroese
    case fo(String)
    /// Filipino (Philippines)
    case fil_PH(String)
    /// Filipino
    case fil(String)
    /// Finnish (Finland)
    case fi_FI(String)
    /// Finnish
    case fi(String)
    /// French (Belgium)
    case fr_BE(String)
    /// French (Benin)
    case fr_BJ(String)
    /// French (Burkina Faso)
    case fr_BF(String)
    /// French (Burundi)
    case fr_BI(String)
    /// French (Cameroon)
    case fr_CM(String)
    /// French (Canada)
    case fr_CA(String)
    /// French (Central African Republic)
    case fr_CF(String)
    /// French (Chad)
    case fr_TD(String)
    /// French (Comoros)
    case fr_KM(String)
    /// French (Congo - Brazzaville)
    case fr_CG(String)
    /// French (Congo - Kinshasa)
    case fr_CD(String)
    /// French (Côte d'Ivoire)
    case fr_CI(String)
    /// French (Djibouti)
    case fr_DJ(String)
    /// French (Equatorial Guinea)
    case fr_GQ(String)
    /// French (France)
    case fr_FR(String)
    /// French (Gabon)
    case fr_GA(String)
    /// French (Guadeloupe)
    case fr_GP(String)
    /// French (Guinea)
    case fr_GN(String)
    /// French (Luxembourg)
    case fr_LU(String)
    /// French (Madagascar)
    case fr_MG(String)
    /// French (Mali)
    case fr_ML(String)
    /// French (Martinique)
    case fr_MQ(String)
    /// French (Monaco)
    case fr_MC(String)
    /// French (Niger)
    case fr_NE(String)
    /// French (Rwanda)
    case fr_RW(String)
    /// French (Réunion)
    case fr_RE(String)
    /// French (Saint Barthélemy)
    case fr_BL(String)
    /// French (Saint Martin)
    case fr_MF(String)
    /// French (Senegal)
    case fr_SN(String)
    /// French (Switzerland)
    case fr_CH(String)
    /// French (Togo)
    case fr_TG(String)
    /// French
    case fr(String)
    /// Fulah (Senegal)
    case ff_SN(String)
    /// Fulah
    case ff(String)
    /// Galician (Spain)
    case gl_ES(String)
    /// Galician
    case gl(String)
    /// Ganda (Uganda)
    case lg_UG(String)
    /// Ganda
    case lg(String)
    /// Georgian (Georgia)
    case ka_GE(String)
    /// Georgian
    case ka(String)
    /// German (Austria)
    case de_AT(String)
    /// German (Belgium)
    case de_BE(String)
    /// German (Germany)
    case de_DE(String)
    /// German (Liechtenstein)
    case de_LI(String)
    /// German (Luxembourg)
    case de_LU(String)
    /// German (Switzerland)
    case de_CH(String)
    /// German
    case de(String)
    /// Greek (Cyprus)
    case el_CY(String)
    /// Greek (Greece)
    case el_GR(String)
    /// Greek
    case el(String)
    /// Gujarati (India)
    case gu_IN(String)
    /// Gujarati
    case gu(String)
    /// Gusii (Kenya)
    case guz_KE(String)
    /// Gusii
    case guz(String)
    /// Hausa (Latin)
    case ha_Latn(String)
    /// Hausa (Latin, Ghana)
    case ha_Latn_GH(String)
    /// Hausa (Latin, Niger)
    case ha_Latn_NE(String)
    /// Hausa (Latin, Nigeria)
    case ha_Latn_NG(String)
    /// Hausa
    case ha(String)
    /// Hawaiian (United States)
    case haw_US(String)
    /// Hawaiian
    case haw(String)
    /// Hebrew (Israel)
    case he_IL(String)
    /// Hebrew
    case he(String)
    /// Hindi (India)
    case hi_IN(String)
    /// Hindi
    case hi(String)
    /// Hungarian (Hungary)
    case hu_HU(String)
    /// Hungarian
    case hu(String)
    /// Icelandic (Iceland)
    case is_IS(String)
    /// Icelandic
    case `is`(String)
    /// Igbo (Nigeria)
    case ig_NG(String)
    /// Igbo
    case ig(String)
    /// Indonesian (Indonesia)
    case id_ID(String)
    /// Indonesian
    case id(String)
    /// Irish (Ireland)
    case ga_IE(String)
    /// Irish
    case ga(String)
    /// Italian (Italy)
    case it_IT(String)
    /// Italian (Switzerland)
    case it_CH(String)
    /// Italian
    case it(String)
    /// Japanese (Japan)
    case ja_JP(String)
    /// Japanese
    case ja(String)
    /// Kabuverdianu (Cape Verde)
    case kea_CV(String)
    /// Kabuverdianu
    case kea(String)
    /// Kabyle (Algeria)
    case kab_DZ(String)
    /// Kabyle
    case kab(String)
    /// Kalaallisut (Greenland)
    case kl_GL(String)
    /// Kalaallisut
    case kl(String)
    /// Kalenjin (Kenya)
    case kln_KE(String)
    /// Kalenjin
    case kln(String)
    /// Kamba (Kenya)
    case kam_KE(String)
    /// Kamba
    case kam(String)
    /// Kannada (India)
    case kn_IN(String)
    /// Kannada
    case kn(String)
    /// Kazakh (Cyrillic)
    case kk_Cyrl(String)
    /// Kazakh (Cyrillic, Kazakhstan)
    case kk_Cyrl_KZ(String)
    /// Kazakh
    case kk(String)
    /// Khmer (Cambodia)
    case km_KH(String)
    /// Khmer
    case km(String)
    /// Kikuyu (Kenya)
    case ki_KE(String)
    /// Kikuyu
    case ki(String)
    /// Kinyarwanda (Rwanda)
    case rw_RW(String)
    /// Kinyarwanda
    case rw(String)
    /// Konkani (India)
    case kok_IN(String)
    /// Konkani
    case kok(String)
    /// Korean (South Korea)
    case ko_KR(String)
    /// Korean
    case ko(String)
    /// Koyra Chiini (Mali)
    case khq_ML(String)
    /// Koyra Chiini
    case khq(String)
    /// Koyraboro Senni (Mali)
    case ses_ML(String)
    /// Koyraboro Senni
    case ses(String)
    /// Langi (Tanzania)
    case lag_TZ(String)
    /// Langi
    case lag(String)
    /// Latvian (Latvia)
    case lv_LV(String)
    /// Latvian
    case lv(String)
    /// Lithuanian (Lithuania)
    case lt_LT(String)
    /// Lithuanian
    case lt(String)
    /// Luo (Kenya)
    case luo_KE(String)
    /// Luo
    case luo(String)
    /// Luyia (Kenya)
    case luy_KE(String)
    /// Luyia
    case luy(String)
    /// Macedonian (Macedonia)
    case mk_MK(String)
    /// Macedonian
    case mk(String)
    /// Machame (Tanzania)
    case jmc_TZ(String)
    /// Machame
    case jmc(String)
    /// Makonde (Tanzania)
    case kde_TZ(String)
    /// Makonde
    case kde(String)
    /// Malagasy (Madagascar)
    case mg_MG(String)
    /// Malagasy
    case mg(String)
    /// Malay (Brunei)
    case ms_BN(String)
    /// Malay (Malaysia)
    case ms_MY(String)
    /// Malay
    case ms(String)
    /// Malayalam (India)
    case ml_IN(String)
    /// Malayalam
    case ml(String)
    /// Maltese (Malta)
    case mt_MT(String)
    /// Maltese
    case mt(String)
    /// Manx (United Kingdom)
    case gv_GB(String)
    /// Manx
    case gv(String)
    /// Marathi (India)
    case mr_IN(String)
    /// Marathi
    case mr(String)
    /// Masai (Kenya)
    case mas_KE(String)
    /// Masai (Tanzania)
    case mas_TZ(String)
    /// Masai
    case mas(String)
    /// Meru (Kenya)
    case mer_KE(String)
    /// Meru
    case mer(String)
    /// Morisyen (Mauritius)
    case mfe_MU(String)
    /// Morisyen
    case mfe(String)
    /// Nama (Namibia)
    case naq_NA(String)
    /// Nama
    case naq(String)
    /// Nepali (India)
    case ne_IN(String)
    /// Nepali (Nepal)
    case ne_NP(String)
    /// Nepali
    case ne(String)
    /// North Ndebele (Zimbabwe)
    case nd_ZW(String)
    /// North Ndebele
    case nd(String)
    /// Norwegian Bokmål (Norway)
    case nb_NO(String)
    /// Norwegian Bokmål
    case nb(String)
    /// Norwegian Nynorsk (Norway)
    case nn_NO(String)
    /// Norwegian Nynorsk
    case nn(String)
    /// Nyankole (Uganda)
    case nyn_UG(String)
    /// Nyankole
    case nyn(String)
    /// Oriya (India)
    case or_IN(String)
    /// Oriya
    case or(String)
    /// Oromo (Ethiopia)
    case om_ET(String)
    /// Oromo (Kenya)
    case om_KE(String)
    /// Oromo
    case om(String)
    /// Pashto (Afghanistan)
    case ps_AF(String)
    /// Pashto
    case ps(String)
    /// Persian (Afghanistan)
    case fa_AF(String)
    /// Persian (Iran)
    case fa_IR(String)
    /// Persian
    case fa(String)
    /// Polish (Poland)
    case pl_PL(String)
    /// Polish
    case pl(String)
    /// Portuguese (Brazil)
    case pt_BR(String)
    /// Portuguese (Guinea-Bissau)
    case pt_GW(String)
    /// Portuguese (Mozambique)
    case pt_MZ(String)
    /// Portuguese (Portugal)
    case pt_PT(String)
    /// Portuguese
    case pt(String)
    /// Punjabi (Arabic)
    case pa_Arab(String)
    /// Punjabi (Arabic, Pakistan)
    case pa_Arab_PK(String)
    /// Punjabi (Gurmukhi)
    case pa_Guru(String)
    /// Punjabi (Gurmukhi, India)
    case pa_Guru_IN(String)
    /// Punjabi
    case pa(String)
    /// Romanian (Moldova)
    case ro_MD(String)
    /// Romanian (Romania)
    case ro_RO(String)
    /// Romanian
    case ro(String)
    /// Romansh (Switzerland)
    case rm_CH(String)
    /// Romansh
    case rm(String)
    /// Rombo (Tanzania)
    case rof_TZ(String)
    /// Rombo
    case rof(String)
    /// Russian (Moldova)
    case ru_MD(String)
    /// Russian (Russia)
    case ru_RU(String)
    /// Russian (Ukraine)
    case ru_UA(String)
    /// Russian
    case ru(String)
    /// Rwa (Tanzania)
    case rwk_TZ(String)
    /// Rwa
    case rwk(String)
    /// Samburu (Kenya)
    case saq_KE(String)
    /// Samburu
    case saq(String)
    /// Sango (Central African Republic)
    case sg_CF(String)
    /// Sango
    case sg(String)
    /// Sena (Mozambique)
    case seh_MZ(String)
    /// Sena
    case seh(String)
    /// Serbian (Cyrillic)
    case sr_Cyrl(String)
    /// Serbian (Cyrillic, Bosnia and Herzegovina)
    case sr_Cyrl_BA(String)
    /// Serbian (Cyrillic, Montenegro)
    case sr_Cyrl_ME(String)
    /// Serbian (Cyrillic, Serbia)
    case sr_Cyrl_RS(String)
    /// Serbian (Latin)
    case sr_Latn(String)
    /// Serbian (Latin, Bosnia and Herzegovina)
    case sr_Latn_BA(String)
    /// Serbian (Latin, Montenegro)
    case sr_Latn_ME(String)
    /// Serbian (Latin, Serbia)
    case sr_Latn_RS(String)
    /// Serbian
    case sr(String)
    /// Shona (Zimbabwe)
    case sn_ZW(String)
    /// Shona
    case sn(String)
    /// Sichuan Yi (China)
    case ii_CN(String)
    /// Sichuan Yi
    case ii(String)
    /// Sinhala (Sri Lanka)
    case si_LK(String)
    /// Sinhala
    case si(String)
    /// Slovak (Slovakia)
    case sk_SK(String)
    /// Slovak
    case sk(String)
    /// Slovenian (Slovenia)
    case sl_SI(String)
    /// Slovenian
    case sl(String)
    /// Soga (Uganda)
    case xog_UG(String)
    /// Soga
    case xog(String)
    /// Somali (Djibouti)
    case so_DJ(String)
    /// Somali (Ethiopia)
    case so_ET(String)
    /// Somali (Kenya)
    case so_KE(String)
    /// Somali (Somalia)
    case so_SO(String)
    /// Somali
    case so(String)
    /// Spanish (Argentina)
    case es_AR(String)
    /// Spanish (Bolivia)
    case es_BO(String)
    /// Spanish (Chile)
    case es_CL(String)
    /// Spanish (Colombia)
    case es_CO(String)
    /// Spanish (Costa Rica)
    case es_CR(String)
    /// Spanish (Dominican Republic)
    case es_DO(String)
    /// Spanish (Ecuador)
    case es_EC(String)
    /// Spanish (El Salvador)
    case es_SV(String)
    /// Spanish (Equatorial Guinea)
    case es_GQ(String)
    /// Spanish (Guatemala)
    case es_GT(String)
    /// Spanish (Honduras)
    case es_HN(String)
    /// Spanish (Latin America)
    case es_419(String)
    /// Spanish (Mexico)
    case es_MX(String)
    /// Spanish (Nicaragua)
    case es_NI(String)
    /// Spanish (Panama)
    case es_PA(String)
    /// Spanish (Paraguay)
    case es_PY(String)
    /// Spanish (Peru)
    case es_PE(String)
    /// Spanish (Puerto Rico)
    case es_PR(String)
    /// Spanish (Spain)
    case es_ES(String)
    /// Spanish (United States)
    case es_US(String)
    /// Spanish (Uruguay)
    case es_UY(String)
    /// Spanish (Venezuela)
    case es_VE(String)
    /// Spanish
    case es(String)
    /// Swahili (Kenya)
    case sw_KE(String)
    /// Swahili (Tanzania)
    case sw_TZ(String)
    /// Swahili
    case sw(String)
    /// Swedish (Finland)
    case sv_FI(String)
    /// Swedish (Sweden)
    case sv_SE(String)
    /// Swedish
    case sv(String)
    /// Swiss German (Switzerland)
    case gsw_CH(String)
    /// Swiss German
    case gsw(String)
    /// Tachelhit (Latin)
    case shi_Latn(String)
    /// Tachelhit (Latin, Morocco)
    case shi_Latn_MA(String)
    /// Tachelhit (Tifinagh)
    case shi_Tfng(String)
    /// Tachelhit (Tifinagh, Morocco)
    case shi_Tfng_MA(String)
    /// Tachelhit
    case shi(String)
    /// Taita (Kenya)
    case dav_KE(String)
    /// Taita
    case dav(String)
    /// Tamil (India)
    case ta_IN(String)
    /// Tamil (Sri Lanka)
    case ta_LK(String)
    /// Tamil
    case ta(String)
    /// Telugu (India)
    case te_IN(String)
    /// Telugu
    case te(String)
    /// Teso (Kenya)
    case teo_KE(String)
    /// Teso (Uganda)
    case teo_UG(String)
    /// Teso
    case teo(String)
    /// Thai (Thailand)
    case th_TH(String)
    /// Thai
    case th(String)
    /// Tibetan (China)
    case bo_CN(String)
    /// Tibetan (India)
    case bo_IN(String)
    /// Tibetan
    case bo(String)
    /// Tigrinya (Eritrea)
    case ti_ER(String)
    /// Tigrinya (Ethiopia)
    case ti_ET(String)
    /// Tigrinya
    case ti(String)
    /// Tonga (Tonga)
    case to_TO(String)
    /// Tonga
    case to(String)
    /// Turkish (Turkey)
    case tr_TR(String)
    /// Turkish
    case tr(String)
    /// Ukrainian (Ukraine)
    case uk_UA(String)
    /// Ukrainian
    case uk(String)
    /// Urdu (India)
    case ur_IN(String)
    /// Urdu (Pakistan)
    case ur_PK(String)
    /// Urdu
    case ur(String)
    /// Uzbek (Arabic)
    case uz_Arab(String)
    /// Uzbek (Arabic, Afghanistan)
    case uz_Arab_AF(String)
    /// Uzbek (Cyrillic)
    case uz_Cyrl(String)
    /// Uzbek (Cyrillic, Uzbekistan)
    case uz_Cyrl_UZ(String)
    /// Uzbek (Latin)
    case uz_Latn(String)
    /// Uzbek (Latin, Uzbekistan)
    case uz_Latn_UZ(String)
    /// Uzbek
    case uz(String)
    /// Vietnamese (Vietnam)
    case vi_VN(String)
    /// Vietnamese
    case vi(String)
    /// Vunjo (Tanzania)
    case vun_TZ(String)
    /// Vunjo
    case vun(String)
    /// Welsh (United Kingdom)
    case cy_GB(String)
    /// Welsh
    case cy(String)
    /// Yoruba (Nigeria)
    case yo_NG(String)
    /// Yoruba
    case yo(String)
    /// Zulu (South Africa)
    case zu_ZA(String)
    /// Zulu
    case zu(String)
    
    public var string: String {
        switch self {
        case .af_NA(let v): return v
        case .af_ZA(let v): return v
        case .af(let v): return v
        case .ak_GH(let v): return v
        case .ak(let v): return v
        case .sq_AL(let v): return v
        case .sq(let v): return v
        case .am_ET(let v): return v
        case .am(let v): return v
        case .ar_DZ(let v): return v
        case .ar_BH(let v): return v
        case .ar_EG(let v): return v
        case .ar_IQ(let v): return v
        case .ar_JO(let v): return v
        case .ar_KW(let v): return v
        case .ar_LB(let v): return v
        case .ar_LY(let v): return v
        case .ar_MA(let v): return v
        case .ar_OM(let v): return v
        case .ar_QA(let v): return v
        case .ar_SA(let v): return v
        case .ar_SD(let v): return v
        case .ar_SY(let v): return v
        case .ar_TN(let v): return v
        case .ar_AE(let v): return v
        case .ar_YE(let v): return v
        case .ar(let v): return v
        case .hy_AM(let v): return v
        case .hy(let v): return v
        case .as_IN(let v): return v
        case .`as`(let v): return v
        case .asa_TZ(let v): return v
        case .asa(let v): return v
        case .az_Cyrl(let v): return v
        case .az_Cyrl_AZ(let v): return v
        case .az_Latn(let v): return v
        case .az_Latn_AZ(let v): return v
        case .az(let v): return v
        case .bm_ML(let v): return v
        case .bm(let v): return v
        case .eu_ES(let v): return v
        case .eu(let v): return v
        case .be_BY(let v): return v
        case .be(let v): return v
        case .bem_ZM(let v): return v
        case .bem(let v): return v
        case .bez_TZ(let v): return v
        case .bez(let v): return v
        case .bn_BD(let v): return v
        case .bn_IN(let v): return v
        case .bn(let v): return v
        case .bs_BA(let v): return v
        case .bs(let v): return v
        case .bg_BG(let v): return v
        case .bg(let v): return v
        case .my_MM(let v): return v
        case .my(let v): return v
        case .yue_Hant_HK(let v): return v
        case .ca_ES(let v): return v
        case .ca(let v): return v
        case .tzm_Latn(let v): return v
        case .tzm_Latn_MA(let v): return v
        case .tzm(let v): return v
        case .chr_US(let v): return v
        case .chr(let v): return v
        case .cgg_UG(let v): return v
        case .cgg(let v): return v
        case .zh_Hans(let v): return v
        case .zh_Hans_CN(let v): return v
        case .zh_Hans_HK(let v): return v
        case .zh_Hans_MO(let v): return v
        case .zh_Hans_SG(let v): return v
        case .zh_Hant(let v): return v
        case .zh_Hant_HK(let v): return v
        case .zh_Hant_MO(let v): return v
        case .zh_Hant_TW(let v): return v
        case .zh(let v): return v
        case .kw_GB(let v): return v
        case .kw(let v): return v
        case .hr_HR(let v): return v
        case .hr(let v): return v
        case .cs_CZ(let v): return v
        case .cs(let v): return v
        case .da_DK(let v): return v
        case .da(let v): return v
        case .nl_BE(let v): return v
        case .nl_NL(let v): return v
        case .nl(let v): return v
        case .ebu_KE(let v): return v
        case .ebu(let v): return v
        case .en_AS(let v): return v
        case .en_AU(let v): return v
        case .en_BE(let v): return v
        case .en_BZ(let v): return v
        case .en_BW(let v): return v
        case .en_CA(let v): return v
        case .en_GU(let v): return v
        case .en_HK(let v): return v
        case .en_IN(let v): return v
        case .en_IE(let v): return v
        case .en_IL(let v): return v
        case .en_JM(let v): return v
        case .en_MT(let v): return v
        case .en_MH(let v): return v
        case .en_MU(let v): return v
        case .en_NA(let v): return v
        case .en_NZ(let v): return v
        case .en_MP(let v): return v
        case .en_PK(let v): return v
        case .en_PH(let v): return v
        case .en_SG(let v): return v
        case .en_ZA(let v): return v
        case .en_TT(let v): return v
        case .en_UM(let v): return v
        case .en_VI(let v): return v
        case .en_GB(let v): return v
        case .en_US(let v): return v
        case .en_ZW(let v): return v
        case .en(let v): return v
        case .eo(let v): return v
        case .et_EE(let v): return v
        case .et(let v): return v
        case .ee_GH(let v): return v
        case .ee_TG(let v): return v
        case .ee(let v): return v
        case .fo_FO(let v): return v
        case .fo(let v): return v
        case .fil_PH(let v): return v
        case .fil(let v): return v
        case .fi_FI(let v): return v
        case .fi(let v): return v
        case .fr_BE(let v): return v
        case .fr_BJ(let v): return v
        case .fr_BF(let v): return v
        case .fr_BI(let v): return v
        case .fr_CM(let v): return v
        case .fr_CA(let v): return v
        case .fr_CF(let v): return v
        case .fr_TD(let v): return v
        case .fr_KM(let v): return v
        case .fr_CG(let v): return v
        case .fr_CD(let v): return v
        case .fr_CI(let v): return v
        case .fr_DJ(let v): return v
        case .fr_GQ(let v): return v
        case .fr_FR(let v): return v
        case .fr_GA(let v): return v
        case .fr_GP(let v): return v
        case .fr_GN(let v): return v
        case .fr_LU(let v): return v
        case .fr_MG(let v): return v
        case .fr_ML(let v): return v
        case .fr_MQ(let v): return v
        case .fr_MC(let v): return v
        case .fr_NE(let v): return v
        case .fr_RW(let v): return v
        case .fr_RE(let v): return v
        case .fr_BL(let v): return v
        case .fr_MF(let v): return v
        case .fr_SN(let v): return v
        case .fr_CH(let v): return v
        case .fr_TG(let v): return v
        case .fr(let v): return v
        case .ff_SN(let v): return v
        case .ff(let v): return v
        case .gl_ES(let v): return v
        case .gl(let v): return v
        case .lg_UG(let v): return v
        case .lg(let v): return v
        case .ka_GE(let v): return v
        case .ka(let v): return v
        case .de_AT(let v): return v
        case .de_BE(let v): return v
        case .de_DE(let v): return v
        case .de_LI(let v): return v
        case .de_LU(let v): return v
        case .de_CH(let v): return v
        case .de(let v): return v
        case .el_CY(let v): return v
        case .el_GR(let v): return v
        case .el(let v): return v
        case .gu_IN(let v): return v
        case .gu(let v): return v
        case .guz_KE(let v): return v
        case .guz(let v): return v
        case .ha_Latn(let v): return v
        case .ha_Latn_GH(let v): return v
        case .ha_Latn_NE(let v): return v
        case .ha_Latn_NG(let v): return v
        case .ha(let v): return v
        case .haw_US(let v): return v
        case .haw(let v): return v
        case .he_IL(let v): return v
        case .he(let v): return v
        case .hi_IN(let v): return v
        case .hi(let v): return v
        case .hu_HU(let v): return v
        case .hu(let v): return v
        case .is_IS(let v): return v
        case .`is`(let v): return v
        case .ig_NG(let v): return v
        case .ig(let v): return v
        case .id_ID(let v): return v
        case .id(let v): return v
        case .ga_IE(let v): return v
        case .ga(let v): return v
        case .it_IT(let v): return v
        case .it_CH(let v): return v
        case .it(let v): return v
        case .ja_JP(let v): return v
        case .ja(let v): return v
        case .kea_CV(let v): return v
        case .kea(let v): return v
        case .kab_DZ(let v): return v
        case .kab(let v): return v
        case .kl_GL(let v): return v
        case .kl(let v): return v
        case .kln_KE(let v): return v
        case .kln(let v): return v
        case .kam_KE(let v): return v
        case .kam(let v): return v
        case .kn_IN(let v): return v
        case .kn(let v): return v
        case .kk_Cyrl(let v): return v
        case .kk_Cyrl_KZ(let v): return v
        case .kk(let v): return v
        case .km_KH(let v): return v
        case .km(let v): return v
        case .ki_KE(let v): return v
        case .ki(let v): return v
        case .rw_RW(let v): return v
        case .rw(let v): return v
        case .kok_IN(let v): return v
        case .kok(let v): return v
        case .ko_KR(let v): return v
        case .ko(let v): return v
        case .khq_ML(let v): return v
        case .khq(let v): return v
        case .ses_ML(let v): return v
        case .ses(let v): return v
        case .lag_TZ(let v): return v
        case .lag(let v): return v
        case .lv_LV(let v): return v
        case .lv(let v): return v
        case .lt_LT(let v): return v
        case .lt(let v): return v
        case .luo_KE(let v): return v
        case .luo(let v): return v
        case .luy_KE(let v): return v
        case .luy(let v): return v
        case .mk_MK(let v): return v
        case .mk(let v): return v
        case .jmc_TZ(let v): return v
        case .jmc(let v): return v
        case .kde_TZ(let v): return v
        case .kde(let v): return v
        case .mg_MG(let v): return v
        case .mg(let v): return v
        case .ms_BN(let v): return v
        case .ms_MY(let v): return v
        case .ms(let v): return v
        case .ml_IN(let v): return v
        case .ml(let v): return v
        case .mt_MT(let v): return v
        case .mt(let v): return v
        case .gv_GB(let v): return v
        case .gv(let v): return v
        case .mr_IN(let v): return v
        case .mr(let v): return v
        case .mas_KE(let v): return v
        case .mas_TZ(let v): return v
        case .mas(let v): return v
        case .mer_KE(let v): return v
        case .mer(let v): return v
        case .mfe_MU(let v): return v
        case .mfe(let v): return v
        case .naq_NA(let v): return v
        case .naq(let v): return v
        case .ne_IN(let v): return v
        case .ne_NP(let v): return v
        case .ne(let v): return v
        case .nd_ZW(let v): return v
        case .nd(let v): return v
        case .nb_NO(let v): return v
        case .nb(let v): return v
        case .nn_NO(let v): return v
        case .nn(let v): return v
        case .nyn_UG(let v): return v
        case .nyn(let v): return v
        case .or_IN(let v): return v
        case .or(let v): return v
        case .om_ET(let v): return v
        case .om_KE(let v): return v
        case .om(let v): return v
        case .ps_AF(let v): return v
        case .ps(let v): return v
        case .fa_AF(let v): return v
        case .fa_IR(let v): return v
        case .fa(let v): return v
        case .pl_PL(let v): return v
        case .pl(let v): return v
        case .pt_BR(let v): return v
        case .pt_GW(let v): return v
        case .pt_MZ(let v): return v
        case .pt_PT(let v): return v
        case .pt(let v): return v
        case .pa_Arab(let v): return v
        case .pa_Arab_PK(let v): return v
        case .pa_Guru(let v): return v
        case .pa_Guru_IN(let v): return v
        case .pa(let v): return v
        case .ro_MD(let v): return v
        case .ro_RO(let v): return v
        case .ro(let v): return v
        case .rm_CH(let v): return v
        case .rm(let v): return v
        case .rof_TZ(let v): return v
        case .rof(let v): return v
        case .ru_MD(let v): return v
        case .ru_RU(let v): return v
        case .ru_UA(let v): return v
        case .ru(let v): return v
        case .rwk_TZ(let v): return v
        case .rwk(let v): return v
        case .saq_KE(let v): return v
        case .saq(let v): return v
        case .sg_CF(let v): return v
        case .sg(let v): return v
        case .seh_MZ(let v): return v
        case .seh(let v): return v
        case .sr_Cyrl(let v): return v
        case .sr_Cyrl_BA(let v): return v
        case .sr_Cyrl_ME(let v): return v
        case .sr_Cyrl_RS(let v): return v
        case .sr_Latn(let v): return v
        case .sr_Latn_BA(let v): return v
        case .sr_Latn_ME(let v): return v
        case .sr_Latn_RS(let v): return v
        case .sr(let v): return v
        case .sn_ZW(let v): return v
        case .sn(let v): return v
        case .ii_CN(let v): return v
        case .ii(let v): return v
        case .si_LK(let v): return v
        case .si(let v): return v
        case .sk_SK(let v): return v
        case .sk(let v): return v
        case .sl_SI(let v): return v
        case .sl(let v): return v
        case .xog_UG(let v): return v
        case .xog(let v): return v
        case .so_DJ(let v): return v
        case .so_ET(let v): return v
        case .so_KE(let v): return v
        case .so_SO(let v): return v
        case .so(let v): return v
        case .es_AR(let v): return v
        case .es_BO(let v): return v
        case .es_CL(let v): return v
        case .es_CO(let v): return v
        case .es_CR(let v): return v
        case .es_DO(let v): return v
        case .es_EC(let v): return v
        case .es_SV(let v): return v
        case .es_GQ(let v): return v
        case .es_GT(let v): return v
        case .es_HN(let v): return v
        case .es_419(let v): return v
        case .es_MX(let v): return v
        case .es_NI(let v): return v
        case .es_PA(let v): return v
        case .es_PY(let v): return v
        case .es_PE(let v): return v
        case .es_PR(let v): return v
        case .es_ES(let v): return v
        case .es_US(let v): return v
        case .es_UY(let v): return v
        case .es_VE(let v): return v
        case .es(let v): return v
        case .sw_KE(let v): return v
        case .sw_TZ(let v): return v
        case .sw(let v): return v
        case .sv_FI(let v): return v
        case .sv_SE(let v): return v
        case .sv(let v): return v
        case .gsw_CH(let v): return v
        case .gsw(let v): return v
        case .shi_Latn(let v): return v
        case .shi_Latn_MA(let v): return v
        case .shi_Tfng(let v): return v
        case .shi_Tfng_MA(let v): return v
        case .shi(let v): return v
        case .dav_KE(let v): return v
        case .dav(let v): return v
        case .ta_IN(let v): return v
        case .ta_LK(let v): return v
        case .ta(let v): return v
        case .te_IN(let v): return v
        case .te(let v): return v
        case .teo_KE(let v): return v
        case .teo_UG(let v): return v
        case .teo(let v): return v
        case .th_TH(let v): return v
        case .th(let v): return v
        case .bo_CN(let v): return v
        case .bo_IN(let v): return v
        case .bo(let v): return v
        case .ti_ER(let v): return v
        case .ti_ET(let v): return v
        case .ti(let v): return v
        case .to_TO(let v): return v
        case .to(let v): return v
        case .tr_TR(let v): return v
        case .tr(let v): return v
        case .uk_UA(let v): return v
        case .uk(let v): return v
        case .ur_IN(let v): return v
        case .ur_PK(let v): return v
        case .ur(let v): return v
        case .uz_Arab(let v): return v
        case .uz_Arab_AF(let v): return v
        case .uz_Cyrl(let v): return v
        case .uz_Cyrl_UZ(let v): return v
        case .uz_Latn(let v): return v
        case .uz_Latn_UZ(let v): return v
        case .uz(let v): return v
        case .vi_VN(let v): return v
        case .vi(let v): return v
        case .vun_TZ(let v): return v
        case .vun(let v): return v
        case .cy_GB(let v): return v
        case .cy(let v): return v
        case .yo_NG(let v): return v
        case .yo(let v): return v
        case .zu_ZA(let v): return v
        case .zu(let v): return v
        }
    }
    
    public enum ValueType {
        case short, long
    }
    
    public var type: ValueType {
        return string.components(separatedBy: "_").count == 0 ? .short : .long
    }
    
    public var language: Language {
        switch self {
        case .af: return .af
        case .ak: return .ak
        case .sq: return .sq
        case .am: return .am
        case .ar: return .ar
        case .hy: return .hy
        case .as: return .as
        case .asa: return .asa
        case .az: return .az
        case .bm: return .bm
        case .eu: return .eu
        case .be: return .be
        case .bem: return .bem
        case .bez: return .bez
        case .bn: return .bn
        case .bs: return .bs
        case .bg: return .bg
        case .my: return .my
        case .cgg: return .cgg
        case .zh: return .zh
        case .kw: return .kw
        case .hr: return .hr
        case .cs: return .cs
        case .da: return .da
        case .nl: return .nl
        case .ebu: return .ebu
        case .en: return .en
        case .eo: return .eo
        case .et: return .et
        case .ee: return .ee
        case .fo: return .fo
        case .fil: return .fil
        case .fi: return .fi
        case .fr: return .fr
        case .ff: return .ff
        case .gl: return .gl
        case .lg: return .lg
        case .ka: return .ka
        case .de: return .de
        case .el: return .el
        case .gu: return .gu
        case .ha: return .ha
        case .haw: return .haw
        case .he: return .he
        case .hi: return .hi
        case .hu: return .hu
        case .`is`: return .`is`
        case .ig: return .ig
        case .id: return .id
        case .ga: return .ga
        case .it: return .it
        case .ja: return .ja
        case .kea: return .kea
        case .kab: return .kab
        case .kl: return .kl
        case .kln: return .kln
        case .kam: return .kam
        case .kn: return .kn
        case .kk: return .kk
        case .km: return .km
        case .ki: return .ki
        case .rw: return .rw
        case .kok: return .kok
        case .ko: return .ko
        case .khq: return .khq
        case .ses: return .ses
        case .lag: return .lag
        case .lv: return .lv
        case .lt: return .lt
        case .luo: return .luo
        case .luy: return .luy
        case .mk: return .mk
        case .jmc: return .jmc
        case .kde: return .kde
        case .mg: return .mg
        case .ml: return .ml
        case .mt: return .mt
        case .gv: return .gv
        case .mr: return .mr
        case .mas: return .mas
        case .mer: return .mer
        case .mfe: return .mfe
        case .naq: return .naq
        case .ne: return .ne
        case .nd: return .nd
        case .nb: return .nb
        case .nn: return .nn
        case .nyn: return .nyn
        case .or: return .or
        case .om: return .om
        case .ps: return .ps
        case .fa: return .fa
        case .pl: return .pl
        case .pt: return .pt
        case .pa: return .pa
        case .ro: return .ro
        case .rm: return .rm
        case .ru: return .ru
        case .saq: return .saq
        case .sg: return .sg
        case .sr: return .sr
        case .sk: return .sk
        case .sl: return .sl
        case .xog: return .xog
        case .so: return .so
        case .es: return .es
        case .sw: return .sw
        case .sv: return .sv
        case .gsw: return .gsw
        case .shi: return .shi
        case .vun: return .vun
        case .cy: return .cy
        case .yo: return .yo
        case .zu: return .zu
        default: return .en
        }
    }

    public init(_ string: String, language: Language) {
        switch language {
        case .af: self = .af(string)
        case .ak: self = .ak(string)
        case .sq: self = .sq(string)
        case .am: self = .am(string)
        case .ar: self = .ar(string)
        case .hy: self = .hy(string)
        case .as: self = .as(string)
        case .asa: self = .asa(string)
        case .az: self = .az(string)
        case .bm: self = .bm(string)
        case .eu: self = .eu(string)
        case .be: self = .be(string)
        case .bem: self = .bem(string)
        case .bez: self = .bez(string)
        case .bn: self = .bn(string)
        case .bs: self = .bs(string)
        case .bg: self = .bg(string)
        case .ca: self = .ca(string)
        case .chr: self = .chr(string)
        case .cgg: self = .cgg(string)
        case .zh: self = .zh(string)
        case .hr: self = .hr(string)
        case .cs: self = .cs(string)
        case .da: self = .da(string)
        case .nl: self = .nl(string)
        case .ebu: self = .ebu(string)
        case .en: self = .en(string)
        case .eo: self = .eo(string)
        case .et: self = .et(string)
        case .ee: self = .ee(string)
        case .fo: self = .fo(string)
        case .fil: self = .fil(string)
        case .fr: self = .fr(string)
        case .ff: self = .ff(string)
        case .gl: self = .gl(string)
        case .ka: self = .ka(string)
        case .de: self = .de(string)
        case .el: self = .el(string)
        case .gu: self = .gu(string)
        case .guz: self = .guz(string)
        case .ha: self = .ha(string)
        case .haw: self = .haw(string)
        case .he: self = .he(string)
        case .hi: self = .hi(string)
        case .hu: self = .hu(string)
        case .is: self = .is(string)
        case .id: self = .id(string)
        case .ga: self = .ga(string)
        case .it: self = .it(string)
        case .ja: self = .ja(string)
        case .kea: self = .kea(string)
        case .kab: self = .kab(string)
        case .kl: self = .kl(string)
        case .kln: self = .kln(string)
        case .kam: self = .kam(string)
        case .kn: self = .kn(string)
        case .kk: self = .kk(string)
        case .km: self = .km(string)
        case .rw: self = .rw(string)
        case .kok: self = .kok(string)
        case .ko: self = .ko(string)
        case .khq: self = .khq(string)
        case .ses: self = .ses(string)
        case .lag: self = .lag(string)
        case .lv: self = .lv(string)
        case .lt: self = .lt(string)
        case .luo: self = .luo(string)
        case .luy: self = .luy(string)
        case .mk: self = .mk(string)
        case .jmc: self = .jmc(string)
        case .kde: self = .kde(string)
        case .mg: self = .mg(string)
        case .ms: self = .ms(string)
        case .ml: self = .ml(string)
        case .mt: self = .mt(string)
        case .gv: self = .gv(string)
        case .mr: self = .mr(string)
        case .mas: self = .mas(string)
        case .mer: self = .mer(string)
        case .mfe: self = .mfe(string)
        case .naq: self = .naq(string)
        case .ne: self = .ne(string)
        case .nd: self = .nd(string)
        case .nb: self = .nb(string)
        case .nn: self = .nn(string)
        case .nyn: self = .nyn(string)
        case .or: self = .or(string)
        case .om: self = .om(string)
        case .ps: self = .ps(string)
        case .fa: self = .fa(string)
        case .pl: self = .pl(string)
        case .pt: self = .pt(string)
        case .pa: self = .pa(string)
        case .ro: self = .ro(string)
        case .rm: self = .rm(string)
        case .rof: self = .rof(string)
        case .ru: self = .ru(string)
        case .saq: self = .saq(string)
        case .sg: self = .sg(string)
        case .seh: self = .seh(string)
        case .sr: self = .sr(string)
        case .sn: self = .sn(string)
        case .si: self = .si(string)
        case .sk: self = .sk(string)
        case .sl: self = .sl(string)
        case .xog: self = .xog(string)
        case .so: self = .so(string)
        case .es: self = .es(string)
        case .sv: self = .sv(string)
        case .ta: self = .ta(string)
        case .te: self = .te(string)
        case .teo: self = .teo(string)
        case .th: self = .th(string)
        case .bo: self = .bo(string)
        case .ti: self = .ti(string)
        case .to: self = .to(string)
        case .tr: self = .tr(string)
        case .uk: self = .uk(string)
        case .ur: self = .ur(string)
        case .uz: self = .uz(string)
        case .vi: self = .vi(string)
        case .vun: self = .vun(string)
        case .cy: self = .cy(string)
        case .yo: self = .yo(string)
        case .zu: self = .zu(string)
        default: self = .en(string)
        // Add a default case or handle potential mismatches if Language enum
        // doesn't perfectly align with LocalizedString cases.
        // For now, assuming a direct mapping exists for all Language cases.
        // If Language enum might contain cases not present here, 
        // this init should be failable (`init?`) or throw an error.
        }
    }
}
