# Deploy

## Prerequisites

```zsh
brew update
brew install azure-cli
brew install azcopy
```

## Sync

```zsh
azcopy sync "../../frontend/*" "https://<storage-account-name>.blob.core.windows.net/$web" --recursive 
```

## Issue

### Auth

AzCopy works with SAS but not with the other authentication methods.

Even in storage container in Azure portal, auth with "Microsoft Entra user account" does not work. Auth with "Access key" works instead.
