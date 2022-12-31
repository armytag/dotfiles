local status, gs = pcall(require, 'gitsigns')
if(status) then
    gs.setup()
end
