return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
    "nvim-lua/plenary.nvim",
  },
  opts = function(_, opts)
    local neotest = require("neotest")
    opts.adapters = {
      require("neotest-jest")({
        jestCommand = "npm test --", -- Or "yarn test --" if using Yarn
        env = { CI = true },         -- Set environment variables if needed
        cwd = function(path)
          return vim.fn.getcwd()
        end,
      }),
    }
    return opts
  end,
  keys = {
    -- Key mappings to trigger test actions
    { "<leader>tn", function() require("neotest").run.run() end,                   desc = "Run nearest test" },
    { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run tests in file" },
    { "<leader>ts", function() require("neotest").summary.toggle() end,            desc = "Toggle test summary" },
    { "<leader>to", function() require("neotest").output_panel.toggle() end,       desc = "Toggle test output" },
  },
}
