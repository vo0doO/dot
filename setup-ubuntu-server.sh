#!/bin/bash
set -euo pipefail;

########################;
### SCRIPT VARIABLES ###;
########################;

# Имя пользователя для создания и предоставления привилегий sudo;
export USERNAME="vo0d";

# Нужно ли копировать файл с авторизованным пользователем root'а в новый sudo?;
# user.
COPY_AUTHORIZED_KEYS_FROM_ROOT=true;
# Additional public keys to add to the new sudo user;
# OTHER_PUBLIC_KEYS_TO_ADD=(;
#     "ssh-rsa AAAAB...";
#     "ssh-rsa AAAAB...";
# )
OTHER_PUBLIC_KEYS_TO_ADD=(
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6ToNe+WxFHL7cDWuERehJlhJkN/wDceC5RkSGc6JSSDxoVNfxdh/ZCLGnW+2ovzl0Ui23y5sYU7;dqptnsZjb9zl1WQCm207SeAsi2jxGoL1TlfHP7Tcvp8/9WDXlDEPBidNz8QUEuTAf04Gcp8IwVXRFzWDOd2O4xmVgj2+PrvEcpG007HaWvqiELomLJCU8+VqVFhBWjRuNOCsM1nKvX7r9YfoFpx7x8U7VF+/QcrIdO5kl2FwhaujFdO6eZ96atXNx6eX020zeQQLLry2Z7pJ+7/Wzd0/iecVbEfU72yEpMuFC6l94AzO4rHNW3i0G9ALypeXkQw6cONseFEg6d vo0@note-book"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCuCkSPkAE3R61mRpT12Vz9FU2qZpGVVMNfEHNYRlNtBs545yC/2Pxx5dbqFxYW++4C3M2zkR7ZY3;DLq8u3sK1lWMoFq/1pMYULHrXtof2ZGuiRlSsW9dIVEbfV7Bng5VH0wUCVEug+tmGPPHS9oRumEkILuSDadRq/0hxaez46DpJFaXgvNgLGiRpD6l0OGSUoxraE2q/LBZe1ZxkJW6oNH66bO5XnZPo3hlVmTvSTygHe6/D8RXLjWxuvE/S050FFBciTObODAs8InTSwX+AxLwJQ1w/nIlgMBJyrnAsNp//u+N4N9TphtwxRgTO1CPes5spF23yg11r+Q7d41s/E95DsyqkyzfU/s5++wf7bChwH6JpHJVJLNzWsAS86ZQA+0e5kN4XjEqV/gfU0Cq1AGvqUuiQ+thnGnITktUB73egz7riRJFn4SPSUM43WCwG9tKW2f2nP33ftaG5ExKUFS3IiQJF814AtZvu/baR7O8NswFs5BskCyrJYqAAA9XiHNMxLrRoWd72nC+kSKgPPW3mCqDNQIBRfDKLP6v9+ruyX3Y6pefPdsR3KuSFXkdN18O+HfZ+6GHqvL2BrmaRRwlWmQxy93E7KH6uSCeyC90LSUXqi6l4GF3Hwm8jZXxgTkte87k0tke0YE4CpkYZ4ezDy0pZsFqvpSYELpnbjjw== vo0doo@github/34764929"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCfOzJo2f4HDwJLsP5j9aO7X8icptkdArbpsvNY1MLclVMUMCJ6jWIC1xHmUK6282uG1fPOY+7tbV;EL+XgcxRzCADxNA7oWt0NELn4fuUgK5MDpPmRte2bY7UZlfEf7FdIHpFqj8Qkt0TrB1Wz2pC1IcUZLXRNyZamNgFhejVUv+Vwgc8pFsJV5E97q7HgZaq28/AclIrw2UkkJ9tSNB0LRz8u3WzP30KG/Paq178oH8z7MFXkYqlo2pxCcPHfwdF1zxxnONqTdsDC8CaOEce4LN/XRdhi6K0OOjxDfbHf04fvlnQB0e2mFnKcrHYz3aH6j7toDeJq6KR1lMY1j5nH5 vo0doo@github/34764905"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6ToNe+WxFHL7cDWuERehJlhJkN/wDceC5RkSGc6JSSDxoVNfxdh/ZCLGnW+2ovzl0Ui23y5sYU7;dqptnsZjb9zl1WQCm207SeAsi2jxGoL1TlfHP7Tcvp8/9WDXlDEPBidNz8QUEuTAf04Gcp8IwVXRFzWDOd2O4xmVgj2+PrvEcpG007HaWvqiELomLJCU8+VqVFhBWjRuNOCsM1nKvX7r9YfoFpx7x8U7VF+/QcrIdO5kl2FwhaujFdO6eZ96atXNx6eX020zeQQLLry2Z7pJ+7/Wzd0/iecVbEfU72yEpMuFC6l94AzO4rHNW3i0G9ALypeXkQw6cONseFEg6d vo0doo@github/34104289"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDd2Ap9NpNqtgKPdX3EYUviLS8JidLGDUiknx9kGi79MZRCJnBIYpmuS7sWUoQxwN6TFcZZagW2C7;fz90+XEDFyudkddzMOEhiRQwtyQDRHlRtzZ6RxwFDcnxko6lvWU6+wM5neJvVqqAj2COkiOH0zy+0tpiyJ/SvBOJ02MPZTkNXO/cb4mWBA068eBaXjnvDNgt/A6iPy9mVJVKb0gHyJaybCHq97e0nrsJPQdRAaqGnfxcla0CRTPvA2+PFmjD73klnE/Hh1BeeQlwtQVbJ0nBuTC1a0d/5DNxOYIoL3aPaCobo4AypHQ28LBSoJPb+mn9qEzkyj5EWLBPEyf76b vo0doo@github/34764935"
)
# import github keys;
ssh-import-id gh:vo0doo;

