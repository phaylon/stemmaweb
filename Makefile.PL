#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'stemmaweb';
all_from 'lib/stemmaweb.pm';

# Tradition libraries
requires 'Text::Tradition' => '2.0.0';
requires 'Text::Tradition::Directory';
requires 'Text::Tradition::Analysis' => '2.0.0';
requires 'Text::Tradition::StemmaUtil';
# Catalyst libraries
requires 'Catalyst::Runtime' => '5.90002';
requires 'Catalyst::Plugin::Cache';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::StackTrace';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Plugin::Unicode::Encoding';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Authentication::Credential::OpenID';
requires 'Catalyst::Model::KiokuDB';
requires 'Catalyst::View::Download::Plain';
requires 'Catalyst::View::JSON';
requires 'Catalyst::View::TT';
requires 'Catalyst::View::Email::Template';
requires 'Plack::Middleware::ReverseProxyPath';
## Auth:
requires 'Catalyst::Plugin::Authentication';
requires 'Catalyst::Plugin::Session';
requires 'Catalyst::Plugin::Session::Store::File';
requires 'Catalyst::Plugin::Session::State::Cookie';
requires 'CatalystX::Controller::Auth' => '0.22';
requires 'Catalyst::TraitFor::Controller::reCAPTCHA';
requires 'LWP::Protocol::https';
##
requires 'Date::Parse';
requires 'LWP::Protocol::https';
requires 'strictures';
requires 'Crypt::OpenSSL::X509';
requires 'Crypt::OpenSSL::RSA';
requires 'IO::All';
requires 'JSON::WebToken';
requires 'JSON::MaybeXS';
requires 'MIME::Base64';
requires 'File::Which';
requires 'List::Util';
requires 'Moose';
requires 'TryCatch';
requires 'namespace::autoclean';
requires 'Config::General'; # This should reflect the config file format you've chosen
                 # See Catalyst::Plugin::ConfigLoader for supported formats
requires 'Cache::FileCache';
test_requires 'Test::More' => '0.88';
test_requires 'LWP::Protocol::PSGI';
test_requires 'Test::WWW::Mechanize';
test_requires 'IPC::System::Simple';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
