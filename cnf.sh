#PRE INSTALL

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

sudo apt-get install curl
wget -qO- https://get.docker.com/ | sh

sudo add-apt-repository ppa:fkrull/deadsnakes

wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update;
sudo apt-get upgrade;
sudo apt-get install vim git tree colordiff sysstat ack-grep htop skype subversion mysql-server memcached rabbitmq-server \
    libgeoip1 libgeoip-dev libmemcached-dev zlib1g-dev libssl-dev python-dev build-essential mysql-server python-mysqldb \
    libmysqlclient-dev python-virtualenv python-pip postgresql-9.4 postgresql-contrib terminator \
    libpq-dev apache2-utils curl redis-server libxml2-dev  libxslt1-dev
sudo apt-get install gfortran libblas-dev liblapack-dev python-numpy python-scipy python-matplotlib libxft-dev 
sudo apt-get install apache2 php5 php5-mysql php5-xdebug php5-curl php5-memcache php5-mongo
sudo apt-get nginx-full geoip-database

#store git password
sudo apt-get install libgnome-keyring-dev
sudo make --directory=/usr/share/doc/git/contrib/credential/gnome-keyring
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

git config --global push.default simple
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool
git config --global user.email ""
git config --global user.name ""
git config --global core.editor vim

sudo apt-get install exuberant-ctags nodejs
cd ~; git clone  https://github.com/niko83/.vim.git .vim
cd ~/.vim && git submodule init && git submodule update
ln -s ~/projects/configs/.vimrc ~/.vim_local



#VIM
#source ~/.vim/rc.vim
#
#" Fast scrool
#nnoremap <C-e> 3<C-e>
#nnoremap <C-y> 3<C-y>
#
#" Session UI
#nnoremap <Leader>ss :SSave<CR>
#nnoremap <Leader>sr :Unite session<CR>
#nnoremap <Leader>sl :SLoad last.vim<CR>
#
#let g:pymode_lint_ignore = "E501,C0110,C0111"
#let g:pymode_lint_ignore = "E501,C0110,C0111,W191,W0312,E711,E126,W0403,E126,D101,D102,D103,D100"
#let g:pymode_lint_checker = "pylint,pep8,pyflakes,mccabe"
#" ~/.vim/bundle/python-mode/pymode/libs/pylama/lint/pylama_pylint/pylint.rc
#" [FORMAT]
#" max-line-length=99
#" [MASTER]
#" init-hook='import sys; sys.path.append("/home/niko/testproject/");sys.path.append("/var/www/test_sp/");'
#
#au BufNewFile,BufRead *.py setl colorcolumn=80,99
#
#" call jsmode#Default("g:jsmode_largefile", 10)
#
#set tpm=100
#
#" ~/.vim/bundle/python-mode.git/pylibs/ropevim.py
#" 342 if isinstance(ci['info'], unicode):
#" 343 ci['info'] = repr(ci['info'])



pip install --upgrade pip
pip install setuptools virtualenv -U
sudo pip install virtualenvwrapper
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

echo "export HISTSIZE=10000" >> ~/.bashrc


# sudo vim /etc/postgresql/9.3/main/postgresql.conf
# shared_preload_libraries = 'pg_stat_statements'
# CREATE EXTENSION pg_stat_statements

#sudo vim /etc/postgresql/9.3/main/pg_hba.conf
#
## исправляем в этой строке peer на md5
##local   all             all                                     md5
#sudo /etc/init.d/postgresql restart
#sudo su postgres
#createuser -P username
#psql -c"ALTER USER username WITH SUPERUSER;"
#createdb -Uusername -W "portal_trunk"
##проверяем
#psql -Uusername -W portal_trunk

sudo wget http://hg.rabbitmq.com/rabbitmq-management/raw-file/rabbitmq_v2_8_7/bin/rabbitmqadmin -O /usr/local/bin/rabbitmqadmin
sudo chmod +x /usr/local/bin/rabbitmqadmin
sudo sh -c 'rabbitmqadmin --bash-completion > /etc/bash_completion.d/rabbitmqadmin'

sudo /usr/lib/rabbitmq/bin/rabbitmq-plugins enable rabbit
sudo rabbitmqctl add_user niko qweR123$
sudo rabbitmqctl add_vhost /niko
sudo rabbitmqctl set_permissions -p /niko niko ".*" ".*" ".*"
sudo rabbitmqctl set_user_tags niko administrator

mkdir $HOME/.pip_download_cache
echo "export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache" >> ~/.bashrc

wget -O ~/.django_bash_completion.sh https://raw.github.com/django/django/master/extras/django_bash_completion
echo "source $HOME/.django_bash_completion.sh" >> ~/.bashrc

[mysqld]                                                                                               
character-set-server = utf8
collation-server = utf8_general_ci
transaction-isolation = READ-COMMITTED
default-time-zone = '+00:00'


USEFUL
======
git show remote origin
git log --graph --color-words --color --source --decorate --all

glog = log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) - %C(dim white)%an%C(reset)%C(bold yellow)%d%C(reset)' --all
