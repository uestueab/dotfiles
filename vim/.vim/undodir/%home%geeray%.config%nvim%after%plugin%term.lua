Vim�UnDo� ��B�����șo�$'�A�d��L���xR�U              *      !       !   !   !    di<�    _�                     '       ����                                                                                                                                                                                                                                                                                                                                                             di0     �   &              7vim.keymap.set({ 'n', 't' }, "<S-Tab>", ToggleTerminal)5��    &                                        5�_�                    '   &    ����                                                                                                                                                                                                                                                                                                                                                             di0    �   &              8vim.keymap.set({ 'n', 't' }, "<leader>", ToggleTerminal)5��    &   &                  &                     5�_�                    &   &    ����                                                                                                                                                                                                                                                                                                                                                             di2     �   &   (   '    5��    &                                            5�_�                    &        ����                                                                                                                                                                                                                                                                                                                                                             di2     �   &   (   (    �   &   '   (    5��    &                                     ,       5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             di2    �   &   (   )      +vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")5��    &                                          5�_�                    '   *    ����                                                                                                                                                                                                                                                                                                                                                             di2$    �   &   (   )      ,vim.keymap.set("ts", "<Esc>", "<C-\\><C-n>")5��    &   *                  *                     5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             di27     �   &   (   )      1vim.keymap.set("ts", "<Esc>", "<C-\\><C-n><C-w>")5��    &                                          5�_�      	              &        ����                                                                                                                                                                                                                                                                                                                                                             di2<     �   %   '   )      +vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")5��    %                      �                     5�_�      
           	   '       ����                                                                                                                                                                                                                                                                                                                                                             di2@    �   &   (   )      0vim.keymap.set("t", "<Esc>", "<C-\\><C-n><C-w>")5��    &                                        �    &                                        5�_�   	              
   '       ����                                                                                                                                                                                                                                                                                                                                                             di2i    �   &   (   )      -vim.keymap.set("t", "ts", "<C-\\><C-n><C-w>")5��    &                                          5�_�   
                 '       ����                                                                                                                                                                                                                                                                                                                                                             di2p     �   &   (   )      5vim.keymap.set("t", "<leader>ts", "<C-\\><C-n><C-w>")5��    &                                        5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             di2t     �   &   (   )      6vim.keymap.set("t", "<leader,tts", "<C-\\><C-n><C-w>")5��    &                                        5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             di2u    �   &   (   )      6vim.keymap.set("t", "<leader>tts", "<C-\\><C-n><C-w>")5��    &                                           5�_�                    '   3    ����                                                                                                                                                                                                                                                                                                                                                             di2�   	 �   &   (   )      5vim.keymap.set("t", "<leader>ts", "<C-\\><C-n><C-w>")5��    &   3                  6                     5�_�                    '   7    ����                                                                                                                                                                                                                                                                                                                                                             di2�   
 �   &   (   )      :vim.keymap.set("t", "<leader>ts", "<C-\\><C-n><C-w><C-w>")5��    &   7                  :                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             di:8     �              )   local te_buf = nil   local te_win_id = nil       local v = vim   local fun = v.fn   local cmd = v.api.nvim_command   local gotoid = fun.win_gotoid   local getid = fun.win_getid       local function openTerminal()   #	if fun.bufexists(te_buf) ~= 1 then   G		cmd("au TermOpen * setlocal nonumber norelativenumber signcolumn=no")   "		cmd("sp | winc J | res 10 | te")   		te_win_id = getid()   		te_buf = fun.bufnr('%')   #	elseif gotoid(te_win_id) ~= 1 then   -		cmd("sb " .. te_buf .. "| winc J | res 10")   		te_win_id = getid()   	end   	cmd("startinsert")   end       local function hideTerminal()   	if gotoid(te_win_id) == 1 then   		cmd("hide")   	end   end       function ToggleTerminal()   	if gotoid(te_win_id) == 1 then   		hideTerminal()   	else   		openTerminal()   	end   end       -- TERMINAL   .-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")   9vim.keymap.set("t", "<leader>ts", "<C-\\><C-n><C-w><C-w")       9vim.keymap.set({ 'n', 't' }, "<leader>t", ToggleTerminal)5��            )                      x             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             di::    �                   �               5��                       @                   i      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             di:j    �               ;  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)5��                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                            	                      V        di;-     �                ;  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)   9  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)5��                          Z      v               5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                  V        di<�     �                4  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)5��                          ?       5               5�_�                   !           ����                                                                                                                                                                                                                                                                                                                                                  V        di<�    �              
   "function _G.set_terminal_keymaps()     local opts = {buffer = 0}   1  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)   ;  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)   ;  vim.keymap.set('n', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)   ;  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)   end       S-- if you only want these mappings for toggle term use term://*toggleterm#* instead   @vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')5��            
                      �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        di;1     �              5��                          ?       5               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        di;2     �              5��                          ?       2               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        di;4    �              5��                          ?       <               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        di;K    �               1  vim.keymap.set('n', '<C-j>', '<C-w><C-w>, opts)5��                        ^                     �       #                  b                      �       "                  a                      �       !                  `                      �                          _                      �                        ^                     �                         _                     �       &                 e                     �       (                 g                     5�_�                      *    ����                                                                                                                                                                                                                                                                                                                                                  V        di;�     �               3  vim.keymap.set('n', '<C-j>', '<C-w><C-w>' , opts)5��       *                  i                      5�_�                        +    ����                                                                                                                                                                                                                                                                                                                                                  V        di;�    �               2  vim.keymap.set('n', '<C-j>', '<C-w><C-w>', opts)5��       +                  j                      5�_�                      *    ����                                                                                                                                                                                                                                                                                                                                                  V        di;b    �               2  vim.keymap.set('n', '<C-j>', '<C-w><C-w>', opts)5��       *                  i                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        di;�     �               enid5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        di;�     �               en   gid5��                         �                      �                         �                      �                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        di;�     �         	          d5��                         �                      �                          �                      �                          �                      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        di;�     �         
      d�         
          d5��                          �                      �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       di;     �      
        5��                                �               5��