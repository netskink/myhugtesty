You can use git to upload to your "dataset"

https://huggingface.co/docs/datasets/share

The "dataset card" is the top level README.md



cd to dir where the jpg files are located

```
git lfs track *.jpg
git add .gitattributes
git add *.jpg
git commit -m "added NC147 and Davis Dr 2022 01 12 images"
git push
```


