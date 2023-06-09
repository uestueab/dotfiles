-- Get the current directory of the script
local currentDir = debug.getinfo(1).source:match("@?(.*/)")
-- Specify the path for helper modules
local helperPath = currentDir .. "util/?.lua"
-- Modify the package.path to include the helper path
package.path = package.path .. ";" .. helperPath

require("core")
