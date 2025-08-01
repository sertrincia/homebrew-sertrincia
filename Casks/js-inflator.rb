cask "js-inflator" do
  version "2.0.3.2"
  sha256 "061e5ffa3522f26f7ff0b88213e30b52feefbaf5f4c6bfdcd0c46f6bfb5a144d"

  url "https://github.com/Kiriki-liszt/JS_Inflator/releases/download/v#{version}/JS.Inflator.macOS.v#{version}.zip"
  name "JS Inflator"
  desc "Clone of a famous upward compressor plugin"
  homepage "https://github.com/Kiriki-liszt/JS_Inflator"

  livecheck do
    url "https://github.com/Kiriki-liszt/JS_Inflator"
    strategy :github_latest
  end

  audio_unit_plugin "JS_Inflator.component"
  vst3_plugin "JS_Inflator.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/Components/JS_Inflator.component",
    "/Library/Audio/Plug-Ins/VST3/JS_Inflator.vst3",
  ]

  zap trash: [
    "~/Library/Audio/Presets/yg331/JS Inflator",
  ]
end
