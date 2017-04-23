#!/usr/bin/env perl
 use Mojo::Webqq;
 my ($host,$port,$post_api);

 # 一般情况下不需要修改，直接启动即可。
 
 $host = "0.0.0.0"; #发送消息接口监听地址，没有特殊需要请不要修改
 $port = 5000;      #发送消息接口监听端口，修改为自己希望监听的端口
 $post_api = 'http://127.0.0.1:3000';  #回调Url
 
 my $client = Mojo::Webqq->new();
 $client->load("ShowMsg");
 $client->load("Openqq",data=>{listen=>[{host=>$host,port=>$port}], post_api=>$post_api, post_event_list => ['login','stop','state_change','input_qrcode','new_group','new_friend','new_group_member','lose_group','lose_friend','lose_group_member']});
 $client->run();