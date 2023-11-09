## Quick Start
1. Backup your current setup:

   ```bash
   mv ~/.vim ~/.vim_bck
   mv ~/.vimrc ~/.vimrc_bck
   ```

2. Set up .vim directory:

   ```bash
   git clone https://github.com/kluza09/vim_overlord ~/.vim
   ```

3. Move `.vimrc` to home directory
   ```bash
   mv ~/.vim/.vimrc ~/
   ```

4. Configure Plugin Manager by running:

   ```bash
   cd ~/.vim
   ./config.sh
   ```

5. Open `vim` and run following command:
   ```vim
   :PluginInstall
   ```

6. **Enjoy!**
 
 
## Known Issues

* blend background color
