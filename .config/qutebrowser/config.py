
## Documentation:
##   qute://help/configuring.html
##   qute://help/settings.html

## General settings
config.load_autoconfig(True)
c.colors.webpage.darkmode.enabled = False
c.content.autoplay = False
c.content.blocking.method = 'both'
c.content.canvas_reading = False
c.content.geolocation = False
c.content.javascript.can_access_clipboard = True
c.content.notifications.enabled = False
c.content.tls.certificate_errors = 'ask-block-thirdparty'
c.content.webgl = False
c.downloads.location.directory = '~/'
c.downloads.remove_finished = 10000
c.statusbar.show = 'in-mode'
c.tabs.last_close = 'close'
c.tabs.show = 'switching'

## Font config
c.fonts.hints = '9pt JetBrainsMono'
c.fonts.keyhint = '9pt JetBrainsMono'
c.fonts.prompts = '9pt JetBrainsMono'
c.fonts.downloads = '9pt JetBrainsMono'
c.fonts.statusbar = '9pt JetBrainsMono'
c.fonts.contextmenu = '9pt JetBrainsMono'
c.fonts.messages.info = '9pt JetBrainsMono'
c.fonts.debug_console = '9pt JetBrainsMono'
c.fonts.completion.entry = '9pt JetBrainsMono'
c.fonts.completion.category = '9pt JetBrainsMono'

## Home page
c.url.start_pages = ['qute://bookmarks/']
c.url.default_page = 'qute://bookmarks/'

## Spell checking - /usr/share/qutebrowser/scripts/dictcli.py install en-GB
c.spellcheck.languages = ["en-GB"]

## Ad-blocking
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.content.blocking.adblock.lists = [ # https://filterlists.com/
    'https://curben.gitlab.io/malware-filter/urlhaus-filter-online.txt',
    'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt',
    'https://easylist.to/easylist/easylist.txt',
    'https://easylist.to/easylist/easyprivacy.txt',
    'https://easylist.to/easylist/fanboy-annoyance.txt',
    'https://easylist.to/easylist/fanboy-social.txt',
    'https://fanboy.co.nz/fanboy-antifacebook.txt',
    'https://fanboy.co.nz/fanboy-cookiemonster.txt',
    'https://fanboy.co.nz/fanboy-problematic-sites.txt',
    'https://filters.adtidy.org/extension/ublock/filters/14.txt',
    'https://filters.adtidy.org/extension/ublock/filters/4.txt',
    'https://gitcdn.xyz/repo/NanoAdblocker/NanoFilters/master/NanoFilters/NanoBase.txt',
    'https://gitcdn.xyz/repo/NanoAdblocker/NanoFilters/master/NanoMirror/NanoDefender.txt',
    'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblock',
    'https://pub.minskio.co.uk/adblock.txt',
    'https://raw.githubusercontent.com/bogachenko/fuckfuckadblock/master/fuckfuckadblock.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt',
    'https://raw.githubusercontent.com/yourduskquibbles/webannoyances/master/ultralist.txt',
    'https://secure.fanboy.co.nz/fanboy-annoyance.txt',
    'https://secure.fanboy.co.nz/fanboy-annoyance_ubo.txt',
    'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt',
    'https://www.i-dont-care-about-cookies.eu/abp/'
    ]

