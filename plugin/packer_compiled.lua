-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sigurdskatvedt/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sigurdskatvedt/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sigurdskatvedt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sigurdskatvedt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sigurdskatvedt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0024\2\0\0B\0\2\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\2\0\0\6\2\16\0%-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\31�9\1\1\0009\1\2\1\6\1\3\0X\2\6�\6\1\4\0X\2\4�\6\1\5\0X\2\2�\a\1\6\0X\2\a�6\2\a\0009\2\b\2'\4\t\0009\5\n\0&\4\5\4B\2\2\1X\2\n�\6\1\v\0X\2\2�\a\1\f\0X\2\6�6\2\a\0009\2\b\2'\4\r\0009\5\n\0&\4\5\4B\2\2\1-\2\1\0009\2\14\0029\2\15\2B\2\1\1K\0\1\0\1�\0�\vreload\ttree\"silent !git restore --staged \aA \aM \18absolute_path\21silent !git add \bcmd\bvim\a M\aAM\aMM\a??\tfile\15git_status\23get_node_at_cursor]\0\1\4\1\4\0\b5\1\1\0'\2\0\0\18\3\0\0&\2\3\2=\2\2\1-\2\0\0=\2\3\1L\1\2\0\0�\vbuffer\tdesc\1\0\3\fnoremap\2\vsilent\2\vnowait\2\16nvim-tree: �\1\1\1\n\2\n\0\0193\1\0\0-\2\0\0009\2\1\0029\2\2\0029\2\3\2\18\4\0\0B\2\2\0016\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\b\0-\6\1\0\18\a\1\0'\t\t\0B\a\2\0A\2\3\0012\0\0�K\0\1\0\0�\2�\fGit add\aga\6n\bset\vkeymap\bvim\22default_on_attach\rmappings\vconfig\0�\1\1\0\a\0\f\0\0216\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\6\0003\6\a\0=\6\b\0055\6\t\0=\6\n\0054\6\0\0=\6\v\5B\3\2\0012\0\0�K\0\1\0\ffilters\tview\1\0\2 preserve_window_proportions\2\nwidth\3(\14on_attach\0\1\0\2\23sync_root_with_cwd\2\18hijack_cursor\2\nsetup\14nvim-tree\0\18nvim-tree.lib\18nvim-tree.api\frequire\0" },
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/sigurdskatvedt/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\2\16\0%-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\31�9\1\1\0009\1\2\1\6\1\3\0X\2\6�\6\1\4\0X\2\4�\6\1\5\0X\2\2�\a\1\6\0X\2\a�6\2\a\0009\2\b\2'\4\t\0009\5\n\0&\4\5\4B\2\2\1X\2\n�\6\1\v\0X\2\2�\a\1\f\0X\2\6�6\2\a\0009\2\b\2'\4\r\0009\5\n\0&\4\5\4B\2\2\1-\2\1\0009\2\14\0029\2\15\2B\2\1\1K\0\1\0\1�\0�\vreload\ttree\"silent !git restore --staged \aA \aM \18absolute_path\21silent !git add \bcmd\bvim\a M\aAM\aMM\a??\tfile\15git_status\23get_node_at_cursor]\0\1\4\1\4\0\b5\1\1\0'\2\0\0\18\3\0\0&\2\3\2=\2\2\1-\2\0\0=\2\3\1L\1\2\0\0�\vbuffer\tdesc\1\0\3\fnoremap\2\vsilent\2\vnowait\2\16nvim-tree: �\1\1\1\n\2\n\0\0193\1\0\0-\2\0\0009\2\1\0029\2\2\0029\2\3\2\18\4\0\0B\2\2\0016\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\b\0-\6\1\0\18\a\1\0'\t\t\0B\a\2\0A\2\3\0012\0\0�K\0\1\0\0�\2�\fGit add\aga\6n\bset\vkeymap\bvim\22default_on_attach\rmappings\vconfig\0�\1\1\0\a\0\f\0\0216\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\6\0003\6\a\0=\6\b\0055\6\t\0=\6\n\0054\6\0\0=\6\v\5B\3\2\0012\0\0�K\0\1\0\ffilters\tview\1\0\2 preserve_window_proportions\2\nwidth\3(\14on_attach\0\1\0\2\23sync_root_with_cwd\2\18hijack_cursor\2\nsetup\14nvim-tree\0\18nvim-tree.lib\18nvim-tree.api\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0024\2\0\0B\0\2\1K\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
