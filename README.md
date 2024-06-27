# Kindle AI art picture frame

Turn an old kindle (gen 4) into a an picture frame that displays randomly generated AI images

## installation

* jailbreak the kindle, copy `picture-frame` to the kindle and configure cron to run `init-image.sh` every few minutes
* configure `.env`with an openai key, and the scp destination
* run `ruby create_and_upload.rb` with a cron job etc.
