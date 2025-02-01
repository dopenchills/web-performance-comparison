# Deploy

## Prerequisites

```zsh
brew update
brew install azure-cli
brew install azcopy
```

## Sync

```zsh
azcopy sync './frontend/dist/' 'https://webperformancestorage.blob.core.windows.net/$web?<SAS>' --recursive
```

## Issue

### Auth

AzCopy works with SAS but not with the other authentication methods.

Even in storage container in Azure portal, auth with "Microsoft Entra user account" does not work. Auth with "Access key" works instead.
