---
title: Install Jekyll on Windows Using WSL
date: 2023-11-25
---

I was not interested in installing Jekyll and dependency software directly on my Windows operating system: 1) because I like to keep my environment as free as possible from development software as possible, 2) it frees me up from going in to modify my Windows path environment variable, 3) the Linux deb packages make things go much more smoothly.

Jekyllrb does have installation instructions on how to install and run [Jekyll via Windows Subsystem for Linux(wsl)](https://jekyllrb.com/docs/installation/windows){:target="_blank"} but I like to record the steps that I took in case I ever have to recreate my environment.  And often times I find there is an important tweek here or there that I have to make.

### Install WSL

Open ***Windows Features*** and enable **Windows Subsystem for Linux**.  ***Windows Features*** can be found using the Windows search tool.  

![Windows Features]({% link assets/images/docs/install-jekyll-on-windows-using-wsl/windows-features.png %}){:class="gs-image-responsive" style="max-width: 559px;"}

### Install the Debian app

Open ***Microsoft Store***, search for ***Debian*** and install the app.

![Debian Microsoft Store]({% link assets/images/docs/install-jekyll-on-windows-using-wsl/debian-microsoft-store.jpg %}){:class="gs-image-responsive" style="max-width: 841px;"}

### Configure Debian

Update the local repository index in order to install the latest software versions from the repositories.

```
$ sudo apt-get update
$ sudo apt-get dist-upgrade
```

### Install Ruby

Jekyll is a Ruby Gem.

```
$ sudo apt-get install ruby-full build-essential zlib1g-dev
```

You can check what version of Ruby, RubyGems and the installation location.

```
$ ruby -v
$ gem -v
$ gem env
```

### Install Gem

Don't install gems as the root user.  Rather setup a gems folder in your user account home.  Make sure you are in the user's home directory and run the following.

```
$ cd ~
$ echo '# Install Ruby Gems to ~/gems' >> .bashrc
$ echo 'export GEM_HOME="$HOME/gems"' >> .bashrc
$ echo 'export PATH="$HOME/gems/bin:$PATH"' >> .bashrc
$ source .bashrc
$ nano .bashrc
```

### Install Bundler

The next step that jekyllrb.com has is to install both Jekyll and [Bundler](https://bundler.io){:target="_blank"}.  I'm going to deviate from that and just install bundler and opt to use Bundler to add Jekyll as a dependency in any jekyll projects that I create.

```
$ gem install bundler
```

### Configure Jekyll

At this this point, I found that I had to restart my computer to get the remaining steps to work.

Create your project folder and change to that directory.  Then create a new Bundler project.

```
$ bundle init
```

[Configure Bundler](https://jekyllrb.com/tutorials/using-jekyll-with-bundler/#configure-bundler){:target="_blank"} to install gems in a local isolated environment to prevent conflict with other gems on your system. 

```
$ bundle install --path vendor/bundle
```

Now whenever you see the message *Run 'bundle install' to install missings gems.* when performing a build, running the below command will install the gems into './vendor/bundle' keeping your project environment clean and isolated.

```
$ bundle install
```

Add Jekyll as a dependency of the project.

```
$ bundle add jekyll
```

To build the project

```
$ bundle exec jekyll build
```

To serve the content in order to build and test locally

```
$ bundle exec jekyll serve
```