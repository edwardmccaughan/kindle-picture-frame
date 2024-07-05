# Kindle AI art picture frame

Turn an old kindle (gen 4) into a an picture frame that displays randomly generated AI images using the dalle-3 api

## installation

* jailbreak the kindle, copy `picture-frame` to the kindle and configure cron to run `init-image.sh` every few minutes
* configure `.env`with an openai key, and the scp destination
* run `ruby create_and_upload.rb` with a cron job etc.

---

![image](https://github.com/edwardmccaughan/kindle-picture-frame/assets/141722/d2b36367-20c5-47e9-b0d4-4ead3e371677)
![image](https://github.com/edwardmccaughan/kindle-picture-frame/assets/141722/7de75fb8-5b4f-411c-badf-9c31096d018e)
![image](https://github.com/edwardmccaughan/kindle-picture-frame/assets/141722/669e3e9d-fadd-4c7b-940b-38322eac8af8)
![image](https://github.com/edwardmccaughan/kindle-picture-frame/assets/141722/e1ac10b3-9e5c-4c47-a0a0-c705d6df9e22)
![image](https://github.com/edwardmccaughan/kindle-picture-frame/assets/141722/76c0d544-1716-4651-9c50-31aa728b445a)
![image](https://github.com/edwardmccaughan/kindle-picture-frame/assets/141722/4288476c-795f-4e96-9233-99fbd0cf44ef)

