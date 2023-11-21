{ mkShell, wezterm, wez-pain-control, writeTextFile }:

let
  config = writeTextFile {
    name = "wezterm-config.lua";
    text = ''
      package.path = package.path .. ";${wez-pain-control}/?.lua"

      local wezterm = require("wezterm")

      local config = {}

      if wezterm.config_builder then
        config = wezterm.config_builder()
      end

      config.leader = { key = "b", mods = "CTRL" }

      require("plugin").apply_to_config(config, {})

      return config
    '';
  };
in
mkShell {
  packages = [ wezterm ];

  shellHook = ''
    alias wezterm="wezterm --config-file ${config}"
  '';
}
