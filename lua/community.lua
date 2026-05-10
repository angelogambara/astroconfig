-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- 1. Programming languages packs
  { import = "astrocommunity.pack.bash"                 },
  { import = "astrocommunity.pack.biome"                },
  { import = "astrocommunity.pack.cmake"                },
  { import = "astrocommunity.pack.cpp"                  },
  -- { import = "astrocommunity.pack.cs"                   },
  { import = "astrocommunity.pack.diff-keybindings"     },
  -- { import = "astrocommunity.pack.django"               },
  { import = "astrocommunity.pack.docker"               },
  { import = "astrocommunity.pack.go"                   },
  { import = "astrocommunity.pack.html-css"             },
  { import = "astrocommunity.pack.java"                 },
  { import = "astrocommunity.pack.json"                 },
  -- { import = "astrocommunity.pack.jstmpl"               },
  { import = "astrocommunity.pack.kotlin"               },
  { import = "astrocommunity.pack.laravel"              },
  { import = "astrocommunity.pack.lua"                  },
  { import = "astrocommunity.pack.markdown"             },
  -- { import = "astrocommunity.pack.nginx"                },
  { import = "astrocommunity.pack.php"                  },
  { import = "astrocommunity.pack.python"               },
  { import = "astrocommunity.pack.ruby"                 },
  -- { import = "astrocommunity.pack.rust"                 },
  { import = "astrocommunity.pack.spring-boot"          },
  { import = "astrocommunity.pack.sql"                  },
  { import = "astrocommunity.pack.svelte"               },
  { import = "astrocommunity.pack.tailwindcss"          },
  { import = "astrocommunity.pack.toml"                 },
  -- { import = "astrocommunity.pack.treesitter"           },
  { import = "astrocommunity.pack.typescript"           },
  { import = "astrocommunity.pack.vue"                  },
  { import = "astrocommunity.pack.xml"                  },
  { import = "astrocommunity.pack.yaml"                 },
  { import = "astrocommunity.pack.zig"                  },

  -- 2. Test
  { import = "astrocommunity.test.neotest"              },

  -- 3. Motion
  { import = "astrocommunity.motion.flash-nvim"         },
  { import = "astrocommunity.motion.mini-surround"      },

  -- 4. Editor
  { import = "astrocommunity.diagnostics.trouble-nvim"  },
  { import = "astrocommunity.file-explorer.oil-nvim"    },
  { import = "astrocommunity.lsp.lsp-signature-nvim"    },
  { import = "astrocommunity.search.grug-far-nvim"      },

  -- 5. UI
  { import = "astrocommunity.scrolling.neoscroll-nvim"  },

  -- import/override with your plugins folder
}
