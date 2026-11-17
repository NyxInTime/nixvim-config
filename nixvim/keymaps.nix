{
  keymaps = [
    {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>lua require('neotest').run.run()<cr>";
      options.desc = "Run nearest JUnit test";
    }
    {
      mode = "n";
      key = "<leader>tf";
      action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>";
      options.desc = "Run current test file";
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>lua require('neotest').summary.toggle()<cr>";
      options.desc = "Toggle test summary";
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>lua require('neotest').output.open({ enter = true })<cr>";
      options.desc = "Open test output";
    }
  ];
}
