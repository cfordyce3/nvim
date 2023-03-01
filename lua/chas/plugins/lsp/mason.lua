local mason_status, mason = pcall(require, "mason")
if not mason then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return 
end

mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        "asm_lsp",
        "clangd",
        "cmake",
        "ltex",
        "lua_ls",
        "marksman",
        "pylsp",
        "rust_analyzer",
        "taplo",
    }
})
