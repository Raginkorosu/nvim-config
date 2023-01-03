local comments_status, comments = pcall(require, 'Comment')

if not comments_status then
    vim.notify("Comment.nvim module not found.")
end


comments.setup{}

