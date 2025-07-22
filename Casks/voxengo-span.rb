cask "voxengo-span" do
  version "3.23"
  sha256 "7b6a8215f4bfb8ec50675b36a5f945d2dd2d4dc36888c13076b67a5a52063dd1"

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo SPAN"
  desc "FFT Spectrum analyzer plugin"
  homepage "https://www.voxengo.com/"

  livecheck do
    url "https://www.voxengo.com/product/span/"
    strategy :page_match do |page|
      match = page.match(/VoxengoSPAN_(\d+)_Mac_AU_AAX_VST_setup\.dmg/i)
      if match
        digits = match[1]
        "#{digits[0]}.#{digits[1..]}"
      end
    end
  end

  audio_unit_plugin "SPAN.component"

  vst_plugin "SPAN.vst"

  vst3_plugin "SPAN.vst3"

postflight do
  plugin_dir = "/Library/Application Support/Avid/Audio/Plug-Ins"
  plugin_file = "#{plugin_dir}/SPAN.aaxplugin"
  source_file = "#{staged_path}/ProTools AAX/SPAN.aaxplugin"

  if File.directory?(plugin_dir)

    if File.exist?(plugin_file)
      system_command "/bin/rm",
        args: ["-rf", plugin_file],
        sudo: true
    end

    system_command "/bin/cp",
      args: ["-R", source_file, plugin_dir],
      sudo: true
  else
    opoo "Pro Tools plug-in directory not found: #{plugin_dir}"
  end
end

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/SPAN.vst",
    "/Library/Audio/Plug-Ins/VST3/SPAN.vst3",
    "/Library/Audio/Plug-Ins/Components/SPAN.component",
    "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin"]

end
