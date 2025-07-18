local iron = require("iron.core")

-- Detectar si ipython está disponible. Ruta que depende de un entorno virtual conda
local python_cmd = {"/home/jhm/anaconda3/bin/ipython"}

iron.setup {
  config = {
    repl_definition = {
      python = { command = python_cmd },
      r      = { command = { "R" } },
    },
    repl_open_cmd = require("iron.view").split.vertical.botright("50%"),
  },
  keymaps = {
    send_motion  = "<leader>sc",
    visual_send  = "<leader>sc",
    send_line    = "<leader>sl",
    send_file    = "<leader>sf",
    interrupt    = "<leader>s<space>",
    exit         = "<leader>sq",
    clear        = "<leader>cl",
  },
  highlight = { italic = true },
  ignore_blank_lines = true,
}