## Search engines
c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '*': 'https://www.startpage.com/do/metasearch.pl?query={}',
        '2m': 'https://eth.2miners.com/account/{}',
        'a': 'https://www.amazon.co.uk/s?k={}',
        'alp': 'https://pkgs.alpinelinux.org/packages?name={}&branch=edge&arch=x86_64',
        'ap': 'https://www.archlinux.org/packages/?sort=&q={}',
        'apk': 'https://apk-dl.com/{}',
        'arc': 'https://web.archive.org/web/*/{}',
        'aur': 'https://aur.archlinux.org/packages/?O=0&K={}',
        'aw': 'https://wiki.archlinux.org/index.php?search={}&title=Special%3ASearch',
        'b': 'http://bugmenot.com/view/{}',
        ## 'ban': 'TODO // coingecko?',
        'banw': 'https://creeper.banano.cc/explorer/account/{}',
        'bok': 'https://b-ok.xyz/s/{}',
        'btc': 'https://currencio.co/btc/gbp/{}/',
        'btcw': 'https://www.blockchain.com/btc/address/{}',
        'cb': 'https://comicvine.gamespot.com/search/?q={}',
        'choco': 'https://chocolatey.org/packages?q={}',
        'crm': 'http://10.32.2.10/suitecrm/index.php?action=UnifiedSearch&module=Home&search_form=false&advanced=false&query_string={}',
        'cron': 'https://crontab.guru/#{}',
        'd': 'https://start.duckduckgo.com/?q={}',
        'deb': 'https://packages.debian.org/{}',
        'dock': 'https://hub.docker.com/search/?pullCount=1&q={}',
        'domain': 'https://shop.gandi.net/en/domain/suggest?search={}',
        'down': 'https://downforeveryoneorjustme.com/{}',
        'e': 'https://www.ebay.co.uk/sch/i.html?_nkw={}',
        'eco': 'https://www.ecosia.org/search?q={}',
        'f': 'https://search.f-droid.org/?q={}&lang=en',
        'g': 'https://www.google.co.uk/search?q={}',
        'gamma': 'https://www.gamma-portal.com/voip/ipdc/searchInput.jspa#{}',
        'ge': 'https://www.ge-tracker.com/names/{}',
        'gf': 'https://gamefaqs.gamespot.com/search?game={}',
        'gist': 'https://gist.github.com/search?utf8=%E2%9C%93&q={}',
        'git': 'https://github.com/search?q={}',
        'gl': 'https://www.google.co.uk/search?btnI=1&q={}',
        'gm': 'https://www.google.co.uk/maps/search/{}',
        'gog': 'https://www.gog.com/games?search={}',
        'gr': 'https://www.goodreads.com/search?utf8=%E2%9C%93&query={}',
        'i': 'https://www.google.co.uk/search?tbm=isch&q={}',
        'im': 'https://www.imdb.com/find?ref_=nv_sr_fn&s=all&q={}',
        'ip': 'https://www.ip2location.com/demo/{}',
        'iu': 'https://www.google.co.uk/searchbyimage?site=search&image_url={}',
        'jack': 'https://jack.minskio.co.uk/UI/Dashboard#search={}',
        'js': 'https://greasyfork.org/en/scripts?q={}',
        'last': 'https://www.last.fm/search?q={}',
        'lib': 'https://libgen.fun/foreignfiction/index.php?s=+{}',
        'lut': 'https://lutris.net/games?q={}',
        'm': 'https://wego.here.com/search/{}',
        'mac': 'https://api.macvendors.com/{}',
        'mb': 'https://musicbrainz.org/search?type=artist&limit=25&method=indexed&query={}',
        'mx': 'https://mxtoolbox.com/SuperTool.aspx?action={}',
        'nano': 'https://currencio.co/nano/gbp/{}/',
        'nanow': 'https://nanocrawler.cc/explorer/account/{}',
        'no': 'https://enno.dict.cc/?s={}',
        'nyaa': 'https://nyaa.net/search?c=_&q={}',
        'osm': 'https://www.openstreetmap.org/search?query={}',
        'osrs': 'https://oldschool.runescape.wiki/?title=Special%3ASearch&search={}',
        'pc': 'https://pcgamingwiki.com/w/index.php?search={}&title=Special%3ASearch',
        'plus': 'https://partner.plus.net/account/search?strType=ENDUSER_LOOKUP&strCriteria={}',
        'proton': 'https://protondb.com/search?q={}',
        'rfc': 'https://tools.ietf.org/html/rfc{}',
        'rshs': 'https://secure.runescape.com/m=hiscore_oldschool/hiscorepersonal?user1={}',
        'rt': 'https://www.rottentomatoes.com/search/?search={}',
        's': 'https://search.privacytools.io/searx/?q={}',
        'ss': 'https://steamspy.com/search.php?s={}',
        'st': 'https://store.steampowered.com/search/?term={}',
        't': 'https://tineye.com/parse?url={}',
        'tg': 'https://thegamesdb.net/search.php?name={}',
        'tm': 'https://www.themoviedb.org/search?query={}',
        'tmt': 'https://www.themoviedb.org/search/tv?query={}',
        'tor': 'https://iknowwhatyoudownload.com/en/peer/?ip={}',
        'tr': 'https://translate.yandex.com/?lang=no-en&text={}',
        'tv': 'https://www.thetvdb.com/search?query={}',
        'tvt': 'https://tvtropes.org/pmwiki/search_result.php?q={}',
        'ud': 'https://www.urbandictionary.com/define.php?term={}',
        'valid': 'https://validator.w3.org/nu/?doc={}',
        'w': 'https://en.wikipedia.org/w/index.php?search={}&title=Special:Search',
        'w3w': 'https://what3words.com/{}',
        'wa': 'https://www.wolframalpha.com/input/?i={}',
        'whois': 'https://whois.gandi.net/en/results?search={}',
        'wine': 'https://www.winehq.org/search?q={}',
        'wno': 'https://no.wikipedia.org/w/index.php?search={}&title=Special:Search',
        'wt': 'https://en.wiktionary.org/w/index.php?search={}&title=Special:Search',
        'wtno': 'https://no.wiktionary.org/w/index.php?search={}&title=Special:Search',
        'xlm': 'https://currencio.co/xlm/gbp/{}/',
        'xlmw': 'https://stellarchain.io/address/{}',
        'xmr': 'https://currencio.co/xmr/gbp/{}/',
        'y': 'https://www.youtube.com/results?search_query={}'
        }

