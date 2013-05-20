package MyApp;

use strict;
use warnings;

use Test::More tests => 1;

use Dancer2;
use Dancer2::Test;

set template => 'Caribou';

get '/hi/:name' => sub {
    template 'welcome' => { name => param('name') };
};

response_content_like '/hi/yanick' => qr/hello yanick/;

get '/howdie/:name' => sub {
    template 'howdie' => { name => param('name') };
};

response_content_like '/howdie/yanick' => qr/howdie yanick/;

get '/hullo/:name' => sub {
    
    set layout => 'main';
    template 'hullo' => { name => param('name') };
};

response_content_like '/hullo/yanick' => qr/hullo yanick/;
