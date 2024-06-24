require 'typst-preview'.setup {
  -- Setting this true will enable printing debug information with print()
  debug = true,

  -- Custom format string to open the output link provided with %s
  -- Example: open_cmd = 'firefox %s -P typst-preview --class typst-preview'
  -- open_cmd = nil,
  open_cmd = 'firefox %s -P typst-preview --class typst-preview',

  -- Provide the path to binaries for dependencies.
  -- Setting this will skip the download of the binary by the plugin.
  -- Warning: Be aware that your version might be older than the one
  -- required.
  dependencies_bin = {
          ['typst-preview'] = nil,
          -- ['typst-preview'] = "~/.config/Code/CachedExtensionVSIXs/mgt19937.typst-preview-0.11.3-linux-x64",
          ['websocat'] = "~/.local/share/nvim/typst-preview/websocat.x86_64-unknown-linux-musl"
  },

  -- Setting this to 'always' will invert black and white in the preview
  -- Setting this to 'auto' will invert depending if the browser has enable
  -- dark mode
  invert_colors = 'never',

  -- This function will be called to determine the root of the typst project
  get_root = function(bufnr_of_typst_buffer)
    return vim.fn.getcwd()
  end,
}
