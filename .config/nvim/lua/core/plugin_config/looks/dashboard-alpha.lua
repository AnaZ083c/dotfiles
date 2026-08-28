local alpha = require('alpha')
local theme = require('alpha.themes.theta')


-- Load header file
HeadersBaseDir = "/home/anazobec/.config/nvim/lua/core/plugin_config/looks/dashboard_headers"
HeaderFile = io.open(HeadersBaseDir .. "/xlab.txt")

-- Read the header into lines
local header_lines = {}
for line in HeaderFile:lines() do
  table.insert(header_lines, line)
end
HeaderFile:close()

-- apply theme
theme.header.val = header_lines

alpha.setup(theme.config)
