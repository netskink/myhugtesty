

# Install the cli

```
mkdir venv
python3 -m venv venv/try1
source venv/try1/bin/activate

# deactivate
source  venv/try1/bin/activate

pip install --upgrade huggingface_hub
pip install --upgrade 'huggingface_hub[cli]'
```

Run the cli command with huggingface-cli, for some reason on zsh, my autocomplete does
not work

```
$ huggingface-cli login
```

Paste the read and the write key and say no to 'apply as git credentials'


```
$ huggingface-cli download --repo-type dataset netskink/hftesty
$ huggingface-cli download --repo-type dataset rtp-gcp/icy_bridge_data
```

This puts files in the cache

```
$ huggingface-cli download --repo-type dataset netskink/hftesty
$ ls -al ~/.cache/huggingface/hub/datasets--netskink--hftesty/snapshots/2188eecf913dc40800c51777b1e84e9498b5d10e
$ cp ~/.cache/huggingface/hub/datasets--netskink--hftesty/snapshots/2188eecf913dc40800c51777b1e84e9498b5d10e/BUS40_MACY_20220114Z1250.jpg .
```

Upload a file

```
$ huggingface-cli upload netskink/hftesty ./testupload.jpg --repo-type=dataset
```


