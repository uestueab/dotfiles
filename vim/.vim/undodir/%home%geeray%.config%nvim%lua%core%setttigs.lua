Vim�UnDo� \�2Uܦe�ۿ�A��j�=XI}e3�qn4T<�   -   ^vim.api.nvim_exec([[ autocmd VimLeave * silent!  execute "!~/.scripts/vimLeave.sh"  ]], false)   -          0       0   0   0    dk�n    _�                     &        ����                                                                                                                                                                                                                                                                                                                                                             dj"i     �   &   *   (       �   &   (   '    5��    &                                            �    &                                            �    '                                           5�_�                    *        ����                                                                                                                                                                                                                                                                                                                            &           !           V        dj"r     �   *            �   *            5��    *                                    �       5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                            /           ,           V        dj"�     �   +   ,              autocmd BufReadPost *   :        \ if line("'\"") > 1 && line("'\"") <= line("$") |   &        \     execute "normal! g`\"" |           \ endif5��    +                            �               5�_�                    +        ����                                                                                                                                                                                                                                                                                                                            ,           ,           V        dj"�    �   +   -   -       �   +   -   ,    5��    +                                           �    +                                           �    +                  -                -       5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                            -          ,           V       djj     �   +   ,          -	au BufAdd term://* setlocal bufhidden=delete5��    +                            .               5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            ,          ,           V       djj    �   +   -   -       �   +   -   ,    5��    +                                           �    +                                           �    +                                        �    +                                        �    +                                        �    +   "              )   ;             )       �    +   J                  c                     �    +   I                  b                     �    +   H                 a                    �    +   H                  a                     �    +   G              	   `             	       �    +   O                  h                     �    +   N                  g                     �    +   M                  f                     5�_�                    *        ����                                                                                                                                                                                                                                                                                                                                                             djj�     �   )   *           5��    )                                           5�_�      	              )        ����                                                                                                                                                                                                                                                                                                                                                             djj�     �   (   )           5��    (                                           5�_�      
           	   (        ����                                                                                                                                                                                                                                                                                                                                                             djj�    �   '   )   +       5��    '                                           �    '                 	                	       �    '                                        5�_�   	              
   +   	    ����                                                                                                                                                                                                                                                                                                                                                             dk�     �   -               �   .            �   +               �   +            5��    +                      �                     �    +                      �                     �    ,                      �                     5�_�   
                 .        ����                                                                                                                                                                                                                                                                                                                                                             dk�(    �   .            �   .            5��    .                      �              Z       5�_�                    /        ����                                                                                                                                                                                                                                                                                                                                                             dk�4     �   .   0          ," autocmd VimEnter * !~/.scripts/vimEnter.sh5��    .           ,       /   �      ,       /       5�_�                    /        ����                                                                                                                                                                                                                                                                                                                            /           /���       v        dk�5     �   .   0          /-- " autocmd VimEnter * !~/.scripts/vimEnter.sh5��    .           /       ,   �      /       ,       5�_�                    /        ����                                                                                                                                                                                                                                                                                                                            /           /���       v        dk�6     �   .   0   0      ," autocmd VimEnter * !~/.scripts/vimEnter.sh5��    .                      �                     5�_�                    0        ����                                                                                                                                                                                                                                                                                                                            /           /���       v        dk�7     �   /              ," autocmd VimLeave * !~/.scripts/vimLeave.sh5��    /                      �                     5�_�                    /        ����                                                                                                                                                                                                                                                                                                                            /           /���       v        dk�8     �   /   1   0    5��    /                      �                     5�_�                    )        ����                                                                                                                                                                                                                                                                                                                )           /           /���       v        dk�B     �   (   *   1      vim.api.nvim_exec([[   M    autocmd BufLeave * if &buftype=="terminal" | setlocal nobuflisted | endif5��    (                   ?                    5�_�                    )        ����                                                                                                                                                                                                                                                                                                                )           .           .���       v        dk�B     �   (   *   0      ^vim.api.nvim_exec([[ autocmd BufLeave * if &buftype=="terminal" | setlocal nobuflisted | endif   
]], false)5��    (   ^                 �                    5�_�                    *        ����                                                                                                                                                                                                                                                                                                                )           -           -���       v        dk�J     �   *   ,   /    �   *   +   /    5��    *                      �              j       5�_�                    *        ����                                                                                                                                                                                                                                                                                                                )           )          )   ]       v   ]    dkƏ     �   )   *           5��    )                      �                     5�_�      !               *       ����                                                                                                                                                                                                                                                                                                                )           *          *   ]       v   ]    dkƞ     �   )   +   /      ivim.api.nvim_exec([[ autocmd BufLeave * if &buftype=="terminal" | setlocal nobuflisted | endif ]], false)�   *   +   /    5��    )          I       *   �      I       *       5�_�       "           !   *   >    ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƠ     �   *   ,   /    �   *   +   /    5��    *                      �              K       5�_�   !   #           "   +   4    ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƢ     �   *   ,   0      Jvim.api.nvim_exec([[ autocmd VimEnter * !~/.scripts/vimEnter.sh ]], false)5��    *   4                                     �    *   4                                     �    *   4                                     �    *   4                                     �    *   4                                     5�_�   "   $           #   ,        ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƦ     �   +   ,           5��    +                      +                     5�_�   #   %           $   ,        ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƧ     �   +   ,           5��    +                      +                     5�_�   $   &           %   ,        ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƧ     �   +   ,          *autocmd VimEnter * !~/.scripts/vimEnter.sh5��    +                      +      +               5�_�   %   '           &   ,        ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƨ     �   +   ,           5��    +                      +                     5�_�   &   (           '   ,        ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƨ     �   +   ,          *autocmd VimLeave * !~/.scripts/vimLeave.sh5��    +                      +      +               5�_�   '   )           (   )        ����                                                                                                                                                                                                                                                                                                                )           *          *   >       v   ]    dkƩ    �   )   +   ,       �   )   +   +    5��    )                      �                     �    )                      �                     �    )   
                 �                    �    )   "                  �                     �    )   !                  �                     �    )                     �                    5�_�   (   *           )   *   *    ����                                                                                                                                                                                                                                                                                                                )           +          +   >       v   ]    dkƹ     �   )   +   ,    5��    )                      �                     �    )                     �                     5�_�   )   +           *   *        ����                                                                                                                                                                                                                                                                                                                )           ,          ,   >       v   ]    dkƻ     �   )   +   -      --5��    )                      �                     5�_�   *   ,           +   *        ����                                                                                                                                                                                                                                                                                                                )           ,          ,   >       v   ]    dkƻ   
 �   )   +   -      -5��    )                      �                     5�_�   +   -           ,   -   %    ����                                                                                                                                                                                                                                                                                                                )                                 v   %    dk�n    �   ,              Jvim.api.nvim_exec([[ autocmd VimEnter * !~/.scripts/vimLeave.sh ]], false)5��    ,                     -                    �    ,   %                  2                     5�_�   ,   .           -   ,   (    ����                                                                                                                                                                                                                                                                                                                )           ,   (       -   (          (    dk�6     �   ,              Jvim.api.nvim_exec([[ autocmd VimLeave * !~/.scripts/vimLeave.sh ]], false)�   +   -   -      Jvim.api.nvim_exec([[ autocmd VimEnter * !~/.scripts/vimEnter.sh ]], false)�   ,   -   -    5��    +   (               	   �              	       �    ,   (               	   >              	       5�_�   -   /           .   ,   1    ����                                                                                                                                                                                                                                                                                                                )           ,   1       -   1          1    dk�F    �   ,              Svim.api.nvim_exec([[ autocmd VimLeave * silent!  !~/.scripts/vimLeave.sh ]], false)�   +   -   -      Svim.api.nvim_exec([[ autocmd VimEnter * silent!  !~/.scripts/vimEnter.sh ]], false)�   ,   -   -    5��    +   1               	   �              	       �    ,   1               	   P              	       5�_�   .   0           /   ,   Q    ����                                                                                                                                                                                                                                                                                                                )           ,   P       -   P          P    dk�L    �   ,              \vim.api.nvim_exec([[ autocmd VimLeave * silent!  execute "!~/.scripts/vimLeave.sh ]], false)�   +   -   -      \vim.api.nvim_exec([[ autocmd VimEnter * silent!  execute "!~/.scripts/vimEnter.sh ]], false)5��    +   Q                                       �    ,   Q                  r                     5�_�   /               0   ,   S    ����                                                                                                                                                                                                                                                                                                                )           ,   S       -   S          S    dk�m    �   ,              ^vim.api.nvim_exec([[ autocmd VimLeave * silent!  execute "!~/.scripts/vimLeave.sh"  ]], false)�   +   -   -      ^vim.api.nvim_exec([[ autocmd VimEnter * silent!  execute "!~/.scripts/vimEnter.sh"  ]], false)�   ,   -   -    5��    +   S               	                 	       �    ,   S               	   }              	       5�_�                  )       ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dk�q     �   )   *   0    �   (   *   0      Jvim.api.nvim_exec([[ autocmd VimEnter * !~/.scripts/vimEnter.sh ]], false)5��    (          I       *   @      I       *       5�_�                    *        ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dk�w     �   )   +        5��    )                      v                     5�_�                    *   >    ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dk�x     �   )   +        5��    )                      v      j               5�_�                    )        ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dk�z     �   )   *   .    �   )   *   .      Jvim.api.nvim_exec([[ autocmd VimEnter * !~/.scripts/vimEnter.sh ]], false)5��    )                      v              K       5�_�                    *   4    ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dk�~    �   )   +   /      Jvim.api.nvim_exec([[ autocmd VimEnter * !~/.scripts/vimLeave.sh ]], false)5��    )   4                 �                    �    )   4                 �                    �    )   4                 �                    �    )   4                 �                    5�_�                    +        ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dkƂ     �   *   ,        5��    *                      �                     5�_�                    +        ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dkƃ     �   *   ,        5��    *                      �                     5�_�                    +        ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dkƃ     �   *   ,        5��    *                      �      +               5�_�                     +        ����                                                                                                                                                                                                                                                                                                                )           )          )   >       v   ]    dkƄ     �   *   ,        5��    *                      �                     5�_�                   .        ����                                                                                                                                                                                                                                                                                                                )           .           .���       v        dk�V     �   -   /   0       5��    -           *                 *               5�_�                     )       ����                                                                                                                                                                                                                                                                                                                )           .           .���       v        dk�Z     �   (   *   0      vim.api.nvim_exec([], false)5��    (          M           >      M               5��