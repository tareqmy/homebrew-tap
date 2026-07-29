# Homebrew Tap for Tareq's Applications (`tareqmy/tap`)

Official [Homebrew](https://brew.sh/) tap for applications maintained by [@tareqmy](https://github.com/tareqmy).

## 🍺 How to Use This Tap

### Option 1: Direct Install (Recommended)

You can install any application directly from this tap without tapping separately:

```sh
brew install tareqmy/tap/<formula>
```

For example:

```sh
brew install tareqmy/tap/gitwig
brew install tareqmy/tap/ferronote
```

---

### Option 2: Add the Tap First

Add this tap to your Homebrew installation:

```sh
brew tap tareqmy/tap
```

Then install any formula directly:

```sh
brew install gitwig
brew install ferronote
```

---

## 📦 Available Formulas

| Formula | Description | Install Command |
| :--- | :--- | :--- |
| **`gitwig`** | Rust-based Terminal User Interface (TUI) for Git | `brew install tareqmy/tap/gitwig` |
| **`ferronote`** | Blazing-fast terminal note-taking app inspired by Notational Velocity | `brew install tareqmy/tap/ferronote` |

---

## 🔄 Updating Packages

To update packages installed from this tap:

```sh
brew update
brew upgrade
```
