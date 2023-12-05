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
local package_path_str = "/home/tono/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?.lua;/home/tono/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?/init.lua;/home/tono/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?.lua;/home/tono/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tono/.cache/nvim/packer_hererocks/2.1.1700008891/lib/lua/5.1/?.so"
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
  Colorizer = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/Colorizer",
    url = "https://github.com/chrisbra/Colorizer"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["noice.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0D\0\1\0\19gf_passthrough\tutil\robsidian\frequireE\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0D\0\1\0\20toggle_checkbox\tutil\robsidian\frequire\2\1\0\a\0\19\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\17\0005\3\15\0005\4\3\0>\4\1\0035\4\t\0005\5\5\0003\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\0045\5\f\0003\6\v\0=\6\6\0055\6\r\0=\6\b\5=\5\14\4=\4\16\3=\3\18\2B\0\2\1K\0\1\0\15workspaces\1\0\0\rmappings\1\0\0\15<leader>ch\1\0\1\vbuffer\2\1\0\0\0\agf\1\0\0\topts\1\0\3\texpr\2\fnoremap\1\vbuffer\2\vaction\1\0\0\0\1\0\2\tname\rpersonal\tpath\21~/personal/notes\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rainbow-delimiters.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/rainbow-delimiters.nvim",
    url = "https://github.com/HiPhish/rainbow-delimiters.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-tpipeline"] = {
    loaded = true,
    path = "/home/tono/.local/share/nvim/site/pack/packer/start/vim-tpipeline",
    url = "https://github.com/vimpostor/vim-tpipeline"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0D\0\1\0\19gf_passthrough\tutil\robsidian\frequireE\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0D\0\1\0\20toggle_checkbox\tutil\robsidian\frequire\2\1\0\a\0\19\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\17\0005\3\15\0005\4\3\0>\4\1\0035\4\t\0005\5\5\0003\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\0045\5\f\0003\6\v\0=\6\6\0055\6\r\0=\6\b\5=\5\14\4=\4\16\3=\3\18\2B\0\2\1K\0\1\0\15workspaces\1\0\0\rmappings\1\0\0\15<leader>ch\1\0\1\vbuffer\2\1\0\0\0\agf\1\0\0\topts\1\0\3\texpr\2\fnoremap\1\vbuffer\2\vaction\1\0\0\0\1\0\2\tname\rpersonal\tpath\21~/personal/notes\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)

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
