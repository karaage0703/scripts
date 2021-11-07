# scripts
Useful shell scripts or python scripts or something... for Mac OS or Linux(Ubuntu)


# Environment
Mac OS X or Linux(Ubuntu)

# Setup
```sh
$ cd
$ git clone https://github.com/karaage0703/scripts.git
$ sudo ln -sf ~/scripts/nyamazu.sh /usr/local/bin/nyamazu
$ sudo ln -sf ~/scripts/numbering_filename.sh /usr/local/bin/numbering_filename
```

# Usage
## nyamazu
Full-text search script

Execute following command:
```sh
$ nyamazu search_word search_place
```

ex:
```sh
$ nyamazu test /
```

Following command same as `$ nyamazu test .`:
```sh
$ nyamazu test 
```

## proxy.sh
Setting proxy script

Edit `proxy.sh` 

Execute following command:
```sh
$ source ~/scripts/proxy.sh
```

## numbering_filename
Numbering filename script


If there are following files:
```
100.jpg abc.jpg xyz_100.jpg
```

Execute following command in directory including above files:
```sh
$ numbering_filename
```

Files are renamed like below:
```
000001.jpg 000002.jpg 000003.jpg
```

## compress_all_video
Compress all video file script

Install ffmpeg and execute following command:

```sh
$ ./compress_all_video.sh
```

reference: [複数動画を一括で10分の1くらいに圧縮する方法（Win/Mac）](https://zenn.dev/karaage0703/articles/2fa835a1cbe250)

# Special Thanks
- http://lab.tricorn.co.jp/suzuki/1543
- https://github.com/Linux-Admins/Shell
- https://github.com/janosgyerik/shellscripts
- http://myenigma.hatenablog.com/entry/2015/06/23/220100
- http://www.nilab.info/z3/20111010_01.html


# License
This software is released under the MIT License, see LICENSE.
