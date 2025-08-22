-- ~/.config/nvim/ftplugin/java.lua
local ok, jdtls = pcall(require, 'jdtls')
if not ok then return end

local root_dir = require('jdtls.setup').find_root({'.git', 'pom.xml', 'build.gradle', 'mvnw', 'gradlew'}) 
    or vim.fn.getcwd()

local mason = vim.fn.stdpath('data') .. '/mason/packages/jdtls'
local launcher = vim.fn.glob(mason .. '/plugins/org.eclipse.equinox.launcher_*.jar')
local config_dir = mason .. '/config_linux'
local workspace = vim.fn.stdpath('data') .. '/jdtls-workspace/' .. vim.fn.fnamemodify(root_dir, ':p:h:t')

jdtls.start_or_attach({
  cmd = {
    (os.getenv('JAVA_HOME') and (os.getenv('JAVA_HOME')..'/bin/java') or 'java'),
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true','-Dlog.level=ALL',
    '-Xmx2G',
    '--add-modules=ALL-SYSTEM',
    '--add-opens','java.base/java.util=ALL-UNNAMED',
    '--add-opens','java.base/java.lang=ALL-UNNAMED',
    '-jar', launcher,
    '-configuration', config_dir,
    '-data', workspace,
  },
  root_dir = root_dir,
  settings = {
    java = {
      -- Tell jdtls where your source folders are in a simple project
      project = { sourcePaths = { "src" } },
      -- Make sure it knows your JDK(s) (so it can read src.zip for JDK classes)
      configuration = {
        runtimes = {
          { name = "JavaSE-24", path = os.getenv("JAVA_HOME") or "/usr/lib/jvm/jdk-24.0.2-oracle-x64", default = true },
        }
      },
      maven = { downloadSources = true }, -- lets it also fetch sources for external libs if any
    },
  },
})
