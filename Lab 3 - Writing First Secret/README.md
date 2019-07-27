# Lab Module Introduction:

The goal of this lab module is to introduce students to the key/value secrets engine within HashiCorp Vault

## Estimated Time to Complete:

20-25 Minutes

## Lab Solution:

Provision a the key/vaule Vault secrets engine and configue secrets within the engine.

### Step 1 - Read secrets at secret/training path:

Execute the following command to read secrets at the secret/training path:

$ vault read secret/training

Expected output:

No Vaule found at secret/training

### Step 2 - Write a new secret into secret/training path:

Write a secret into secret/training path:

$ vault write secret/training username="studen01" password="p@$$w0rd"

Expected output:

Success! Data Written to: secret/training

### Step 3 - Read secrets in the secret/training path:

Now, read the secrets in secret/training path:

$ vault read secret/training

Expected output:

TBA TBA TBA


Retrieve only the "username" value from secret/training:

$ vault read -field=username secret/training

Expected output:
student01

### Step 4 - List Secret Keys using CLI:

List all the secret keys stored in the key/value secret backend:

$ vault list secret

Expected output:

TBA TBA TBA

The output displays only the keys and not the vaules

### Step 5 - Delete secrets Keys using CLI:

Delete secret/company within the current key/vaule secret backend:

$ vault delete secret/company

Try reading the secret/company path again:

$ vault read secret/training





************ This concludes the end of this Lab Module ************