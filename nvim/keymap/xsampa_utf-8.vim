" Vim Keymap file for X-SAMPA
" Maintainer: Tristan Armitage <armitageth@gmail.com>

let b:keymap_name = "xsp"
loadkeymap
" PUNCTUATION MARKS - SYMBOLS (GREEK SPECIFIC)
"
" E$	<char-0x20AC>  " EURO SIGN
" >>	<char-0x00BB>  " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK [GREEK
" CONSONANTS
a   <char-0x0061>  " open front unrounded vowel
b   <char-0x0062>  " voiced bilabial plosive
;b, <char-0x0253>  " voiced bilabial implosive
c   <char-0x0063>  " voiceless palatal plosive
d   <char-0x0064>  " voiced alveolar plosive
;d' <char-0x0256>  " voiced retroflex plosive
;d, <char-0x0257>  " voiced alveolar implosive
e   <char-0x0065>  " close-mid front unrounded vowel
f   <char-0x0066>  " voiceless labiodental fricative
;g  <char-0x0261>  " voiced velar plosive
;g, <char-0x0260>  " voiced velar implosive
h   <char-0x0068>  " voiceless glottal fricative
;h; <char-0x0266>  " voiced glottal fricative
i   <char-0x0069>  " close front unrounded vowel
j   <char-0x006A>  " palatal approximant
;j; <char-0x029D>  " voiced palatal fricative
k   <char-0x006B>  " voiceless velar plosive
l   <char-0x006C>  " alveolar lateral approximant
;l' <char-0x026D>  " retroflex lateral approximant
;l; <char-0x027A>  " alveolar lateral flap
m   <char-0x006D>  " bilabial nasal
n   <char-0x006E>  " alveolar nasal
;n' <char-0x0273>  " retroflex nasal
o   <char-0x006F>  " close-mid back rounded vowel
p   <char-0x0070>  " voiceless bilabial plosive
;p; <char-0x0278>  " voiceless bilabial fricative
q   <char-0x0071>  " voiceless uvular plosive
r   <char-0x0072>  " alveolar trill
;r' <char-0x027D>  " retroflex flap
;r; <char-0x0279>  " alveolar approximant
;r;'    <char-0x027B>  " retroflex approximant
s   <char-0x0073>  " voiceless alveolar fricative
;s' <char-0x0282>  " voiceless retroflex fricative
;s; <char-0x0255>  " voiceless alveolo-palatal fricative
t   <char-0x0074>  " voiceless alveolar plosive
;t' <char-0x0288>  " voiceless retroflex plosive
u   <char-0x0075>  " close back rounded vowel
v   <char-0x0076>  " voiced labiodental fricative
;v; <char-0x028B>  " labiodental approximant
w   <char-0x0077>  " labial-velar approximant
x   <char-0x0078>  " voiceless velar fricative
;x; <char-0x0267>  " voiceless palatal-velar fricative
y   <char-0x0079>  " close front rounded vowel
z   <char-0x007A>  " voiced alveolar fricative
;z' <char-0x0290>  " voiced retroflex fricative
;z; <char-0x0291>  " voiced alveolo-palatal fricative
;A  <char-0x0251>  " open back unrounded vowel
;B  <char-0x03B2>  " voiced bilabial fricative
;B; <char-0x0299>  " bilabial trill
;C  <char-0x00E7>  " voiceless palatal fricative
;D  <char-0x00F0>  " voiced dental fricative
;E  <char-0x025B>  " open-mid front unrounded vowel
;F  <char-0x0271>  " labiodental nasal
;G  <char-0x0263>  " voiced velar fricative
;G; <char-0x0262>  " voiced uvular plosive
;G;,    <char-0x029B>  " voiced uvular implosive
;H  <char-0x0265>  " labial-palatal approximant
;H; <char-0x029C>  " voiceless epiglottal fricative
;I  <char-0x026A>  " near-close front unrounded vowel
" ;I; <char-0x0>  " near-close central unrounded vowel (non-IPA)
;J  <char-0x0272>  " palatal nasal
;J; <char-0x025F>  " voiced palatal plosive
;J;,   <char-0x0284>  " voiced palatal implosive
;K  <char-0x026C>  " voiceless alveolar lateral fricative
;K; <char-0x026E>  " voiced alveolar lateral fricative
;L  <char-0x028E>  " palatal lateral approximant
;L; <char-0x029F>  " velar lateral approximant
;M  <char-0x026F>  " close back unrounded vowel
;M; <char-0x0270>  " velar approximant
;N  <char-0x014B>  " velar nasal
;N; <char-0x0274>  " uvular nasal
;O  <char-0x0254>  " open-mid back rounded vowel
;O; <char-0x0298>  " bilabial click
;P  <char-0x028B>  " labiodental approximant
;Q  <char-0x0252>  " open back rounded vowel
;R  <char-0x0281>  " voiced uvular fricative
;R; <char-0x0280>  " uvular trill
;S  <char-0x0283>  " voiceless postavleolar fricative
;T  <char-0x03B8>  " voiceless dental fricative
;U  <char-0x028A>  " near-close back rounded vowel
" ;U; <char-0x0>  " near-close central rounded vowel (non-IPA)
;V  <char-0x028C>  " open-mid back unrounded vowel
;W  <char-0x028D>  " voiceless labial-velar approximant
;X  <char-0x03C7>  " voiceless uvular fricative
;X; <char-0x0127>  " voiceless pharyngeal fricative
;Y  <char-0x028F>  " near-close front rounded vowel
;Z  <char-0x0292>  " voiced postalveolar fricative

;"  <char-0x02C8>  # primary stress
;%  <char-0x02CC>  " secondary stress
;:  <char-0x02D0>  " lonɡ
;:; <char-0x02D1>  " half lonɡ
;@  <char-0x0259>  " schwa
;@; <char-0x0258>  " close-mid central unrounded vowel
;@' <char-0x025A>  " r-colored schwa
;[  <char-0x00E6>  " near-open front unrounded vowel
;]  <char-0x0289>  " close central rounded vowel
;1  <char-0x0268>  " close central unrounded vowel
;2  <char-0x00F8>  " close-mid front rounded vowel
;3  <char-0x025C>  " open-mid central unrounded vowel
;3; <char-0x025E>  " open-mid central rounded vowel
;4  <char-0x027E>  " alveolar flap
;5  <char-0x026B>  " velarized alveolar lateral approximant
;6  <char-0x0250>  " near-open central vowel
;7  <char-0x0264>  " close-mid back unrounded vowel
;8  <char-0x0275>  " close-mid central rounded vowel
;9  <char-0x0153>  " open-mid front rounded vowel
;&  <char-0x0276>  " open front rounded vowel
;?  <char-0x0294>  " ɡlottal stop
;?; <char-0x0295>  " voiced pharynɡeal fricative
;<; <char-0x02A2>  " voiced epiɡlottal fricative
;>; <char-0x02A1>  " epiɡlottal plosive
;^  <char-0xA71B>  " upstep
;!  <char-0xA71C>  " downstep
;!; <char-0x01C3>  " postalveolar click
;|; <char-0x01C0>  " dental click
;|| <char-0x01C1>  " alveolar lateral click
;=; <char-0x01C2>  " palatal click
;+; <char-0x0361>  " linkinɡ mark above
;-; <char-0x035C>  " linkinɡ mark below
;^k <char-0x1D4F>  " superscript k
;^n <char-0x207F>  " superscript n
;^m <char-0x1D50>  " superscript m
;^N <char-0x1D51>  " superscript ŋ
;^? <char-0x02C0>  " superscript ʔ
;^T <char-0x1DBF>  " superscript θ
;^D <char-0x1D9E>  " superscript ð
;0  <char-0x2205>  " null sign ∅

" COMBINING DIACRITICS
;_" <char-0x0308>  # centralized
;_0 <char-0x0325>  " voiceless
;_> <char-0x02BC>  " ejective
;_] <char-0x031A>  " no audible release
;~  <char-0x0303>  " nasalization
;_d <char-0x032A>  " dental diacritic
;_G <char-0x02E0>  " velarized
;_h <char-0x02B0>  " aspirated
;_H <char-0x02B1>  " breathy voice
;_~ <char-0x02F7>  " creaky voice
;_j <char-0x02B2>  " palatalization
;'  <char-0x02B2>  " palatalization
;_w <char-0x02B7>  " labialized
;_L <char-0x02E1>  " lateral release
;_` <char-0x0300>  " grave mark
;`  <char-0x0301>  " acute mark
;_v <char-0x030C>  " caron
;_u <char-0x032F>  " non-syllabic mark
;_a <char-0x033A>  " apical mark
;_l <char-0x033B>  " laminal mark
;_;H    <char-0x0324>  " combining breathy voice
;_;~    <char-0x0330>  " compbinig creaky voice
->  <char-0x2192>
;_' <char-0x0329>  " syllabic consonant below
;_;'    <char-0x030D>  " syllabic consonant above
