help([[
]])

local pkgName = myModuleName()
local pkgVersion = myModuleVersion()

conflict(pkgName)

local prefix = "#NCEPLIBS_ROOT#"
local base = pathJoin(prefix,pkgName .. '-' .. pkgVersion)

setenv("prod_util_ROOT", base)
setenv("prod_util_VERSION", pkgVersion)
prepend_path("PATH", pathJoin(base,"bin"))