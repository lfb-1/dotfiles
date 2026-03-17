# Secrets — Manual Setup Per Machine

These steps must be run manually on each new machine after `nixos-rebuild switch`.

## SSH Key

```bash
ssh-keygen -t ed25519
# Add ~/.ssh/id_ed25519.pub to:
#   - GitHub: https://github.com/settings/keys
#   - Unicorn/Empire AI clusters (ask admin)
```

## GitHub CLI

```bash
gh auth login
```

## Overleaf Git Access

```bash
git config --global url."https://git:<YOUR_TOKEN>@git.overleaf.com/".insteadOf "https://git.overleaf.com/"
```

Get token from: https://www.overleaf.com/user/settings (Git Integration section)

## Claude Code

```bash
claude /login
```

## Vault Setup

```bash
git clone --recurse-submodules https://github.com/lfb-1/Vault.git ~/Vault
cd ~/Vault && bash .config/setup.sh
```

## Zellij-tmux-shim

```bash
git clone https://github.com/lfb-1/zellij-claude-teams-setup.git ~/zellij-claude-teams-setup
cd ~/zellij-claude-teams-setup && bash install.sh
```
