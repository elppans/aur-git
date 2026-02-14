# aurm

Professional AUR maintainer helper for Arch Linux.

Helper profissional para maintainers do AUR no Arch Linux.

---

## 🌎 Language | Idioma

- 🇺🇸 [English](#-english)
- 🇧🇷 [Português](#-português)

---

# 🇺🇸 English

## ✨ Features

- Clone AUR packages
- Automatic update workflow (checksums, .SRCINFO, commit & push)
- Optional automatic PGP key import
- Sync GitHub project → AUR repository
- Local build helper
- Automatic SSH setup
- Automatic SSH public key copy to clipboard
- Safe package removal with strong confirmation
- Automatic language detection (Portuguese / English)
- Colored output
- Built-in help with examples

---

## 📦 Installation

### From AUR

```bash
yay -S aurm
````

or

```bash
paru -S aurm
```

---

### Manual Installation

```bash
git clone https://github.com/elppans/aurm.git
cd aurm
makepkg -si
```

---

## 🚀 Usage

### Clone a package

```bash
aurm package-name
```

---

### Update a package

```bash
cd package-name
aurm -u
```

This will:

* Update checksums
* Generate `.SRCINFO`
* Run `namcap`
* Commit changes
* Pull with rebase
* Push to AUR

---

### Force PGP import

```bash
aurm --force-pgp
```

---

### Sync GitHub → AUR

```bash
aurm -cp ~/projects/mypkg ~/aur/mypkg
```

Automatically syncs files and performs update + push.

---

### Build locally

```bash
aurm build
```

---

### Setup SSH automatically

```bash
aurm setup
```

Creates SSH config and key if missing and copies public key to clipboard.

Then go to:

```
https://aur.archlinux.org
My Account → SSH Public Keys
```

---

### Remove package

```bash
aurm remove package-name
```

Requires strong confirmation.

---

### Help

```bash
aurm --help
```

---

### Version

```bash
aurm --version
```

---

## 📋 Dependencies

### Required

* bash
* git
* openssh
* rsync
* gnupg
* pacman-contrib

### Optional

* namcap
* wl-clipboard
* xclip
* xsel

---

## 🔐 Security

* Requires SSH authentication
* Strong removal confirmation
* Explicit PGP import option
* No automatic destructive actions

---

## 📄 License

MIT License
Copyright (c) 2026 Elppans

---

# 🇧🇷 Português

## ✨ Recursos

* Clona pacotes do AUR
* Fluxo automático de atualização (checksums, .SRCINFO, commit & push)
* Importação opcional automática de chaves PGP
* Sincronização GitHub → repositório AUR
* Auxiliar de build local
* Configuração automática de SSH
* Cópia automática da chave SSH para clipboard
* Remoção segura de pacote com confirmação forte
* Detecção automática de idioma (Português / Inglês)
* Saída colorida
* Ajuda integrada com exemplos

---

## 📦 Instalação

### Pelo AUR

```bash
yay -S aurm
```

ou

```bash
paru -S aurm
```

---

### Instalação Manual

```bash
git clone https://github.com/yourusername/aurm.git
cd aurm
makepkg -si
```

---

## 🚀 Uso

### Clonar pacote

```bash
aurm nome-do-pacote
```

---

### Atualizar pacote

```bash
cd nome-do-pacote
aurm -u
```

Isso irá:

* Atualizar checksums
* Gerar `.SRCINFO`
* Executar `namcap`
* Fazer commit
* Pull com rebase
* Push para o AUR

---

### Forçar importação PGP

```bash
aurm --force-pgp
```

---

### Sincronizar GitHub → AUR

```bash
aurm -cp ~/projetos/meupkg ~/aur/meupkg
```

Sincroniza arquivos e executa update automático.

---

### Compilar localmente

```bash
aurm build
```

---

### Configurar SSH automaticamente

```bash
aurm setup
```

Cria configuração e chave SSH se necessário e copia a chave pública para o clipboard.

Depois acesse:

```
https://aur.archlinux.org
My Account → SSH Public Keys
```

---

### Remover pacote

```bash
aurm remove nome-do-pacote
```

Exige confirmação forte.

---

### Ajuda

```bash
aurm --help
```

---

### Versão

```bash
aurm --version
```

---

## 📋 Dependências

### Obrigatórias

* bash
* git
* openssh
* rsync
* gnupg
* pacman-contrib

### Opcionais

* namcap
* wl-clipboard
* xclip
* xsel

---

## 🔐 Segurança

* Requer autenticação SSH
* Confirmação forte para remoção
* Importação PGP explícita
* Nenhuma ação destrutiva automática

---

## 📄 Licença

MIT License
Copyright (c) 2026 Elppans
