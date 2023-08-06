local mappings = {}

mappings.dap = {
  plugin = true, -- mapping appear only when explcitly requested
  n = {  -- normal mode, vim mode where mapping are availablle int
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  }
}

return mappings
