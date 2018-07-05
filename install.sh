adduser --disabled-login --gecos 'rails' rails
apt update && apt upgrade -y && apt autoremove -y

apt install -y \
    curl \
    vim \
    wget \
    build-essential \
    git \
    supervisor \
    zlib1g-dev \
    ruby${RUBY_VERSION}-dev \
    tzdata \
    libsqlite3-dev

curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt install -y nodejs

node -v
npm cache clean --force
npm install n -g

n stable
ln -sf /usr/local/bin/node /usr/bin/node

#git clone https://github.com/rbenv/rbenv.git /home/rails/.rbenv
#git clone https://github.com/rbenv/ruby-build.git /home/rails/.rbenv/plugins/ruby-build
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/rails/.bashrc
#/home/rails/.rbenv/plugins/ruby-build/install.sh
