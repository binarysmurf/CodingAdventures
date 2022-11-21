local setup, comment = pcall(require,"Comment")
if not setup then
    print("Comment plugin not installed@")
    return
end

comment.setup()
