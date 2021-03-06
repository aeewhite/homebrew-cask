cask 'slate' do
  version '1.0.25'
  sha256 '428e375d5b1c64f79f1536acb309e4414c3178051c6fe0b2f01a94a0803e223f'

  # ninjamonkeysoftware.com is the official download host per the vendor homepage
  url 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  appcast 'https://www.ninjamonkeysoftware.com/slate/appcast.xml',
          checkpoint: 'ffad4d36b8b87ba512d18fd7d5346269c3feb32a91243859719df7fdf85f82fc'
  name 'Slate'
  homepage 'https://github.com/jigish/slate'
  license :gpl

  accessibility_access true

  app 'Slate.app'

  zap delete: [
                '~/.slate',
                '~/.slate.js',
                '~/Library/Application Support/com.slate.Slate',
              ]
end
