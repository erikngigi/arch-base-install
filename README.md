# Linux Base Installation Scripts Repository

This repository contains a collection of scripts designed to streamline the base installation process of Linux distributions, along with additional scripts for installing fonts, setting up the pacman package manager, and managing AUR (Arch User Repository) packages. These scripts aim to simplify the initial setup and configuration of a Linux system, providing users with an efficient and customizable installation experience.

## Contents

- `base_install.sh`: This script automates the installation of essential packages and configurations required for a base Linux system setup. It includes common utilities, development tools, and system configurations.

- `install_fonts.sh`: This script facilitates the installation of additional fonts on the system. Fonts play a crucial role in user interface and design, and this script ensures that necessary fonts are readily available for applications and documents.

- `install_pacman.sh`: This script assists in the setup and configuration of the pacman package manager, which is the default package manager for Arch Linux and its derivatives. It ensures that the package repositories are properly configured and up-to-date.

- `install_aur_packages.sh`: AUR (Arch User Repository) provides a vast collection of community-contributed packages that are not available in the official repositories. This script automates the installation of AUR packages, making it easy to extend the functionality of the system with third-party software.

## Usage

1. Clone the repository to your local machine:

    ```
    git clone https://github.com/ErikNgigi/arch-base-install.git
    ```

2. Navigate to the repository directory:

    ```
    cd linux-installation-scripts
    ```

3. Make the scripts executable:

    ```
    chmod +x base_install.sh install_fonts.sh install_pacman.sh install_aur_packages.sh
    ```

4. Execute the desired script(s) based on your requirements. For example:

    ```
    ./base_install.sh
    ```

    ```
    ./install_fonts.sh
    ```

    ```
    ./install_pacman.sh
    ```

    ```
    ./install_aur_packages.sh
    ```

## Contribution

Contributions to this repository are welcome! If you have any suggestions, improvements, or additional scripts that could benefit the Linux community, feel free to fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Disclaimer

These scripts are provided as-is, without any warranty. Use them at your own risk. Always review the code and understand its implications before executing any scripts on your system.