## Key bindings
config.bind(',M', 'hint links spawn mpv {hint-url}' )
config.bind(',m', 'spawn mpv {url}')
config.bind('<Alt-Left>', 'back')
config.bind('<Alt-Right>', 'forward')
config.bind('<Ctrl-Q>', 'tab-close')
config.bind('<Ctrl-Shift-Tab>', 'tab-prev')
config.bind('<Ctrl-Tab>', 'tab-next')
config.bind('<Ctrl+->', 'zoom-out')
config.bind('<Ctrl+=>', 'zoom-in')
config.bind('<Ctrl+0>', 'zoom')
config.bind('d', 'nop')
config.bind('dd', 'tab-close')
config.bind('q', 'nop')
config.bind('t', 'config-cycle tabs.show always switching ;; config-cycle statusbar.show always in-mode')

## Aliases
c.aliases = {
        'o': 'open',
        'q': 'tab-close'
        }

# Base16 qutebrowser template by theova (https://github.com/theova/base16-qutebrowser)
c.colors.completion.category.bg = "#181818"
c.colors.completion.category.border.bottom = "#181818"
c.colors.completion.category.border.top = "#181818"
c.colors.completion.category.fg = "#f7ca88"
c.colors.completion.even.bg = "#181818"
c.colors.completion.fg = "#d8d8d8"
c.colors.completion.item.selected.bg = "#383838"
c.colors.completion.item.selected.border.bottom = "#383838"
c.colors.completion.item.selected.border.top = "#383838"
c.colors.completion.item.selected.fg = "#d8d8d8"
c.colors.completion.item.selected.match.fg = "#a1b56c"
c.colors.completion.match.fg = "#a1b56c"
c.colors.completion.odd.bg = "#282828"
c.colors.completion.scrollbar.bg = "#181818"
c.colors.completion.scrollbar.fg = "#d8d8d8"
c.colors.contextmenu.disabled.bg = "#282828"
c.colors.contextmenu.disabled.fg = "#b8b8b8"
c.colors.contextmenu.menu.bg = "#181818"
c.colors.contextmenu.menu.fg =  "#d8d8d8"
c.colors.contextmenu.selected.bg = "#383838"
c.colors.contextmenu.selected.fg = "#d8d8d8"
c.colors.downloads.bar.bg = "#181818"
c.colors.downloads.error.fg = "#ab4642"
c.colors.downloads.start.bg = "#7cafc2"
c.colors.downloads.start.fg = "#181818"
c.colors.downloads.stop.bg = "#86c1b9"
c.colors.downloads.stop.fg = "#181818"
c.colors.hints.bg = "#f7ca88"
c.colors.hints.fg = "#181818"
c.colors.hints.match.fg = "#d8d8d8"
c.colors.keyhint.bg = "#181818"
c.colors.keyhint.fg = "#d8d8d8"
c.colors.keyhint.suffix.fg = "#d8d8d8"
c.colors.messages.error.bg = "#ab4642"
c.colors.messages.error.border = "#ab4642"
c.colors.messages.error.fg = "#181818"
c.colors.messages.info.bg = "#181818"
c.colors.messages.info.border = "#181818"
c.colors.messages.info.fg = "#d8d8d8"
c.colors.messages.warning.bg = "#ba8baf"
c.colors.messages.warning.border = "#ba8baf"
c.colors.messages.warning.fg = "#181818"
c.colors.prompts.bg = "#181818"
c.colors.prompts.border = "#181818"
c.colors.prompts.fg = "#d8d8d8"
c.colors.prompts.selected.bg = "#383838"
c.colors.prompts.selected.fg = "#d8d8d8"
c.colors.statusbar.caret.bg = "#ba8baf"
c.colors.statusbar.caret.fg = "#181818"
c.colors.statusbar.caret.selection.bg = "#7cafc2"
c.colors.statusbar.caret.selection.fg = "#181818"
c.colors.statusbar.command.bg = "#181818"
c.colors.statusbar.command.fg = "#d8d8d8"
c.colors.statusbar.command.private.bg = "#181818"
c.colors.statusbar.command.private.fg = "#d8d8d8"
c.colors.statusbar.insert.bg = "#7cafc2"
c.colors.statusbar.insert.fg = "#181818"
c.colors.statusbar.normal.bg = "#181818"
c.colors.statusbar.normal.fg = "#a1b56c"
c.colors.statusbar.passthrough.bg = "#86c1b9"
c.colors.statusbar.passthrough.fg = "#181818"
c.colors.statusbar.private.bg = "#282828"
c.colors.statusbar.private.fg = "#181818"
c.colors.statusbar.progress.bg = "#7cafc2"
c.colors.statusbar.url.error.fg = "#ab4642"
c.colors.statusbar.url.fg = "#d8d8d8"
c.colors.statusbar.url.hover.fg = "#d8d8d8"
c.colors.statusbar.url.success.http.fg = "#86c1b9"
c.colors.statusbar.url.success.https.fg = "#a1b56c"
c.colors.statusbar.url.warn.fg = "#ba8baf"
c.colors.tabs.bar.bg = "#181818"
c.colors.tabs.even.bg = "#181818"
c.colors.tabs.even.fg = "#d8d8d8"
c.colors.tabs.indicator.error = "#ab4642"
c.colors.tabs.indicator.start = "#7cafc2"
c.colors.tabs.indicator.stop = "#86c1b9"
c.colors.tabs.odd.bg = "#282828"
c.colors.tabs.odd.fg = "#d8d8d8"
c.colors.tabs.pinned.even.bg = "#86c1b9"
c.colors.tabs.pinned.even.fg = "#f8f8f8"
c.colors.tabs.pinned.odd.bg = "#a1b56c"
c.colors.tabs.pinned.odd.fg = "#f8f8f8"
c.colors.tabs.pinned.selected.even.bg = "#383838"
c.colors.tabs.pinned.selected.even.fg = "#d8d8d8"
c.colors.tabs.pinned.selected.odd.bg = "#383838"
c.colors.tabs.pinned.selected.odd.fg = "#d8d8d8"
c.colors.tabs.selected.even.bg = "#383838"
c.colors.tabs.selected.even.fg = "#d8d8d8"
c.colors.tabs.selected.odd.bg = "#383838"
c.colors.tabs.selected.odd.fg = "#d8d8d8"
