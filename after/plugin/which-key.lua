local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
    t = {
        name = "Nvim Tree",
        t = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
        f = { "<cmd>NvimTreeFindFile<cr>", "Find File" },
        r = { "<cmd>NvimTreeRefresh<cr>", "Refresh Files" },
        c = { "<cmd>NvimTreeClose<cr>", "Close Tree"}
    },
    j = {
        name = "Nvim Test",
        f = { "<cmd>TestFile<cr>", "Test File" },
        s = { "<cmd>TestSuite<cr>", "Test Suite" }
    },
    g = {
        name = "Vim Fugitive (Git)",
        s = { "<cmd>Git<cr>", "Git" }
    },
    e = {
        name = "Trouble",
        e = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" }
    },
    f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find Files" },
        g = { "<cmd>Telescope live_grep<cr>", "Grep Files" }
    },
    b = {
        name = "Barbar",
        p = { "<cmd>BufferPick<cr>", "Pick Buffer" },
        [","] = { "<cmd>BufferPrevious<cr>", "Previous Buffer" },
        ["."] = { "<cmd>BufferNext<cr>", "Next Buffer" },
        m = { "<cmd>BufferMoveNext<cr>", "Move Buffer Right" },
        n = { "<cmd>BufferMovePrevious<cr>", "Move Buffer Left" },
        c = { "<cmd>BufferClose<cr>", "Close Buffer" }
    },
    u = {
        name = "Undotree",
        t = { "<cmd>UndotreeToggle<cr>", "Toggle Undotree" }
    },
    c = {
        name = "Copilot",
        p = { "<cmd>Copilot panel<cr>", "Open Panel" },
        e = { "<cmd>Copilot enable<cr>", "Enable Copilot" },
        d = { "<cmd>Copilot disable<cr>", "Disable Copilot" }
    }
}, { prefix = "<leader>" })
