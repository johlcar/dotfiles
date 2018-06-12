# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig()

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'amazon': 'http://www.amazon.com/s?url=search-alias%3Daps&field-keywords={}', 'aw': 'https://wiki.archlinux.org/?search={}', 'ddgi': 'https://duckduckgo.com/?q=!dgi {}', 'g': 'https://www.google.com/search?hl=en&q={}', 'gi': 'https://www.google.com/search?tbm=isch&q={}', 'r': 'https://www.reddit.com/r/{}', 'wiki': 'https://en.wikipedia.org/wiki/Special:Search?search={}', 'yt': 'https://www.youtube.com/results?search_query={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = 'https://github.com/johlcar'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = '"xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '12pt  "DejaVu Sans Mono"'

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 12pt  "DejaVu Sans Mono"'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '12pt  "DejaVu Sans Mono"'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '12pt  "DejaVu Sans Mono"'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 14pt  "DejaVu Sans Mono"'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '12pt  "DejaVu Sans Mono"'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '12pt  "DejaVu Sans Mono"'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '12pt  "DejaVu Sans Mono"'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '12pt  "DejaVu Sans Mono"'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '12pt sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '10pt  "DejaVu Sans Mono"'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = 'bold 14pt  "DejaVu Sans Mono"'

# Font family for standard fonts.
# Type: FontFamily
c.fonts.web.family.standard = None

# This setting can be used to map keys to other keys. When the key used
# as dictionary-key is pressed, the binding for the key used as
# dictionary-value is invoked instead. This is useful for global
# remappings of keys, for example to map Ctrl-[ to Escape. Note that
# when a key is bound (via `bindings.default` or `bindings.commands`),
# the mapping is ignored.
# Type: Dict
c.bindings.key_mappings = {'<Ctrl+6>': '<Ctrl+^>', '<Ctrl+Enter>': '<Ctrl+Return>', '<Ctrl+j>': '<Return>', '<Ctrl+m>': '<Return>', '<Ctrl+[>': '<Escape>', '<Enter>': '<Return>', '<Shift+Enter>': '<Return>', '<Shift+Return>': '<Return>'}

# Bindings for normal mode
config.bind(';h', 'hint links spawn streamlink {hint-url} best')
config.bind(';j', 'hint links spawn mpv {hint-url}')
config.bind('t', 'tab-clone')