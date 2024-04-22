# Reboot directly to Windows
# Inspired by http://askubuntu.com/questions/18170/how-to-reboot-into-windows-from-ubuntu
reboot_to_windows ()
{
    windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2 -z)
    sudo grub-reboot "$windows_title" && sudo reboot
}
alias rbw='reboot_to_windows'

# Reboot directly to Linux
# Inspired by http://askubuntu.com/questions/18170/how-to-reboot-into-windows-from-ubuntu
reboot_to_linux ()
{
    linux_title=$(grep -i Ubuntu /boot/grub/grub.cfg | cut -d '"' -f 2 -z)
    sudo grub-reboot "$linux_title" && sudo reboot
}
alias rbl='reboot_to_linux'

take ()
{
    mkdir -p "$argv[1]" && cd "$argv[1]"
}

md ()
{
    mkdir -p "$argv[1]"
}
