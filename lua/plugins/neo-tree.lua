local extension_icons = {
  js = "js",
  mjs = "js",
  cjs = "js",
  ts = "ts",

  json = "json",

  html = "html",
  css = "css",

  md = "md",

  yml = "yml",
  yaml = "yml",

  sh = "sh",
  bash = "sh",

  sql = "sql",

  go = "go",
  rs = "rs",
  py = "py",

  log = "log",
  txt = "txt",
}

local filename_icons = {
  ["Dockerfile"] = "docker",
  ["docker-compose.yml"] = "compose",
  ["Makefile"] = "make",
  [".env"] = "env",
}

local function get_file_icon(name)
  if filename_icons[name] then
    -- return filename_icons[name]
    return "" -- too much icon
  end

  local ext = name:match("^.+%.(.+)$")
  if ext and extension_icons[ext] then
    -- return extension_icons[ext]
    return "" -- too much icon
  end

  return "f"
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  lazy = false,                    -- neo-tree will lazily load itself
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = true,
        },
        follow_current_file = {
          enabled = true, -- This is the key setting
        },
      },
      default_component_configs = {
        icon = {
          -- folder_closed = "│",
          folder_closed = "v",
          folder_open = ">",
          folder_empty = "~",
          default = "[F]",
          provider = function(icon, node)
            if node.type == "file" then
              icon.text = get_file_icon(node.name)
            end
          end,
        },

        git_status = {
          symbols = {
            added     = "+",
            modified  = "~",
            deleted   = "-",
            renamed   = "R",
            untracked = "?",
            ignored   = "I",
            unstaged  = "U",
            staged    = "S",
            conflict  = "!",
          },
        },
      },
    })
  end
}
