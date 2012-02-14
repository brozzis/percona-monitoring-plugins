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
   name   => 'OpenVZ Server',
   hash   => 'hash_02_VER_5bb31324f1669d6ce5ecd04b3952db33',
   version => {
      version => '1.1.8',
      hash    => 'hash_06_VER_8945d7e23fc00707e8c84360af921eba',
   },
   checksum => 'hash_06_VER_474bd5605e4ce4e99895c6f632740b36',
   graphs => [
      {  name       => 'OpenVZ Kernel Memory',
         base_value => '1024',
         hash       => 'hash_00_VER_18e448b522e735114d761de9ab6f499d',
         dt         => {
            hash       => 'hash_01_VER_1b141976678400faaf15060c5d2edaf3',
            input      => 'Get OpenVZ Stats',
            OPVZ_kmemsize_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_c75d6c9b4d526b6852b88e042b9aa60a'
            },
            OPVZ_kmemsize_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_48ffb093729300e3e934ca83aa634712'
            },
         },
         items => [
            {  item   => 'OPVZ_kmemsize_held',
               color  => 'FF3838',
               task   => 'hash_09_VER_cbe623b8a399520918112225fe0d88ba',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_5f354c5dbb5268a2cb0ba6b56b834325',
                  'hash_10_VER_f37337a42a89ede61d9ff771f8a4a188',
                  'hash_10_VER_2e5755c9d00b11c26ccf3c649231f075',
                  'hash_10_VER_44ec5c56de6143f55e5b8c7be639530f'
               ],
            },
            {  item   => 'OPVZ_kmemsize_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_53f6c929beeab0e2b4a21b4b926896b6',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_cb3163dfaf4ef76f088525a73cdcce45',
                  'hash_10_VER_8b0def3d39c2be5ffccd1e7bebe3f782',
                  'hash_10_VER_e5aa0124da5103426332169906fdb6ee',
                  'hash_10_VER_a74750c4f53da7ba565c95a2d364b2dd'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Pages',
         base_value => '1024',
         hash       => 'hash_00_VER_5d8215c72d303ca3a10999d0863d5f8f',
         dt         => {
            hash       => 'hash_01_VER_ba64fa3c17e1e9e56b933142253aeda2',
            input      => 'Get OpenVZ Stats',
            OPVZ_lockedpages_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_306829bb01fc5a2e6a6844409d378a94'
            },
            OPVZ_lockedpages_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_f03ebc093213dc16f8b855ba6c0230c5'
            },
            OPVZ_privvmpages_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_a187e362a0ad0dac96995f62423418f0'
            },
            OPVZ_privvmpages_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_28d6c93bb08e19088373752c41c48c6a'
            },
            OPVZ_shmpages_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_591c15c2adc3bb45bb2819bc16d41425'
            },
            OPVZ_shmpages_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_a76746d81ea8033ee7a1c9a3a4297e07'
            },
            OPVZ_physpages_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_3e17464a80d9eaad69ac65971f4068e8'
            },
            OPVZ_physpages_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_88c7b7111b10e25ebf875b94c311897c'
            },
            OPVZ_vmguarpages_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_b315da125e7b7ebce492adfb8b73e0c0'
            },
            OPVZ_vmguarpages_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_7d2db7df42f46c9fa8ebbc293b969fde'
            },
            OPVZ_oomguarpages_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_04036a11a7f446d463cdef986b40cdc9'
            },
            OPVZ_oomguarpages_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_da60d1e30f7ba59d65dbc9cbda0206e4'
            },
         },
         items => [
            {  item   => 'OPVZ_lockedpages_held',
               color  => '11766D',
               task   => 'hash_09_VER_fb0c55f63aa30c885a856be699f0c214',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_be8cdfdbc0e02db87ca815272f3dae5f',
                  'hash_10_VER_f12d7a63d25bf8b93b4db7554523494e',
                  'hash_10_VER_c44fbdc09750521bbe3592390525021d',
                  'hash_10_VER_1bef18e121ce3bc5dcf0e3447cd680d6'
               ],
            },
            {  item   => 'OPVZ_lockedpages_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_d03defc0c8e945059dcfa24a0cbd93ab',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_7c85811c9f4266e91f744fc6f23269f1',
                  'hash_10_VER_b31c5923fb931fe3883fc59c5a1dfd31',
                  'hash_10_VER_defc65225fecf9039e1b912ec0832071',
                  'hash_10_VER_4686efd95ffa00c92930bc4b44ef3e0c'
               ],
            },
            {  item   => 'OPVZ_vmguarpages_held',
               color  => 'C9937F',
               task   => 'hash_09_VER_21377c68008a23f28316c86750fb2b7e',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_0353018734df58d9c4ca6adec23ecf8e',
                  'hash_10_VER_e80442fd2d2b4660c1b9ce76f5b354bb',
                  'hash_10_VER_5cee0294e388c0c132dfce8290cea500',
                  'hash_10_VER_789915a8451f89d4117ca9defea825da'
               ],
            },
            {  item   => 'OPVZ_vmguarpages_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_a954b0c9a93f5cd5bae6ee38179fa3c8',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_2b9afd2634ddf48cde81fbc088824cd0',
                  'hash_10_VER_5fb365528c9e4920daa19e999ea7a5dc',
                  'hash_10_VER_42f3d04feb99489e5c601d72dfdcee99',
                  'hash_10_VER_989ded1703eb9b1adabb1736bcf6aa6b'
               ],
            },
            {  item   => 'OPVZ_privvmpages_held',
               color  => '410936',
               task   => 'hash_09_VER_37bc33a84b63f70a37e8893813771499',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_db3ae604fdefc6f20a444b391e202a62',
                  'hash_10_VER_fb9c13499869c37b3d11ea2b1af5a05d',
                  'hash_10_VER_08ec5465936c7688d5abd0a55ebf0558',
                  'hash_10_VER_b2baa127627cf7f5a968e778a0b30ace'
               ],
            },
            {  item   => 'OPVZ_privvmpages_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_ac8f677dc98bd2dc315219b4c452feb2',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_f97960a976eb566de18419b4827c8ff0',
                  'hash_10_VER_84e50c43107497e2f68d8fa2453ca6d1',
                  'hash_10_VER_73887c7c41067d9dfd9c7fd309a2e4b7',
                  'hash_10_VER_0075c903030005e3242e72301c471461'
               ],
            },
            {  item   => 'OPVZ_oomguarpages_held',
               color  => 'E9D18A',
               task   => 'hash_09_VER_9317853b196027978e2bdd2e85d7b109',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_8a0118ad17e05a93aa8a5275650fb5d9',
                  'hash_10_VER_348d78eaba3f68234bc147ad9fba2f14',
                  'hash_10_VER_d8eb7967a3c6557a8971493a8bb50a84',
                  'hash_10_VER_9b42cae1617d7e719e58c3ab44756318'
               ],
            },
            {  item   => 'OPVZ_oomguarpages_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_cba43b40eff9c840c9a20e643494741e',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_6a1ca6767aa3d42b3888f03601fd9b28',
                  'hash_10_VER_ad5ac8b2386ca08c1f3378ff4efccb49',
                  'hash_10_VER_4847ee45c1a1a18d726f95866fa7832c',
                  'hash_10_VER_c521b1b4b7ca14365da96ea2e3703a38'
               ],
            },
            {  item   => 'OPVZ_shmpages_held',
               color  => 'A40B54',
               task   => 'hash_09_VER_473e3ad2b275990ef0afa32759b2aaaf',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_b0a5a796b30c28456127fa90dd18582b',
                  'hash_10_VER_a6a0b1a6178e6de11fb3897831fe3df0',
                  'hash_10_VER_48d005766cd5c431928adca8da0abe0c',
                  'hash_10_VER_bd3d7d1bfd9057d7077c4f6fad7633d9'
               ],
            },
            {  item   => 'OPVZ_shmpages_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_ee2d1a7ec62e9034b507340d8131f0c2',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_f8a6eee88fb3892cf8eb6121f250e371',
                  'hash_10_VER_be6b90ddbf2f70ec8e0035dbf178910e',
                  'hash_10_VER_d8d1d063ca712c2e43328d51e2721bf2',
                  'hash_10_VER_2fd83be92d589bc5dbd03f719c6b347d'
               ],
            },
            {  item   => 'OPVZ_physpages_held',
               color  => 'F0B300',
               task   => 'hash_09_VER_9ecbcb34060023a4665b268e83bf0e64',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_bfaa51531fa580b44607788920f966e7',
                  'hash_10_VER_5ac7f19ad94bbcccfcc7bf75fce892c8',
                  'hash_10_VER_e1840715da4595a6e55298164ef6bbe9',
                  'hash_10_VER_6928bb2f1c82247d0a531345177302d8'
               ],
            },
            {  item   => 'OPVZ_physpages_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_8939c945b10dea7f47d74b02ed0413a8',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_01cabe298e9a7fd66dcd82f42ccc1a5c',
                  'hash_10_VER_809f410846f50596901a047dd5fbbaed',
                  'hash_10_VER_4246d861578cfcbd4e857bf1088cb884',
                  'hash_10_VER_64a316ca1e20e5ae981191e461791c42'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Sockets',
         base_value => '1000',
         hash       => 'hash_00_VER_d7600d7677c729dce55ce17a71feb868',
         dt         => {
            hash       => 'hash_01_VER_a460d5229fea4ccea3631eccdee614cb',
            input      => 'Get OpenVZ Stats',
            OPVZ_numtcpsock_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_cef5b5e8b75e1382c826e09813a441a8'
            },
            OPVZ_numtcpsock_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_13677ceece49a28498e64d42b81b9d18'
            },
            OPVZ_numothersock_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_b0b274f23fa76020b638f7e07ce5c8b2'
            },
            OPVZ_numothersock_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_7da9e9092a2120ea2ddcf4bc43312b3d'
            },
         },
         items => [
            {  item   => 'OPVZ_numtcpsock_held',
               color  => 'BF604D',
               task   => 'hash_09_VER_dd01a3bbca26cffb18d52dbc4fe5fcfa',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_f277b583cda6b6f0d09b985538385faf',
                  'hash_10_VER_8f7d1a73022daf03b3c6640efb8f6f53',
                  'hash_10_VER_e8ecd2df8bfc1f87595fdde87ab6b994',
                  'hash_10_VER_31d750566d6e0809b47a4937abc03019'
               ],
            },
            {  item   => 'OPVZ_numtcpsock_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_b1f7560318e01529074469a917be09ad',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_d41bf8552bf0287e2e6dba4d452d1394',
                  'hash_10_VER_8cf466001aeb8dbbdf65fbaf42b1d16d',
                  'hash_10_VER_ea45edeaeabfcae24432a3762a186d88',
                  'hash_10_VER_2ab989ae1fd01d48281cd2b67254d37b'
               ],
            },
            {  item   => 'OPVZ_numothersock_held',
               color  => 'CCCD7F',
               task   => 'hash_09_VER_f63c99770d48da87d6fd8d657205e543',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_805578a898a01945e22c3dea42986da9',
                  'hash_10_VER_0309ff131765dfe80fb24120523d8ea0',
                  'hash_10_VER_fd7467a12e46dd457bc9ddcc07c2d434',
                  'hash_10_VER_8396c1b2389db3a7a75a7d6c5b595838'
               ],
            },
            {  item   => 'OPVZ_numothersock_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_f7059666e551c291ba0032bb2c72ab8f',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_995530c6ba624924baeac34689152fe0',
                  'hash_10_VER_d69657c0ad2aeaa67c179affa6b5fb00',
                  'hash_10_VER_d2f6c1c7347ca66823a2e50044d52b58',
                  'hash_10_VER_cd3750844dedc2a2cf087f8892caad67'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Processes',
         base_value => '1000',
         hash       => 'hash_00_VER_5ccd5755edd196eb151ee3eebab020e5',
         dt         => {
            hash       => 'hash_01_VER_adf3a596f1bf102b729402914eecee4e',
            input      => 'Get OpenVZ Stats',
            OPVZ_numproc_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_490bc50083b27ea227d16f99d85c9384'
            },
            OPVZ_numproc_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_a17c448f57b97fc0e59191da3fbce333'
            },
            OPVZ_numpty_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_c14fd43cb0313ca84d7ff14d7db43ed1'
            },
            OPVZ_numpty_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_61eac951b3001a6e57b239fb565712b1'
            },
         },
         items => [
            {  item   => 'OPVZ_numproc_held',
               color  => '532100',
               task   => 'hash_09_VER_907969acbbee752485cae8692056b2ff',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_63082d47efa79ff9136884cb1d5cfc76',
                  'hash_10_VER_4249fe81eae6dbdff4e503748bd5274b',
                  'hash_10_VER_609e8b9dd9a1e60d3f3a0431f621cdb3',
                  'hash_10_VER_ab6d3bac7fead8dfe9f01aca3664ee16'
               ],
            },
            {  item   => 'OPVZ_numproc_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_939045b6109906a81b4851e2e774f799',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_5384e9e49592ff11f35ca3299f3cc25b',
                  'hash_10_VER_97fae01c7a6716a8849ea8e7178d35f2',
                  'hash_10_VER_588a1a53466303a23ba813e47f90ec0c',
                  'hash_10_VER_6d6220d5604835f384915e48e8fd404e'
               ],
            },
            {  item   => 'OPVZ_numpty_held',
               color  => '303258',
               task   => 'hash_09_VER_f779bcb31211790a5ad81bebbac333a2',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_633e4a340d35928ad41dc85effe04195',
                  'hash_10_VER_53ac16050a61a7a3beeacafdcc401a42',
                  'hash_10_VER_fcddb13ef24f1671994079c5c852957c',
                  'hash_10_VER_06b2053c1816a1fb1b17769192b40061'
               ],
            },
            {  item   => 'OPVZ_numpty_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_a39b9c2500602b7dec1eef1803315cc2',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_88fbe20aa285fd9df4d842a2854bbc54',
                  'hash_10_VER_1ccba7bfd0c540707f208f66b4cceeae',
                  'hash_10_VER_de52466f37246db1aa53c1336668f891',
                  'hash_10_VER_6a39ebe854ba470f17d55a449cf27c36'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Files',
         base_value => '1000',
         hash       => 'hash_00_VER_7e40e20794389c64fab558b2f97a74ca',
         dt         => {
            hash       => 'hash_01_VER_67db6a5a095782fea0d40bb1627c4911',
            input      => 'Get OpenVZ Stats',
            OPVZ_numfile_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_0c406ad0c3a5c58b07f1525ec3649021'
            },
            OPVZ_numfile_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_1c6e25c32c7979232a55e3ae06c67c14'
            },
            OPVZ_numflock_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_dfa07a975302aa10fecbc63d05a8526a'
            },
            OPVZ_numflock_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_d8c63eb427c822eb65a37c5650651854'
            },
         },
         items => [
            {  item   => 'OPVZ_numfile_held',
               color  => '6D1116',
               task   => 'hash_09_VER_7eee364a020cea37cfdb5500bfbb6981',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_9b4bae3021d45b837cfdf1be8dcb2681',
                  'hash_10_VER_76e138f91d4c2f9a72d000c6d6764a95',
                  'hash_10_VER_42dc2ef415eb4192bf1965f545a74237',
                  'hash_10_VER_d56037fff3e9030da201f84a28fc3511'
               ],
            },
            {  item   => 'OPVZ_numfile_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_f3fbb92336d1ae2212e730bea4b8e86e',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_4615c98074d8f48df1fc0019d8db5f6b',
                  'hash_10_VER_4c0a5a7509416f2e43ebe2c323e97612',
                  'hash_10_VER_ea52b7eace861cc680f6164d88f306fd',
                  'hash_10_VER_aae38c3e8835eff7bad12017dfa1b91d'
               ],
            },
            {  item   => 'OPVZ_numflock_held',
               color  => '849487',
               task   => 'hash_09_VER_f5b164ddda47e758c6eb1fde07a22f71',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_02b59136e87f5482e5091179a473d9db',
                  'hash_10_VER_f5011f001f95938f8ca4788206d620a7',
                  'hash_10_VER_0ca601df75cadf2b58f5129b8558cd66',
                  'hash_10_VER_f3bf9ed1478b18c9f480a74fdbd421dd'
               ],
            },
            {  item   => 'OPVZ_numflock_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_0387f6dbe91373cf2879d55ff18d14a2',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_78a7e11a28fe04033f83a7b3d81691a7',
                  'hash_10_VER_338bb479052789b1483b7ac0006281be',
                  'hash_10_VER_856ddd9e414c50df70c40f09f3d0f983',
                  'hash_10_VER_55f9d0abffef3fdfcabea10dce62bf2d'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Signals',
         base_value => '1000',
         hash       => 'hash_00_VER_bc07c2728343d0a8003b774291ade559',
         dt         => {
            hash       => 'hash_01_VER_6d32c1c44d84cf428a8a0608425d47ef',
            input      => 'Get OpenVZ Stats',
            OPVZ_numsiginfo_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_641559c937e374c1e6efa7acc94337e1'
            },
            OPVZ_numsiginfo_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_459f3643f076fce54bd3739b756d3dc8'
            },
         },
         items => [
            {  item   => 'OPVZ_numsiginfo_held',
               color  => '123870',
               task   => 'hash_09_VER_a5bfdaec2ab71852268a41472af0a84e',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_d24551ba4cb2848f4f5d4f5b7c315cae',
                  'hash_10_VER_48e2d563aad5cee685f4966ca7e951c9',
                  'hash_10_VER_434453f7b38f6254498291bde321af04',
                  'hash_10_VER_477ef58b98ce593649dac84ddbc7fe0f'
               ],
            },
            {  item   => 'OPVZ_numsiginfo_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_b8d65f7ef51111d80e85fb5dcfc730ef',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_300f036b3ef2a654445c8eadef1cf5a8',
                  'hash_10_VER_9851872dc41e44d5e4cb976f9ed086e2',
                  'hash_10_VER_96c4c79f8579946a356de8693f83a427',
                  'hash_10_VER_2bd2c27fdf8c24ee5d327c037eb7565c'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Buffers',
         base_value => '1024',
         hash       => 'hash_00_VER_f594f72fd04f6317e3c21e2d702f9424',
         dt         => {
            hash       => 'hash_01_VER_1b4d470cba99c43bd99683a75a527272',
            input      => 'Get OpenVZ Stats',
            OPVZ_tcpsndbuf_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_3a81949a6d15e159f858d597c91d3e68'
            },
            OPVZ_tcpsndbuf_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_c0c6f7a416d1009ffc2bfefbbdc6e8d3'
            },
            OPVZ_tcprcvbuf_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_c0cfd3be91c327bc40bdbf08b3a46bc1'
            },
            OPVZ_tcprcvbuf_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_eb3dece119bb3ac96ab7f0a361f70e37'
            },
            OPVZ_othersockbuf_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_336c1af47c6c794dc318edf03ebe9fb0'
            },
            OPVZ_othersockbuf_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_b9f808f0e35b06becc35d966eaadd1ef'
            },
            OPVZ_dgramrcvbuf_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_4c315cb251a17d7e32681ffbd6b6a8b6'
            },
            OPVZ_dgramrcvbuf_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_7db98350413ef1de381d2131f1a3d3f9'
            },
         },
         items => [
            {  item   => 'OPVZ_tcpsndbuf_held',
               color  => 'F35E5E',
               task   => 'hash_09_VER_c7a39aa688e430b6fc6da4e3b624c1f4',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_bd88022da0ce3278808b275780a46adc',
                  'hash_10_VER_bde2d1aae6d4e5446eb791fe7b0bdf2e',
                  'hash_10_VER_9b95fb24e2608fbe4e8f83ee279c49db',
                  'hash_10_VER_87dc5a4050c9e929d5da5e7166a70713'
               ],
            },
            {  item   => 'OPVZ_tcpsndbuf_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_6bdaf53ece0f24e16994092631790429',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_d00f784885dbc3dad67ca87356c6c75b',
                  'hash_10_VER_79ac9cc96577cab57cd8617deaba3a80',
                  'hash_10_VER_6ccad042c18c9642d8d239da29b5b1db',
                  'hash_10_VER_4bf0b8127eea08752476e4e5f2ba5fe1'
               ],
            },
            {  item   => 'OPVZ_tcprcvbuf_held',
               color  => '123870',
               task   => 'hash_09_VER_9c3dc1fd1ef829356c9d0a0a40008b92',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_8129d6dc456b3120dc895694b858ed1c',
                  'hash_10_VER_75b9674984b69fadad10baf9227e6968',
                  'hash_10_VER_53d403ac267ed7cd0c9efed5fc1963b1',
                  'hash_10_VER_2a8266b6437667f2622e6b114826fefb'
               ],
            },
            {  item   => 'OPVZ_tcprcvbuf_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_6927f8c945ea90d6ce9c8340393e7e99',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_cc984d59ef85d069efd40c271de7fbb6',
                  'hash_10_VER_bc1585e3e3bfc018921e28bf666a0217',
                  'hash_10_VER_5515aebf8ae30c1e12fa2584afd28ad7',
                  'hash_10_VER_e5ada377ab14cf30e2547245f83942ec'
               ],
            },
            {  item   => 'OPVZ_othersockbuf_held',
               color  => '67D4CC',
               task   => 'hash_09_VER_aadca5aa60cbf2c93cf2d1da26f5f620',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_1453670840cfa5f7596fbd88768513fd',
                  'hash_10_VER_c79311bb2f398962d0e3e92896e3db6b',
                  'hash_10_VER_ee2ca516175521279179afa3f95a7dd0',
                  'hash_10_VER_b89b75a9bc45dfe4938ac151e0736302'
               ],
            },
            {  item   => 'OPVZ_othersockbuf_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_94257dcd5896a79b664590b6939fd4bb',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_9ad02dca81e3408abed224c83a8a482b',
                  'hash_10_VER_b1d2921ded304e4e23a620d4c486a8d9',
                  'hash_10_VER_7bd5eedbf76d9368b208980b12890666',
                  'hash_10_VER_72639263faffb9725ad25a1af286d3f6'
               ],
            },
            {  item   => 'OPVZ_dgramrcvbuf_held',
               color  => 'D80909',
               task   => 'hash_09_VER_2d7bb9ffe332d5d9a5e29cb8727edd2c',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_cce8161c376d891f46755fa973b5ca17',
                  'hash_10_VER_3705d5e4296ac0d84bf355a2040c1044',
                  'hash_10_VER_f9b8f5ae2f401eed4209f9797ecb04c6',
                  'hash_10_VER_da027f5f68da5553c4ba50334a81f97a'
               ],
            },
            {  item   => 'OPVZ_dgramrcvbuf_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_71807225f99d89f9c284743e86c64aaf',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_49087b663b05d9ddb7dadc046e48d792',
                  'hash_10_VER_d899260f3722ab794790ce36ce00ada6',
                  'hash_10_VER_25676405f03f33f10109f43365ec33c6',
                  'hash_10_VER_6d5574335ce556143a6298d4ad1e54e0'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ Dentry/Inode Cache',
         base_value => '1000',
         hash       => 'hash_00_VER_9e391ec9aef47039f3c69e69c8e3756b',
         dt         => {
            hash       => 'hash_01_VER_04fe1ef0343ef311a1ef83672b2bc18b',
            input      => 'Get OpenVZ Stats',
            OPVZ_dcachesize_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_beeb747db7b8bea9bc60672d84fb0c38'
            },
            OPVZ_dcachesize_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_43adaff23a1b24bb847b9cb5cbb372a8'
            },
         },
         items => [
            {  item   => 'OPVZ_dcachesize_held',
               color  => '43220A',
               task   => 'hash_09_VER_77136e300e1c2a788f393d64980f1646',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_3015ca83c8082dc2cda9cc6a99c528e8',
                  'hash_10_VER_5b1c846472de8f4bd37fd9148f7e17d5',
                  'hash_10_VER_078268bfdfd949df4a998c551f7ee949',
                  'hash_10_VER_b0b34034c63d9af7c71b66ad4be98db6'
               ],
            },
            {  item   => 'OPVZ_dcachesize_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_ecf7f3ca6590a6c2e584aedc6050fda2',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_918ea2065a4d242952c59d916a375863',
                  'hash_10_VER_6b26d026fcd7917ab409b30e57edc50c',
                  'hash_10_VER_4e739b6d36d352687e66950f5c132e60',
                  'hash_10_VER_f7b5293e31bae6806e1a8866b2372166'
               ],
            },
         ],
      },
      {  name       => 'OpenVZ NETFILTER Entries',
         base_value => '1000',
         hash       => 'hash_00_VER_4a686e046dc9a6aa99746b56d5d7e1ee',
         dt         => {
            hash       => 'hash_01_VER_30149cd482944cf9e5be06de9a663eb4',
            input      => 'Get OpenVZ Stats',
            OPVZ_numiptent_held => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_914d60ecf10f40c8b67c56be8859b33d'
            },
            OPVZ_numiptent_failcnt => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_bd6ef8285a9c95d202c4e3832227bfe6'
            },
         },
         items => [
            {  item   => 'OPVZ_numiptent_held',
               color  => '7A6E64',
               task   => 'hash_09_VER_f2ff5d872fff7916f85194d350bf9912',
               type   => 'LINE2',
               hashes => [
                  'hash_10_VER_29dd07dcfa7187b72914b895eabae041',
                  'hash_10_VER_183b38986a41916413941aeaa3fda0f5',
                  'hash_10_VER_a4d536db32dbb0b1fcef8961f1842a33',
                  'hash_10_VER_0fe97b891c017e5e42cdd598777b0a31'
               ],
            },
            {  item   => 'OPVZ_numiptent_failcnt',
               color  => 'FF0000',
               task   => 'hash_09_VER_7980853510f982fed51278246d1d5ab7',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_b6a9ac9e5f7464b6256570f8cbe23783',
                  'hash_10_VER_51e17266ffb49f7a328c9d7785cf08c4',
                  'hash_10_VER_bfeebc701e84d53e1691f964e11d92ce',
                  'hash_10_VER_b5b59beb0de891be2dc5dcda9acd2fc1'
               ],
            },
         ],
      },
   ],
   inputs => {
      'Get OpenVZ Stats' => {
         type_id      => 1,
         hash         => 'hash_03_VER_9ea92a4370b4c9e930192f0be3dec145',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type openvz --items <items> ',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_1450afe24915eb2f8c9bb4f12f97bd1f',
               name        => 'hostname'
            },
         ],
         outputs => {
            OPVZ_kmemsize_held        => 'hash_07_VER_7862e78c7702f25ec3b309246f370abb',
            OPVZ_kmemsize_failcnt     => 'hash_07_VER_3f65d00920864df379bb6e1a111bfba6',
            OPVZ_lockedpages_held     => 'hash_07_VER_c50221544d8465c1e9c583205f72fcb8',
            OPVZ_lockedpages_failcnt  => 'hash_07_VER_619a6e2978d89f600f05b7c5c1db81f2',
            OPVZ_privvmpages_held     => 'hash_07_VER_fafbb123d31809a26abae56d93b36b86',
            OPVZ_privvmpages_failcnt  => 'hash_07_VER_6925f6910a1e775019398a3d742d7007',
            OPVZ_shmpages_held        => 'hash_07_VER_6d17525bbb4e89a62f7a336cb07eaae2',
            OPVZ_shmpages_failcnt     => 'hash_07_VER_aa7dc51e62efc9135de20a7a93dfb905',
            OPVZ_numproc_held         => 'hash_07_VER_18c192e2104f3d565ec318b8c5a2fcf9',
            OPVZ_numproc_failcnt      => 'hash_07_VER_6eeb36dd66b2e780a44b143c905e6d48',
            OPVZ_physpages_held       => 'hash_07_VER_a3412395d8bf27989a5b71aa3ababc94',
            OPVZ_physpages_failcnt    => 'hash_07_VER_f7c9c96ef14b387854d22635a337fa80',
            OPVZ_vmguarpages_held     => 'hash_07_VER_0a1647e10caca3650d2a2f35db5bd3f1',
            OPVZ_vmguarpages_failcnt  => 'hash_07_VER_61ccbb71860b74cfb8be417a88c90b3d',
            OPVZ_oomguarpages_held    => 'hash_07_VER_d796f19dac447ba72ad150888c645b55',
            OPVZ_oomguarpages_failcnt => 'hash_07_VER_67fb03d278489782963f76f4525f50ba',
            OPVZ_numtcpsock_held      => 'hash_07_VER_451dd82cc95a499591f6a4a70fb4b846',
            OPVZ_numtcpsock_failcnt   => 'hash_07_VER_947a407f99b9fac4f175f380bfffbedb',
            OPVZ_numflock_held        => 'hash_07_VER_6c1c29b04d9c516977b628043f7e43ff',
            OPVZ_numflock_failcnt     => 'hash_07_VER_60d80ab02341be2ede9c4d65787d2395',
            OPVZ_numpty_held          => 'hash_07_VER_1a6ad66610b5190394feab678a2e587e',
            OPVZ_numpty_failcnt       => 'hash_07_VER_bbb9186fd0cbcbf1bacdb8091f9e36b3',
            OPVZ_numsiginfo_held      => 'hash_07_VER_935e94dd4a94560d1d8ef2aef0286720',
            OPVZ_numsiginfo_failcnt   => 'hash_07_VER_ee99ec62bdac7f1c8faaf93499b7c12e',
            OPVZ_tcpsndbuf_held       => 'hash_07_VER_395a334e6ad3e808ea97f3ea87472d9c',
            OPVZ_tcpsndbuf_failcnt    => 'hash_07_VER_8f1cd07b357f04c7ab01b88242ecfee8',
            OPVZ_tcprcvbuf_held       => 'hash_07_VER_df539a3e303a8ed963c6729079211313',
            OPVZ_tcprcvbuf_failcnt    => 'hash_07_VER_85de81fc666b68970eeeebd3de6490d7',
            OPVZ_othersockbuf_held    => 'hash_07_VER_f0af641e78ff045acb6aac77a576eee8',
            OPVZ_othersockbuf_failcnt => 'hash_07_VER_e85b9c720ea0a12cf66ef7fc398c3d84',
            OPVZ_dgramrcvbuf_held     => 'hash_07_VER_f094a5af7c4a09a92952f7778f5a32da',
            OPVZ_dgramrcvbuf_failcnt  => 'hash_07_VER_cf104b501a13d3b85ef447e1b02a9e40',
            OPVZ_numothersock_held    => 'hash_07_VER_00e1a49907a4bf387f442bb5f8dffabc',
            OPVZ_numothersock_failcnt => 'hash_07_VER_d06723094bc9755b28eb9cc85e796f5a',
            OPVZ_dcachesize_held      => 'hash_07_VER_cd258fe427e7d2c60d2f4c557fd2aefd',
            OPVZ_dcachesize_failcnt   => 'hash_07_VER_4f7649896caed4a69e1e0abb7799457e',
            OPVZ_numfile_held         => 'hash_07_VER_65234696f192d57e921442b8aa1abb28',
            OPVZ_numfile_failcnt      => 'hash_07_VER_fffefee959cf1f85d0aa23ada4a015f3',
            OPVZ_numiptent_held       => 'hash_07_VER_e227ac583954b175ee8da44432f37d30',
            OPVZ_numiptent_failcnt    => 'hash_07_VER_3a9c5d70becab067a49b85219b1813c8',
         },
      },
   },
};
