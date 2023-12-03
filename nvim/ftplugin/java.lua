local home = os.getenv("HOME")

local root_markers = { "gradlew", "mvnw", ".git" }
local root_dir = require("jdtls.setup").find_root(root_markers)
local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = home .. "/workspaces/" .. project_name

local config = {
	cmd = { "/opt/homebrew/bin/jdtls", "-data", workspace_dir },
	root_dir = root_dir,
	-- root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	settings = {
		java = {
			project = {
				referencedLibraries = {
					"~/java-libs/junit.jar",
					"~/java-libs/gson.jar",
				},
			},
		},
	},
}

require("jdtls").start_or_attach(config)
