#
# Cookbook Name:: pokenum
# Recipe:: default
#
#


%w{libpoker-eval libpoker-eval-dev php5-dev php5-cli git}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template '/etc/php5/cli/php.ini' do
  source 'php.ini.erb'
  mode 0440
  owner "root"
  group "root"
end

template '/tmp/test.php' do
  source 'test.php.erb'
  mode 0440
  owner "root"
  group "root"
end

execute "install pokenum" do
  command "echo 'installing pokenum...'"
  cwd "/tmp"
  command "rm -fr /tmp/pokenum-php; git clone https://github.com/j-c-h-e-n-g/pokenum-php.git; phpize"
  command "./configure --enable-pokenum"
  cwd "/tmp/pokenum-php"
  command "make && make install"
  command "touch /var/run/pokenum.installed"
  action :run
not_if { ::File.exists?("/var/run/pokenum.installed") }
end



