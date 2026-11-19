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
    {
      mode = "n";
      key = "<F5>";
      action = "<cmd>DapContinue<CR>";
      options.desc = "Start/Continue Debugging";
    }
    {
      mode = "n";
      key = "<F9>";
      action = "<cmd>DapToggleBreakpoint<CR>";
      options.desc = "Toggle Breakpoint";
    }
    {
      mode = "n";
      key = "<F10>";
      action = "<cmd>DapStepOver<CR>";
      options.desc = "Step Over";
    }
    {
      mode = "n";
      key = "<F11>";
      action = "<cmd>DapStepInto<CR>";
      options.desc = "Step Into";
    }
    {
      mode = "n";
      key = "<S-F11>";
      action = "<cmd>DapStepOut<CR>";
      options.desc = "Step Out";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Toggle Solution Explorer";
    }

  ];
}
