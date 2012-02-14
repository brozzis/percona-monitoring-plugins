# This is the template definition file.  To use it, see make-template.pl.  This
# one goes with the ss_get_by_ssh.php script.
#
# This program is copyright (c) 2008 Baron Schwartz. Feedback and improvements
# are welcome.
#
# THIS PROGRAM IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
# MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, version 2.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 59 Temple
# Place, Suite 330, Boston, MA  02111-1307  USA.

# Autobuild: ss_get_by_ssh.php

{
   name   => 'Apache Server',
   hash   => 'hash_02_VER_73892c19311e1fcf88bc41b0daed18c7',
   version => {
      version => '1.1.8',
      hash    => 'hash_06_VER_77f3b553c351bf1e678c9b6c93a2266e',
   },
   checksum    => 'hash_06_VER_259de583017cbc4be74c359930d0af12',
   graphs => [
      {  name       => 'Apache Requests',
         base_value => '1000',
         hash       => 'hash_00_VER_c919ea3bf4e1c5248aff68bda0225ff3',
         dt         => {
            hash       => 'hash_01_VER_f9c42195d10d5c43ae680625c29ecf5c',
            input      => 'Get Apache Stats',
            APACHE_Requests => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_4a03ef2973154a0e52ee0fc3f532983e'
            },
         },
         items => [
            {  item   => 'APACHE_Requests',
               color  => '803405',
               task   => 'hash_09_VER_f5f45137eea74d8a9d64a78769ef9471',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_4886ba8ff63f3b35ac8676e162508b39',
                  'hash_10_VER_7ba4f3bdf4f08239d69e512b40f9d1a1',
                  'hash_10_VER_942fe5f115709960781d6486c18f5db7',
                  'hash_10_VER_e686f710621eb420c27f00b2e593bc97'
               ],
            },
         ],
      },
      {  name       => 'Apache Bytes',
         base_value => '1024',
         hash       => 'hash_00_VER_7a2e264c5d52cc8fe938beff86081f0e',
         dt         => {
            hash       => 'hash_01_VER_4aaee4ddc5048cf427e5a077783e0073',
            input      => 'Get Apache Stats',
            APACHE_Bytes_sent => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_32435aaf4845cd6c251cbbc91f133851'
            },
         },
         items => [
            {  item   => 'APACHE_Bytes_sent',
               color  => '5D868C',
               task   => 'hash_09_VER_02587d6029c37748001f962bf4763f7e',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_c8bdabf9d6a22c115829f34593fa04b1',
                  'hash_10_VER_329f0530c5e785da7624fcdcd2538a22',
                  'hash_10_VER_85bbe6b237894fd386a3565499b15e2d',
                  'hash_10_VER_ccef1b50cdd8eec456a0891c33f0270c'
               ],
            },
         ],
      },
      {  name       => 'Apache CPU Load',
         base_value => '1000',
         hash       => 'hash_00_VER_a5c83dfc0b52a746a93e4ebdcda326ef',
         dt         => {
            hash       => 'hash_01_VER_9cdf1586ca4c148131787a4431545684',
            input      => 'Get Apache Stats',
            APACHE_CPU_Load => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_2c0b5d3f5cd53363b94554b9e885e634'
            },
         },
         items => [
            {  item   => 'APACHE_CPU_Load',
               color  => '700004',
               task   => 'hash_09_VER_dcbbbfeedba772ea1a4f22e84bd3ff6c',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_3d3b9d125d38be561fb2268bb9fcbfd4',
                  'hash_10_VER_e7e2240b1c2be0ef31811ba2b6c45527',
                  'hash_10_VER_6209381b6d51190e9d57694d0b1479ec',
                  'hash_10_VER_3c1b7135e33109978896ba0d9ad811e4'
               ],
            },
            {  item   => 'APACHE_CPU_Load',
               color  => '000000',
               task   => 'hash_09_VER_a0d3e200ca7ad97a5c1534cebaf346aa',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_d00ac8145df4e1dfe30126e51be3dd61',
               ],
            },
         ],
      },
      {  name       => 'Apache Workers',
         base_value => '1000',
         hash       => 'hash_00_VER_5b1a9e8542dcf1e5fdb71ae2457c4141',
         dt         => {
            hash       => 'hash_01_VER_f55da464cbc351f2b006438816194720',
            input      => 'Get Apache Stats',
            APACHE_Idle_workers => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_fc7d9f93b5d5a7f892e05e7a77d3287f'
            },
            APACHE_Busy_workers => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_0e2969a383c373218823cc6434cdfda4'
            },
         },
         items => [
            {  item   => 'APACHE_Idle_workers',
               color  => 'EEB78E',
               task   => 'hash_09_VER_6448c8be4dc370ea714ebb68914336df',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_d77fcbc477938fa63a1c28b5f1c01348',
                  'hash_10_VER_81d32fd494417bd7b46d5f277b4e2365',
                  'hash_10_VER_e2dd730f7a6c8dd3a87ef4891564da4b',
                  'hash_10_VER_d32bfe77e561aacf253aa02ea3516ef4'
               ],
            },
            {  item   => 'APACHE_Busy_workers',
               color  => '47748B',
               task   => 'hash_09_VER_af51aadda6ad8afa465049af3197d86d',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_75c78940bd02a05c1309f7378e70fec3',
                  'hash_10_VER_0479a4b4122812fa5d2908170511ee2e',
                  'hash_10_VER_6da60cb7eea1c6bf40df9b8eb64a2522',
                  'hash_10_VER_20dbd04b3324fd7ca36515ce0a662321'
               ],
            },
         ],
      },
      {  name       => 'Apache Scoreboard',
         base_value => '1000',
         hash       => 'hash_00_VER_f60b74bf26f749769ba25fc470e360ec',
         dt         => {
            hash       => 'hash_01_VER_6e5719ef70d8a9a820103eb07f336756',
            input      => 'Get Apache Stats',
            APACHE_Waiting_for_connection => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_6b97bacebd3e8d530c397cd5bfa98aea'
            },
            APACHE_Starting_up => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_45018a757444027d11c0ce0b641dc07c'
            },
            APACHE_Reading_request => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_e180ea674149dfb1434afa01e50613c2'
            },
            APACHE_Sending_reply => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_30766a565dca68e7780f77bbac07d0a9'
            },
            APACHE_Keepalive => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_6b9a1ed422e5df89522039cf05bdd0b1'
            },
            APACHE_DNS_lookup => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_bfeb1f5646138f8ea8b941ed79fdc003'
            },
            APACHE_Closing_connection => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_8b856a8766315516ea187ecb2fbaa2ee'
            },
            APACHE_Logging => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_15361d610403f0e73f24b7e9e7766a10'
            },
            APACHE_Gracefully_finishing => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_b704aa7f1ef090776d65ea7938af4a85'
            },
            APACHE_Idle_cleanup => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_93e6fb4c447d6615e3cfcbf860540357'
            },
            APACHE_Open_slot => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_e35d473f2419852bdce7576648c9821a'
            },
         },
         items => [
            {  item   => 'APACHE_Waiting_for_connection',
               color  => 'DE0056',
               task   => 'hash_09_VER_f5cb9a27bc339cb5cbfd264bcea16ead',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_8e38a88fbb19a2222b29c4dc0bd0fc8d',
                  'hash_10_VER_14b75abfd17f3c5ac640d7723ac16cf4',
                  'hash_10_VER_210e2c423b65c98a0be1df5db95ddcab',
                  'hash_10_VER_51748a634f48468d636c96f953adecb2'
               ],
            },
            {  item   => 'APACHE_Starting_up',
               color  => '784890',
               task   => 'hash_09_VER_43b520c92bc1a2559787d10f9b721e6b',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_f0e0dc0ed69bb21a1cc08929968d9b05',
                  'hash_10_VER_52bc6b651e868ebc8834cd73df4230db',
                  'hash_10_VER_0dbb240bac7a2319fb51114f12c7e596',
                  'hash_10_VER_2949a121cfb8b9253c7730ed62e542c6'
               ],
            },
            {  item   => 'APACHE_Reading_request',
               color  => 'D1642E',
               task   => 'hash_09_VER_4f83ba37f71ab054d0195bfa1b98e5c6',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_3324c9d0c2b32749511c083bbc8f6de6',
                  'hash_10_VER_12eca125791c0031173196817a656e3e',
                  'hash_10_VER_c0d8877f8d539e0868293457394c44fe',
                  'hash_10_VER_e64318deb6813163a57761867b94e7d6'
               ],
            },
            {  item   => 'APACHE_Sending_reply',
               color  => '487860',
               task   => 'hash_09_VER_23adcee9cab3ca4f14765fe3c7253242',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_43ef3f81769b5825318aab786f6597b4',
                  'hash_10_VER_a848dcb6d2e6cb236d74feecd4665dc8',
                  'hash_10_VER_ba81d789ec90dcac77fcba150a993c2b',
                  'hash_10_VER_384ffdd9154e378da2164fbdb5d2911d'
               ],
            },
            {  item   => 'APACHE_Keepalive',
               color  => '907890',
               task   => 'hash_09_VER_927222ed371558df199e36cb291e07c3',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_4126af1166975a1f29b5f897f2e02624',
                  'hash_10_VER_29e037bba6ef0d4be45c3d459a7ea3d5',
                  'hash_10_VER_cb3585d91618ff8b09507922176437f0',
                  'hash_10_VER_75561b968a3ac85a83a919047a53fdb0'
               ],
            },
            {  item   => 'APACHE_DNS_lookup',
               color  => 'DE0056',
               task   => 'hash_09_VER_7964389e04e201754bce92a1ab9b0f45',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_aff3474f146a819358f3f6d9c2b621aa',
                  'hash_10_VER_c4d5b7b33264109f21f36501ca648770',
                  'hash_10_VER_1adfe31481e04218240afd91d1bee9b1',
                  'hash_10_VER_bc25d3e35d0e439c63474183c0e8abdb'
               ],
            },
            {  item   => 'APACHE_Closing_connection',
               color  => '1693A7',
               task   => 'hash_09_VER_83abaaf1c1869fd008892bbd263f9ba8',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_77ad183429b299aedc29676e72c40d2e',
                  'hash_10_VER_2e24a9eb579094caba9215e406dd2b23',
                  'hash_10_VER_910964396a523d50bb6f12014be0d5e9',
                  'hash_10_VER_fba625d3eedb73abd4d3399cf36cabce'
               ],
            },
            {  item   => 'APACHE_Logging',
               color  => 'FF7D00',
               task   => 'hash_09_VER_f9b56cdac7d6bde2baed1354251463a1',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_8b09886507f8233875fe93ef0b24ca58',
                  'hash_10_VER_cd0ea9b511e4f2b3e4a2b6f270196b01',
                  'hash_10_VER_23076f41cd1ccee831d00908d823815a',
                  'hash_10_VER_808230a30be8b51ab1dc6bc7f4115fed'
               ],
            },
            {  item   => 'APACHE_Gracefully_finishing',
               color  => 'B83A04',
               task   => 'hash_09_VER_08428235371b20af7ef6c397d66c706f',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_b8ec43fbea7ac6d147f41e44cb68f6c8',
                  'hash_10_VER_5654785da70d2161933204e834392b61',
                  'hash_10_VER_ec54958c8153e29cf0f869e364737e3c',
                  'hash_10_VER_deba211070590241a2c58e3f2a12dc5d'
               ],
            },
            {  item   => 'APACHE_Idle_cleanup',
               color  => '540202',
               task   => 'hash_09_VER_44cf9ae38e5273c0d55b30de0d32ead1',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_93e67aab28dc09bb7ab53cdfbab3dbe6',
                  'hash_10_VER_b2a57c635fddb84ee34e89a900462c70',
                  'hash_10_VER_7178419370c89bb6ff82b2c1ed65073b',
                  'hash_10_VER_4d051614ada7203d727bc65d166b0636'
               ],
            },
            {  item   => 'APACHE_Open_slot',
               color  => '6E645A',
               task   => 'hash_09_VER_d2fb4326379df5e08ca2e0ea269291ef',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_0609dfe3177b880beddcc0f1c68f47bc',
                  'hash_10_VER_bdb6a987087674f282ff2af8d4fa7a9a',
                  'hash_10_VER_35a1a7d8495b07f431aacb1252899328',
                  'hash_10_VER_a029caad27fedd71986e3a8ac51443e2'
               ],
            },
         ],
      },
   ],
   inputs => {
      'Get Apache Stats' => {
         type_id      => 1,
         hash         => 'hash_03_VER_2b804ed27a849cba3c0d028dd82c087e',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type apache --items <items>',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_36c5df1a60194652f8fd63f941dc99a7',
               name        => 'hostname'
            },
         ],
         outputs => {
            APACHE_Requests               => 'hash_07_VER_2dd3706fda20c335021e01ba89ad46ca',
            APACHE_Bytes_sent             => 'hash_07_VER_176792b65f67b89314c2d0fdfc990f14',
            APACHE_CPU_Load               => 'hash_07_VER_8902bb51439e3d1e04e67deb8d3771bd',
            APACHE_Idle_workers           => 'hash_07_VER_e43724ec3b8d65747338f762279eb279',
            APACHE_Busy_workers           => 'hash_07_VER_9e96f24e26b87ef28d27166613cdcd8d',
            APACHE_Waiting_for_connection => 'hash_07_VER_5380cc7f6d855b8b03df2b7529d56fcd',
            APACHE_Starting_up            => 'hash_07_VER_fd0d8b2e6ab119d070bd370da9a25591',
            APACHE_Reading_request        => 'hash_07_VER_3d3305fa52c23ebaa1961201f9af6ddb',
            APACHE_Sending_reply          => 'hash_07_VER_0bdb150fa2458bfb6910ab5ab4782ec0',
            APACHE_Keepalive              => 'hash_07_VER_33763ca0a2d71ea0eda166f3889106d2',
            APACHE_DNS_lookup             => 'hash_07_VER_1d5f6ca0a5d998ddd445cdecca4c70b0',
            APACHE_Closing_connection     => 'hash_07_VER_71558c1bf3f967a6383b0350808eb1bb',
            APACHE_Logging                => 'hash_07_VER_1d3e4c6b5882f10e3ada52c9353a7997',
            APACHE_Gracefully_finishing   => 'hash_07_VER_bd600fdd9df21e99c4b94f7f77d2917b',
            APACHE_Idle_cleanup           => 'hash_07_VER_8d4698c6ffd74722796f765cbd83be87',
            APACHE_Open_slot              => 'hash_07_VER_6b4c99c5731ce8a4e379f0ae748a130d',
         },
      },
   },
};
