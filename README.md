# Tokyo train stations API

The data base only lists train stations within the borders of Tokyo prefecture (23 special wards and cities).
The list was populated with open information from [Association for Open Data of Public Transportation](http://www.odpt.org/) using the query https://api-tokyochallenge.odpt.org/api/v4/odpt:Station
For translating the kanji names into kana and romaji the [miyabi](https://github.com/isy/miyabi) and [romaji](https://github.com/makimoto/romaji) gems were implemented. 
Since the translation of proper names from kanji to kana or romaji are sometimes unaquarate some manual effort was done.
Some of the lines have an icon included taken from [Media Wiki](https://www.mediawiki.org/wiki/API:Main_page)
## base URL
`https://tokyo-stations-api.herokuapp.com//api/v1/`
## Usage
## Stations
#### Get the full list of stations
Endpoint to retrieve information from all the stations listed.
```
/api/v1/stations
```
#### Get search results
```
/api/v1/stations?query=:station
```
eg. [`/api/v1/stations?query=shibuya`](https://tokyo-stations-api.herokuapp.com/api/v1/stations?query=shibuya)
```json
[
  {
    "name_kanji": "渋谷",
    "name_kana": "しぶや",
    "name_romaji": "Shibuya",
    "lat": 35.658871,
    "lon": 139.701238,
    "lines_code": [
      "JR-East.Yamanote",
      "JR-East.SaikyoKawagoe",
      "JR-East.ShonanShinjuku",
      "Keio.Inokashira",
      "TokyoMetro.Ginza",
      "TokyoMetro.Hanzomon",
      "TokyoMetro.Fukutoshin"
    ],
    "address": "JR Shibuya Station, Meiji-dori Avenue, Hiroo 1-chome, Shibuya 3-chome, Shibuya, Tokyo, 150-8510, Japan"
  }
]
```
You can also search a station by its name in japanese (kanji or kana).

## Lines
#### Get the full list of lines.
```
/api/v1/lines
```
#### Get search results
```
/api/v1/stations?query=:line
```
eg. [`/api/v1/stations?query=:shibuya`](https://tokyo-stations-api.herokuapp.com/api/v1/stations?query=yamanote)
```json
[
  {
    "name_romaji": "Yamanote Line",
    "name_kanji": "山手線",
    "name_kana": "やまのてせん",
    "line_code": "JR-East.Yamanote",
    "icon": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/JR_JY_line_symbol.svg/28px-JR_JY_line_symbol.svg.png",
    "stations": [
      {
        "name_kanji": "東京",
        "name_kana": "とうきょう",
        "name_romaji": "Toukyou"
      },
      {
        "name_kanji": "新橋",
        "name_kana": "しんばし",
        "name_romaji": "Shimbashi"
      },
      {
        "name_kanji": "品川",
        "name_kana": "しながわ",
        "name_romaji": "Shinagawa"
      },
      {
        "name_kanji": "大崎",
        "name_kana": "おおさき",
        "name_romaji": "Oosaki"
      },
      {
        "name_kanji": "五反田",
        "name_kana": "ごたんだ",
        "name_romaji": "Gotanda"
      },
      {
        "name_kanji": "目黒",
        "name_kana": "めぐろ",
        "name_romaji": "Meguro"
      },
      {
        "name_kanji": "恵比寿",
        "name_kana": "えびす",
        "name_romaji": "Ebisu"
      },
      {
        "name_kanji": "渋谷",
        "name_kana": "しぶや",
        "name_romaji": "Shibuya"
      },
      {
        "name_kanji": "代々木",
        "name_kana": "よよぎ",
        "name_romaji": "Yoyogi"
      },
      {
        "name_kanji": "新宿",
        "name_kana": "しんじゅく",
        "name_romaji": "Shinjuku"
      },
      {
        "name_kanji": "新大久保",
        "name_kana": "しんおおくぼ",
        "name_romaji": "Shinookubo"
      },
      {
        "name_kanji": "高田馬場",
        "name_kana": "たかだのばば",
        "name_romaji": "Takadanobaba"
      },
      {
        "name_kanji": "目白",
        "name_kana": "めじろ",
        "name_romaji": "Mejiro"
      },
      {
        "name_kanji": "池袋",
        "name_kana": "いけぶくろ",
        "name_romaji": "Ikebukuro"
      },
      {
        "name_kanji": "大塚",
        "name_kana": "おおつか",
        "name_romaji": "Ootsuka"
      },
      {
        "name_kanji": "巣鴨",
        "name_kana": "すがも",
        "name_romaji": "Sugamo"
      },
      {
        "name_kanji": "駒込",
        "name_kana": "こまごめ",
        "name_romaji": "Komagome"
      },
      {
        "name_kanji": "田端",
        "name_kana": "たばた",
        "name_romaji": "Tabata"
      },
      {
        "name_kanji": "西日暮里",
        "name_kana": "にしにっぽり",
        "name_romaji": "Nishinippori"
      },
      {
        "name_kanji": "日暮里",
        "name_kana": "にっぽり",
        "name_romaji": "Nippori"
      },
      {
        "name_kanji": "鶯谷",
        "name_kana": "うぐいすだに",
        "name_romaji": "Uguisudani"
      },
      {
        "name_kanji": "上野",
        "name_kana": "うえの",
        "name_romaji": "Ueno"
      },
      {
        "name_kanji": "御徒町",
        "name_kana": "おかちまち",
        "name_romaji": "Okachimachi"
      },
      {
        "name_kanji": "秋葉原",
        "name_kana": "あきはばら",
        "name_romaji": "Akihabara"
      },
      {
        "name_kanji": "神田",
        "name_kana": "かんだ",
        "name_romaji": "Kanda"
      },
      {
        "name_kanji": "有楽町",
        "name_kana": "ゆうらくちょう",
        "name_romaji": "Yuurakuchou"
      },
      {
        "name_kanji": "浜松町",
        "name_kana": "はままつちょう",
        "name_romaji": "Hamamatsuchou"
      },
      {
        "name_kanji": "田町",
        "name_kana": "たまち",
        "name_romaji": "Tamachi"
      },
      {
        "name_kanji": "原宿(明治神宮前)",
        "name_kana": "はらじゅく(めいじじんぐうまえ)",
        "name_romaji": "Harajuku (Meijijinguumae)"
      },
      {
        "name_kanji": "高輪ゲートウェイ",
        "name_kana": "たかなわゲートウェイ",
        "name_romaji": "Takanawa Gateway"
      }
    ]
  }
]
```
### Notes

/!\ Some translations might not be aqcuarate.
