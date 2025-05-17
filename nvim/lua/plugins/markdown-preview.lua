return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      { "<leader>fmp", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview" },
      { "<leader>fmps", "<cmd>MarkdownPreviewStop<cr>", desc = "Stop Markdown Preview" },
    },
  },
}