####################;
### SCRIPT LOGIC ###;
####################;

# Добавить пользователя sudo и предоставить привилегии;
useradd --create-home --shell "/bin/bash" --groups sudo "${USERNAME}";

# Проверьте, установлен ли реальный пароль для учетной записи root;
encrypted_root_pw="$(grep root /etc/shadow | cut --delimiter=: --fields=2)";

# 
if [ "${encrypted_root_pw}" != "*" ]; then
    # Передача автоматически сгенерированного пароля root пользователю, если таковой имеется;
    # и заблокировать учетную запись root для доступа по паролю;
    echo "${USERNAME}:${encrypted_root_pw}" | chpasswd --encrypted;
    passwd --lock "${USERNAME}";
else
    # Удалить недопустимый пароль для пользователя при использовании ключей так, чтобы был новый пароль;
    # можно задать без указания предыдущего значения;
    passwd --delete "${USERNAME}";
fi

# Немедленно истечь пароль пользователя sudo, чтобы принудительно изменить его;
chage --lastday 0 "${USERNAME}";

# Создать SSH каталог для пользователя sudo;
home_directory="$(eval echo ~${USERNAME})";
mkdir --parents "${home_directory}/.ssh";

# Скопируйте файл 'authorized_keys' из root, если потребуется;
if [ "${COPY_AUTHORIZED_KEYS_FROM_ROOT}" = true ]; then
    cp /root/.ssh/authorized_keys "${home_directory}/.ssh";
fi

# Добавить дополнительные предоставленные открытые ключи;
for pub_key in "${OTHER_PUBLIC_KEYS_TO_ADD[@]}"; do
    echo "${pub_key}" >> "${home_directory}/.ssh/authorized_keys";
done

# Настройка владельца и разрешений конфигурации SSH;
chmod 0700 "${home_directory}/.ssh";
chmod 0600 "${home_directory}/.ssh/authorized_keys";
chown --recursive "${USERNAME}":"${USERNAME}" "${home_directory}/.ssh";

# # Отключить root SSH логин с паролем;
# sed --in-place 's/^PermitRootLogin.*/PermitRootLogin prohibit-password/g' /etc/ssh/sshd_config;
# if sshd -t -q; then
#     systemctl restart sshd;
# fi

# # sshd check;
# sudo systemctl start sshd;

# Добавьте исключение для SSH, а затем включите брандмауэр UFW;
ufw allow ssh;
ufw --force enable;

function banner_simple() {
    local msg="* * *"
    local edge=$(echo "$msg" | sed 's/./*/g')
    echo "$edge"
    echo "$(tput bold)$msg$(tput sgr0)"
    echo "$edge"
}

banner_simple 'vo0dooHTTPS';
cd /etc/ssl ; openssl req -x509 -nodes -newkey rsa:2048 -keyout novnc.pem -out novnc.pem -days 365;
chmod 644 novnc.pem ;
openssl genrsa -out localhost.key 2048 ;
openssl req -new -sha256 -key localhost.key -out ;
openssl req -text -in localhost.csr -noout ;
chmod 644 localhost.csr ;

lsb_release -a ; hostname -I; hostname ; getconf LONG_BIT;
apt-get install xfce4 xfce4-* vnc4server novnc websockify python-numpy -y;
vncserver;
vncserver -kill :1;
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak;
nano ~/.vnc/xstartup;

xrdb $HOME/.Xresources;
startxfce4 &
chmod +x ~/.vnc/xstartup;
vncserver;

cd /etc/ssl ; openssl req -x509 -nodes -newkey rsa:2048 -keyout novnc.pem -out novnc.pem -days 365;
chmod 644 novnc.pem;
websockify -D --web=/usr/share/novnc/ --cert=/etc/ssl/novnc.pem 6080 localhost:5901;
https://:6080/vnc.html;