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
   name   => 'GNU/Linux Server',
   hash   => 'hash_02_VER_7f3cc974b740a9d134ca9e53c854e016',
   version => {
      version => '1.1.8',
      hash    => 'hash_06_VER_aa3dce56769f195bccfd299318c541a6',
   },
   checksum => 'hash_06_VER_2092ed83d0986c71dc99740eef8e811c',
   graphs => [
      {  name       => 'Interrupts',
         base_value => '1000',
         hash       => 'hash_00_VER_877b481c048c01c3b4fcf9a2a4e3b049',
         dt         => {
            hash       => 'hash_01_VER_8f7fc88fe4b5cece5fc6f939c9704b50',
            input      => 'Get Proc Stats',
            STAT_interrupts => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_2dd29c4913bc2960bf8f84b98bf10003'
            },
         },
         items => [
            {  item   => 'STAT_interrupts',
               color  => 'BF4E15',
               task   => 'hash_09_VER_0f515322027cb97af22b5c00afd7637e',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_22054bac891981d4b7a8cd38c15be41a',
                  'hash_10_VER_e4572c874a0065c696c9ccad4594034c',
                  'hash_10_VER_0142c5d04512e9013d7f1b486b33306c',
                  'hash_10_VER_52ea939cc7d7c635e50c0c70196fad4b'
               ],
            },
         ],
      },
      {  name       => 'Context Switches',
         base_value => '1000',
         hash       => 'hash_00_VER_314f0c9f2ceb25361f9bfd9949445227',
         dt         => {
            hash       => 'hash_01_VER_5387dc46b59f974b930441c895bb94f4',
            input      => 'Get Proc Stats',
            STAT_context_switches => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_6df1cefce1530b5028434da187e79430'
            },
         },
         items => [
            {  item   => 'STAT_context_switches',
               color  => '91204D',
               task   => 'hash_09_VER_cd9435ddf604264e522efd92827cd2fe',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_1380de3931494ffe7b5ae6259eb48b03',
                  'hash_10_VER_c5123a4a16cff2363d8bec2af50ff998',
                  'hash_10_VER_be4e2cdfc5b38cb4ed811692ddb6e647',
                  'hash_10_VER_807a10332ec369786f8069d119a9fcc4'
               ],
            },
         ],
      },
      {  name       => 'Forks',
         base_value => '1000',
         hash       => 'hash_00_VER_31428f9961951a191c874d0298b9150a',
         dt         => {
            hash       => 'hash_01_VER_ae5705deb36c0d7a1a0b52167aa164e1',
            input      => 'Get Proc Stats',
            STAT_forks => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_028ab1196db87e410040973386524762'
            },
         },
         items => [
            {  item   => 'STAT_forks',
               color  => '9E8655',
               task   => 'hash_09_VER_5a169cee517d1f1af7b88a17a183722f',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_447f8b789b87a3fa53babc373b3a5d7e',
                  'hash_10_VER_473bc72c12b0b5dc842a3ef7fd551c98',
                  'hash_10_VER_b8fa7b01e96061381a2e680cba32f92c',
                  'hash_10_VER_b12a44e35676bcb31a6537ff6ee778c0'
               ],
            },
         ],
      },
      {  name       => 'CPU Usage',
         base_value => '1000',
         hash       => 'hash_00_VER_507a9c78c52e367f438cad6fd2781716',
         dt         => {
            hash       => 'hash_01_VER_fe3ea40c9102668f3f30bb7e5ff72e8b',
            input      => 'Get Proc Stats',
            STAT_CPU_user => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_f438d805c2afdd8e39218352fcc10af0'
            },
            STAT_CPU_nice => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_8bd75442cd53ad4285cb365dac9078b4'
            },
            STAT_CPU_system => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_494e621abd63fc3c6feea63f06a486b3'
            },
            STAT_CPU_idle => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_cf3b29ef2e026cf42e9fbe233995893b'
            },
            STAT_CPU_iowait => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_e006b98c89dfd3fd4e3b860f070bdb3e'
            },
            STAT_CPU_irq => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_a6515bdbae6ad1e720af0ab22e9fa575'
            },
            STAT_CPU_softirq => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_0b70540ace0a67c63fcab5b318dd5009'
            },
            STAT_CPU_steal => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_e1b5f3a1d9f04a5402ece043b51ffba4'
            },
            STAT_CPU_guest => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_a61f5b115c3313d8cfc99b653e561f6f'
            },
         },
         items => [
            {  item   => 'STAT_CPU_user',
               color  => '941342',
               task   => 'hash_09_VER_b98b46dd433b53e9725f6668c879a2e2',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_0031124ec89d286db4a5e146d53d2d90',
                  'hash_10_VER_a49276a61d5ecc57e3fc3a86606eb215',
                  'hash_10_VER_7a744f615eefb2a83669bbe7739062c8',
                  'hash_10_VER_73f2393e45c0d793930a681c717e7b7a'
               ],
            },
            {  item   => 'STAT_CPU_nice',
               color  => '435247',
               task   => 'hash_09_VER_f4a0194ecdd767ba41b36e601ba85a87',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_eb79b16dd7ff0b40a011af533d064e0d',
                  'hash_10_VER_1606fedb06c13eab32a720f0e646bda2',
                  'hash_10_VER_88d36eb8108f160aa455aee950f90cb2',
                  'hash_10_VER_7121a29c2b911568bca76e563a911d3c'
               ],
            },
            {  item   => 'STAT_CPU_system',
               color  => '00CBF6',
               task   => 'hash_09_VER_2cac3000304b452d80c9ec27d2af7df5',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_60a36cee9db9adff502780a891abb0e7',
                  'hash_10_VER_6ccad6e74f733c6ee9d76343a34a4a41',
                  'hash_10_VER_ad42d705f2109e399de01b37361e2238',
                  'hash_10_VER_80a0a8eece76fc31b49271478079d6b7'
               ],
            },
            {  item   => 'STAT_CPU_idle',
               color  => 'BFBD82',
               task   => 'hash_09_VER_bac60a69dd6ea6583d10f5a156a9f420',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_f832578db2ef5ef285db9cecbf11fb67',
                  'hash_10_VER_99e50f2e9ef5781f5ae1cbc09adae4e6',
                  'hash_10_VER_996f45f6d9f46643eab6f6b6bd9eb044',
                  'hash_10_VER_2acf9b025db8e415df2e4bd1a4e89499'
               ],
            },
            {  item   => 'STAT_CPU_iowait',
               color  => 'C5031A',
               task   => 'hash_09_VER_bd765a8549fe1c7c468ccd728f115679',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_2b8d9ca581713356b604d11284b2702a',
                  'hash_10_VER_0bc2ab8ddb34298d4d74c2fe81f12a20',
                  'hash_10_VER_9e66f22a5b3774ac05365fcc5bbe4597',
                  'hash_10_VER_78fc3702052739522405ce2a04d7f900'
               ],
            },
            {  item   => 'STAT_CPU_irq',
               color  => 'F39034',
               task   => 'hash_09_VER_a05593abe13b0fd637c2d84bc21fbd12',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_20ee87e7aa87119cc9300b1fd7461e56',
                  'hash_10_VER_6b075aeac860719b2d93fd734502d474',
                  'hash_10_VER_75fdd8e12f7beb1e7cc434a3684af54a',
                  'hash_10_VER_7458a87ae3b0ffb9d725cbe0619cc33e'
               ],
            },
            {  item   => 'STAT_CPU_softirq',
               color  => '3D282A',
               task   => 'hash_09_VER_7ebb82a91b545eaab484552b8148e11c',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_e7bea63f607b7df35e6df47c20638176',
                  'hash_10_VER_426df079310d545203643cf0ce6c245f',
                  'hash_10_VER_fdd67cd8df0f910c5b22375eb587a24a',
                  'hash_10_VER_726cdeaf525af857f74902ceb4770a45'
               ],
            },
            {  item   => 'STAT_CPU_steal',
               color  => '33369E',
               task   => 'hash_09_VER_3bce5e9dc8d767db1aab089190424cdf',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_37f8cf6298e9d69fa673b451ff35bc75',
                  'hash_10_VER_0ef955eb1a66d8d5f4365fa22eff8716',
                  'hash_10_VER_44631975e776cbfcd4ba75a8754909ef',
                  'hash_10_VER_2f71941334aabf48878c3c8504587e96'
               ],
            },
            {  item   => 'STAT_CPU_guest',
               color  => '08A000',
               task   => 'hash_09_VER_e6e80e40d93ebc2a4d681e4a1add2cb1',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_835385d981be2945c35ff927b8be9fcf',
                  'hash_10_VER_c6f5cd25f79e518d9436a80023e58756',
                  'hash_10_VER_b65525d19acbf94309b6f44b7f3441c9',
                  'hash_10_VER_94ff5b7e4f5c503ac487a62c884fe940'
               ],
            },
         ],
      },
      {  name       => 'Load Average',
         base_value => '1000',
         hash       => 'hash_00_VER_17504f05362a21d67dd96b0b189e3bfb',
         dt         => {
            hash       => 'hash_01_VER_a49932fa006d8fd56e9bdedeb04376f8',
            input      => 'Get W',
            STAT_loadavg => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_b7000c48bee814620459f2bd4c018089'
            },
         },
         items => [
            {  item   => 'STAT_loadavg',
               color  => '803405',
               task   => 'hash_09_VER_d957a13afef6f9d316f01f8e5266cccf',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_1bfb6e6725b57dafbeb954627641e2cd',
                  'hash_10_VER_e9602c4a04306f30e28541c57942d997',
                  'hash_10_VER_59094f514eb8da9a39c03a51967ede7b',
                  'hash_10_VER_4dce368b77bddedf42f6b3d5bda13bf3'
               ],
            },
         ],
      },
      {  name       => 'Number of Users',
         base_value => '1000',
         hash       => 'hash_00_VER_5e1683831d8cccc1c9be772f3876915c',
         dt         => {
            hash       => 'hash_01_VER_8cf92104c9795f22e5a137bf9c5e191e',
            input      => 'Get W',
            STAT_numusers => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_2b6e99f8e73175f0a47154b1e955fbb4'
            },
         },
         items => [
            {  item   => 'STAT_numusers',
               color  => '540202',
               task   => 'hash_09_VER_1a0aafd640ab1adb819df04644832978',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_6fcc9bd8e2dd56a5968d0d4584285bae',
                  'hash_10_VER_1dbae9452124c348fb341dc39dd2100e',
                  'hash_10_VER_53e2e4c722b0346817585f49c75ebf0a',
                  'hash_10_VER_7ee6ff2ed0290c2cd10f10377734df7e'
               ],
            },
         ],
      },
      {  name       => 'Memory',
         base_value => '1024',
         hash       => 'hash_00_VER_dac88e8c07e247f5219df1daf22b66b2',
         dt         => {
            hash       => 'hash_01_VER_23277f8a6163f89ef0e05597a8634032',
            input      => 'Get Memory',
            STAT_memused   => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_90a390dbfb1cc0a93cf3eb849bc932dd'
            },
            STAT_memcached => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_b084d68bf791d2fb0d17701e99db172a'
            },
            STAT_membuffer => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_35b4c0758a12236f01628518c99679e5'
            },
            STAT_memshared => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_b32081675b876fd1c9bb853f9e0ce8df'
            },
            STAT_memfree   => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_2a9059ba836ede57d59bfcc72b26ebec'
            },
	    STAT_memtotal  => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_37d0e538d67314de445cdcca724013ac'
	    },
         },
         items => [
            {  item   => 'STAT_memused',
               color  => '850707',
               task   => 'hash_09_VER_b539bfba36696ea8cbb0956133651313',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_0ed6b827a88d97548edf092f43ddc1fc',
                  'hash_10_VER_b7d9c50e29ebe0691bb23a0480aa3b99',
                  'hash_10_VER_81595a4f42a4c2a194a9288b897c9f8d',
                  'hash_10_VER_0218ccf8640013d2d7cb1e25e1b0f2c7'
               ],
            },
            {  item   => 'STAT_memcached',
               color  => 'FFDB87',
               task   => 'hash_09_VER_2912a0730e5b7dcd3c1355c09b88e1bd',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_196d434f91ef45fd4c0ed04f3bfd1195',
                  'hash_10_VER_bbd9c66754936c652a2ee730b7aaf81c',
                  'hash_10_VER_eb5321a04459e2c6c16281ab014e1524',
                  'hash_10_VER_c32c1a65f09a032af587cd200625b0b5'
               ],
            },
            {  item   => 'STAT_membuffer',
               color  => '25345C',
               task   => 'hash_09_VER_ede9066a407d9b7db686bf7b5e823db4',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_523984c60bc1acdaea63a207ff2de339',
                  'hash_10_VER_9f764a92c3b504cdeeaccc6e85c39fee',
                  'hash_10_VER_1b10d005fbbc21131d6a1f1a93326b7e',
                  'hash_10_VER_fddbadd79d1784c78fc58fe04a6c4228'
               ],
            },
            {  item   => 'STAT_memshared',
               color  => '88008A',
               task   => 'hash_09_VER_b4d51241727c232c8cc9253b0531c66e',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_e9934f4ee9ab742f470a71b9cd1afdc6',
                  'hash_10_VER_0f80429ab6d2f04207f60c1ebe4563ae',
                  'hash_10_VER_2e83d986f9cabdc8e9975e82b4c3989a',
                  'hash_10_VER_6d7cb7a7a4ed9110902bc54dc04497b4'
               ],
            },
            {  item   => 'STAT_memfree',
               color  => '4F7774',
               task   => 'hash_09_VER_2e973bfc749c51e98d05a29eb7f1d173',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_9eac3e83b1c23ff10007fb398bb60a7c',
                  'hash_10_VER_09c04ad62dcccb58d5cc1345525692c0',
                  'hash_10_VER_b1868a36676abc3c36b8a7bc60369254',
                  'hash_10_VER_3f878ee094eab1e8e0ce5ea025ef5f80'
               ],
            },
         ],
      },
      {  name       => 'Disk Operations',
         base_value => '1000',
         hash       => 'hash_00_VER_8dbeb686adeeea59eeebc8ff9d0f8b64',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_eefb9221756a10086844492dd213fb29',
            input      => 'Get Disk Stats',
            DISK_reads                    => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_e1f460e983d32de15ddf3813523c14f6',
            },
            DISK_reads_merged             => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_8cc047e662a15804ca81a1391328ef17',
            },
            DISK_writes                   => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_1bb77d99c1f5d409e374cd650c503f30',
            },
            DISK_writes_merged            => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_c0ec84a97f6da3adbb2b1e416670e422',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/903157/Entrapped_InAPalette
            {  item   => 'DISK_reads',
               color  => '2A2829',
               task   => 'hash_09_VER_f21eff0c8b205329bf6b81a384022e6a',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_5dff74f87d75201a107e2d571e6229c6',
                  'hash_10_VER_635fe1b6f079313ba7912ddacdcf4b7d',
                  'hash_10_VER_b8fd759d3da66243b8cc573b7e4a9092',
                  'hash_10_VER_7a67bf1b846293a345a418c4c80441c8'
               ],
            },
            {  item   => 'DISK_reads_merged',
               color  => '668284',
               task   => 'hash_09_VER_142c23f124f20c810b488a4968ae276e',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_0e674a2b85632f25a372595d6030d987',
                  'hash_10_VER_3f6e0a30d7cda21b0f7065426eee0888',
                  'hash_10_VER_6f8339aa3b8088f332565d5bb985f138',
                  'hash_10_VER_af1d96a35bee65c8779e9d52f7aa8a7b'
               ],
            },
            {  item   => 'DISK_writes',
               color  => '493736',
               task   => 'hash_09_VER_4e4244ec9dafe2aabb57f929b407e473',
               type   => 'AREA',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_01ef9478893603249f91e0a016649466',
                  'hash_10_VER_5f3c804e327941a58f137d2301839491',
                  'hash_10_VER_5e62f46fcd76bb4974cb18cc8f46c492',
                  'hash_10_VER_054ded217b8c6a43a02f136b356c9607'
               ],
            },
            {  item   => 'DISK_writes_merged',
               color  => '7B3B3B',
               task   => 'hash_09_VER_e3cdd0ff3c7cefdb4056026d9fb00b10',
               type   => 'STACK',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_3e5ae41f743d8432af0c6dcf2b406b1b',
                  'hash_10_VER_2a844c6f35d1232215842fe413ac3547',
                  'hash_10_VER_f1f2e0a65bbad6d1d80dc319c119b110',
                  'hash_10_VER_ccc2547ac9c9d1466544fb07c1e97622'
               ],
            },
         ],
      },
      {  name       => 'Disk Sectors Read/Written',
         base_value => '1024',
         hash       => 'hash_00_VER_68b1592488c6c82028feb32290f09b58',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_9922e8abb619a36a12a0da350b33c783',
            input      => 'Get Disk Stats',
            DISK_sectors_read             => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_74aa60de72fbd3eaaecc52ba101a18d5',
            },
            DISK_sectors_written          => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_6f3cbe724c675232ccd7e75416b6c990',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/694737/Thought_Provoking
            {  item   => 'DISK_sectors_read',
               color  => '542437',
               task   => 'hash_09_VER_44ee1f317af557b52b456c6a10836521',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_1322603c1478b9c269a3a9d48cd7d666',
                  'hash_10_VER_1c73abb91257171cda23e17fc752c7f3',
                  'hash_10_VER_97de8dd7f20fd120c4928e93c259eb50',
                  'hash_10_VER_76d92af79f53dfd78f08dbf288cdf911'
               ],
            },
            {  item   => 'DISK_sectors_written',
               color  => '53777A',
               task   => 'hash_09_VER_67287e7a98b36055f19d08462f69f4b0',
               type   => 'AREA',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_e728b0da074268c913517b4afbf5f5ee',
                  'hash_10_VER_e2d13c3ecf15741177b2d4acbf996474',
                  'hash_10_VER_485b60345e90c88b62f2fcc73e3c3fd5',
                  'hash_10_VER_da93e70aed7ccf2e031ca8b5d7ce0cc8'
               ],
            },
         ],
      },
      {  name       => 'Disk Read/Write Time (ms)',
         base_value => '1000',
         hash       => 'hash_00_VER_fce265d88717037e9ee5c29c2ce1b731',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_5317c316996a272c666b2323a68bb9fb',
            input      => 'Get Disk Stats',
            DISK_time_spent_reading       => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_aa6d9e66531b6f7d730f17a3bb9456af',
            },
            DISK_time_spent_writing       => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_6cecaf8de198507dda3399947a2b2409',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/694737/Thought_Provoking
            {  item   => 'DISK_time_spent_reading',
               color  => '755E5E',
               task   => 'hash_09_VER_7c9262142373d942d8a3393697374313',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_d93dc59c223c20df0b8445e78702ed83',
                  'hash_10_VER_8f43c3d55a513c83b9eb7ec4fc5ebc2a',
                  'hash_10_VER_6006021609ce0d7340804aa4f4cf1eff',
                  'hash_10_VER_49fbe22678e639298f5c2ee7add8a003'
               ],
            },
            {  item   => 'DISK_time_spent_writing',
               color  => 'C02942',
               task   => 'hash_09_VER_b869228cacb3d0b3522c4949191ec7b0',
               type   => 'AREA',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_620cfacee3a24a5bea731882f9fa9970',
                  'hash_10_VER_917d1ba0256e20f8d2523b7b1583e0d8',
                  'hash_10_VER_8b5aaa11f29fa85fc73a8aa456d00aea',
                  'hash_10_VER_e55dd0056e78acc018384699ced1916e'
               ],
            },
         ],
      },
      {  name       => 'Disk Elapsed IO Time (ms)',
         base_value => '1000',
         hash       => 'hash_00_VER_f362943640a3a7e6bff64115c8c98bed',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_6aa2bc69635c41f4c2fe291a9d58d3b8',
            input      => 'Get Disk Stats',
            DISK_io_time          => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_08c5f5acc8321558b8dc7cb1d0fd1b51',
            },
            DISK_io_time_weighted => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_3366566bc2431693e5b0b06e56acc07e',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/194715/Crueberry_Shake
            {  item   => 'DISK_io_time',
               color  => '4E3F30',
               task   => 'hash_09_VER_84ecc5ee76afb09863c1f9edbc55b69c',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_5a43f7094fb30d04e8858907dc67f894',
                  'hash_10_VER_19fb33ec515fdc8dbb69259e766c6065',
                  'hash_10_VER_1aa16e95acaf6258349722c64c545a21',
                  'hash_10_VER_bfc77bcd39f6efa10aade1680db7ca97'
               ],
            },
            {  item   => 'DISK_io_time_weighted',
               color  => '2C5043',
               task   => 'hash_09_VER_87e0c721aca915fe4d53f9aac6dd403c',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_c5e694db200337a2c070f59c6c585bfd',
                  'hash_10_VER_159f269656bdf5d77414ace864ee7f4a',
                  'hash_10_VER_2c6fecf1f30c2aac8c327e610a3629f2',
                  'hash_10_VER_8e7d81985d52d17c4cda7d1f29927a11'
               ],
            },
         ],
      },
      {  name       => 'Disk Space',
         base_value => '1024',
         hash       => 'hash_00_VER_84d5bcafb112d1b05ce38ae69448ab55',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_1703de46efd88138cdd1bfe61613706e',
            input      => 'Get Disk Space',
            DISKFREE_used => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_0690d32ae0dd13d93ec74d2314ab4aff',
            },
            DISKFREE_available => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_bb2cdef779d3476ade36da2e51c6bb51',
            },
         },
         items => [
            {  item   => 'DISKFREE_used',
               color  => '0E4E5A',
               task   => 'hash_09_VER_0ad2b0870f44cecee4fda91ba14fdc76',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_2d46e5f5be1e127d281f5a330d871ad5',
                  'hash_10_VER_5bad17b9bf1c228ece530c3cf27d800e',
                  'hash_10_VER_5e2651c62f10c46ffd86c7c2d5aef4b0',
                  'hash_10_VER_c61f1df4dadc94df9c26bb6c059e533e'
               ],
            },
            {  item   => 'DISKFREE_available',
               color  => '62BECB',
               task   => 'hash_09_VER_fba00ed6c841136f97d14ef56db97131',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_689107b33e2d9e41e6e097eb3b92d097',
                  'hash_10_VER_43d0171e2384ccf90e04ee4fff2366bf',
                  'hash_10_VER_926c0979234050421ee978f8d5b46900',
                  'hash_10_VER_e8e60165457173e59b1528c1f5040a7d'
               ],
            },
         ],
      },
      {  name       => 'Network Traffic',
         base_value => '1024',
         hash       => 'hash_00_VER_617aff4ec1c162eb6aa61bf2b9883388',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_687964fc0a8b6fb23029c69b97653789',
            input      => 'Get Network Traffic',
            NETDEV_rxbytes => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_cc9fcdbb1ff53c20a2f20907f61d8a6f',
            },
            NETDEV_txbytes => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_f951c9b8d06f9be3d79da7eb5d7fb165',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/444487/Curiosity_Killed
            {  item   => 'NETDEV_rxbytes',
               color  => '555152',
               task   => 'hash_09_VER_bdf8d8cb4adefa8e2e7672292e759497',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_ba37c31f9b986c98e0d9738c264e520b',
                  'hash_10_VER_49a9aacadfd8eba4221b5743cc056847',
                  'hash_10_VER_dfd8b4964a5f5b0282551d65cb80b71a',
                  'hash_10_VER_c277294a3d867b35c81200588ffaf1cc'
               ],
            },
            {  item   => 'NETDEV_txbytes',
               color  => '2E2633',
               task   => 'hash_09_VER_dc830071c31578228797d2681b985c2b',
               type   => 'AREA',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_fd3c2eae30d53866483951c3e21d00d0',
                  'hash_10_VER_272171450759a8dd6b387eec9e8db6aa',
                  'hash_10_VER_1d9e11b6c810a5a7099abe30d99c17bc',
                  'hash_10_VER_4f475685baeac1e635646d2551647231'
               ],
            },
         ],
      },
      {  name       => 'Network Errors',
         base_value => '1000',
         hash       => 'hash_00_VER_2b7d92830bee46dc6443db7f8623a21e',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_facc72f0c33a2a47b5e15eb84519849a',
            input      => 'Get Network Errors',
            NETDEV_rxerrs => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_e2ce2c23f352f36053fd11f9e0bed355',
            },
            NETDEV_rxdrop => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_bda4e5d5bb912be2dafa128a1c8d56a7',
            },
            NETDEV_rxfifo => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_c17df917788c32afaeec1b88d5865406',
            },
            NETDEV_rxframe => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_98489fc44abd2f1d8ea3b02b1bbff6b6',
            },
            NETDEV_txerrs => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_bd1d24d4851846b12bc545a004c7ed8b',
            },
            NETDEV_txdrop => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_20039ac02267a25c15f856547e27e026',
            },
            NETDEV_txfifo => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_63ecd7095e5d328635c8c7d6be83bcad',
            },
            NETDEV_txcolls => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_24b00f87425e1e1eca5412516a984b56',
            },
            NETDEV_txcarrier => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_217ccf3ef35ba041f932a0cf0497797e',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/444487/Curiosity_Killed
            {  item   => 'NETDEV_rxerrs',
               color  => '6A4A3C',
               task   => 'hash_09_VER_13a84f2181abf2a9c3af9daab5005e60',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_7287087246c402ba73fcce86f915f760',
                  'hash_10_VER_2b2b26c7666c86c82887cc139f2eb7fb',
                  'hash_10_VER_6acbf3cc25854d069e8a99dba1974f4b',
                  'hash_10_VER_4271a56c4115191966777bcb6f94ab40'
               ],
            },
            {  item   => 'NETDEV_rxdrop',
               color  => 'CC333F',
               task   => 'hash_09_VER_a9cb9934b172facfdbc2ed7e8c7fb975',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_7ecef20147056bf122550163b0f9adef',
                  'hash_10_VER_4abfe5265349caf206867c761a05863b',
                  'hash_10_VER_2f9239fa2723b65267e3ba4a183c97d4',
                  'hash_10_VER_13b19049ac84ffae4d9f5e444d0e3171'
               ],
            },
            {  item   => 'NETDEV_rxfifo',
               color  => 'EB6841',
               task   => 'hash_09_VER_a64a67b35b66b77f24ff1803788ceeb6',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_b635e1774e7f6eeeb9bb7ccd04eb3da4',
                  'hash_10_VER_e1e74fbf450f98878a4465bb7fac3804',
                  'hash_10_VER_5d4cdb28a27e9a58026e6299dcf5a352',
                  'hash_10_VER_8a16aeb83a691a00a9f2570c93bbca89'
               ],
            },
            {  item   => 'NETDEV_rxframe',
               color  => 'EDC951',
               task   => 'hash_09_VER_84949b42d64b30eaf3e3e85830702a7a',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_88bc0990bffac4f052a54e4a6040c694',
                  'hash_10_VER_7497e394bd1fc55f7bc9f0e1a8dd9151',
                  'hash_10_VER_55ac118ecc62d981014460e74b4a3ba5',
                  'hash_10_VER_66557493fcdff219996b125d662b96cb'
               ],
            },
            {  item   => 'NETDEV_txerrs',
               color  => '6A4A3C',
               task   => 'hash_09_VER_653a2c0376400051371a841bb46cc10b',
               type   => 'LINE1',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_dee3b486a239536eda0b58fb6d4fcd9a',
                  'hash_10_VER_507717536e2fbe98781f77f6abf93830',
                  'hash_10_VER_8ef8007564f5b1b9df11543cd0b7e86b',
                  'hash_10_VER_cfc87a535d32447a5a345035f6efd767'
               ],
            },
            {  item   => 'NETDEV_txdrop',
               color  => 'CC333F',
               task   => 'hash_09_VER_f09e8e45843280864d729d6e6182d336',
               type   => 'LINE1',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_42de96329ad2531aa52ef589a9f5d694',
                  'hash_10_VER_db5e458333efbff085e0a48e1d24674d',
                  'hash_10_VER_be0d3eb4ec827db1e4d7f06c3cb8041b',
                  'hash_10_VER_6f7081ea6b918d0eebc91e03444146d6'
               ],
            },
            {  item   => 'NETDEV_txfifo',
               color  => 'EB6841',
               task   => 'hash_09_VER_7b7a49d35f529be271368833b5c77b16',
               type   => 'LINE1',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_81f81d7b58eb086b76ac6ad9d6b15ee0',
                  'hash_10_VER_429ab7441dd22d8f5cb3b0b78c5a9870',
                  'hash_10_VER_79e030392238a7ceb5973c4007d742f1',
                  'hash_10_VER_84b295d795a090002d295d693a2fb243'
               ],
            },
            {  item   => 'NETDEV_txcolls',
               color  => '00A0B0',
               task   => 'hash_09_VER_4c1be6ab921ddba4f1caf98fc1d55203',
               type   => 'LINE1',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_0a2e9e71d2e1d99a4370155a8db5d45f',
                  'hash_10_VER_04379d981a4d2180a52d20183539b6e4',
                  'hash_10_VER_7a34b5f0a23a1d1c08225c1d8e0210f2',
                  'hash_10_VER_5d50a5d3553626022b20ebce33f575de'
               ],
            },
            {  item   => 'NETDEV_txcarrier',
               color  => '4AC3B2',
               task   => 'hash_09_VER_e2d566e919ad8e13d27d2954bf4c94e9',
               type   => 'LINE1',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_019ed7f88bb5df2639144995ad27c5ef',
                  'hash_10_VER_3393c314bbac61165dd0e06a926d5fa7',
                  'hash_10_VER_0bc89b24bad465731dbce9f68b336b4e',
                  'hash_10_VER_1fbcc8809403f58ddbd2b449e915a527'
               ],
            },
         ],
      },
      {  name       => 'Network Connection States',
         base_value => '1000',
         hash       => 'hash_00_VER_31945ad0f24f9761195d3748c1ce3638',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_95a8a67041e4c4b86c79af02f5adecc3',
            input      => 'Get Network Connection States',
            NETSTAT_established => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_50f4d5eaa2d4ccc8f6e46b2eff914664',
            },
            NETSTAT_syn_sent => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_2d61eb7502acc05b3c416dbff7bb8ee9',
            },
            NETSTAT_syn_recv => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_7ff066d340b98716767f79eed619be83',
            },
            NETSTAT_fin_wait1 => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_e95e04452086bfa8d593cfd1b891137d',
            },
            NETSTAT_fin_wait2 => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_9fa16a7aa774c00ef4693978d37ee4c3',
            },
            NETSTAT_time_wait => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_7dcc99757e6a231cea4e9a5f77c30b01',
            },
            NETSTAT_close => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_e480fd65403ea2e11d1820d9d640cf84',
            },
            NETSTAT_close_wait => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_80d7a2e020eca2b295029547fb62e239',
            },
            NETSTAT_last_ack => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_57c3836141f7b7df99bb421ea3dd7769',
            },
            NETSTAT_listen => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_0af8d9390742a9ca83642fcea1f59431',
            },
            NETSTAT_closing => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_536fab6e6feb4d1bd1c78b6e96f3207a',
            },
            NETSTAT_unknown => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_45f4ed3055352eb75fa638002e11588a',
            },
         },
         items => [
            # Colors from
            # http://www.colourlovers.com/palette/444487/Curiosity_Killed
            {  item   => 'NETSTAT_established',
               color  => '8C2318',
               task   => 'hash_09_VER_2fcde303010a976e481d1a51768b59e6',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_17424d8807e449cca7363f4dbf908aad',
                  'hash_10_VER_f0f23f9ad7b1b3e7ecd2439d65b13138',
                  'hash_10_VER_90a37152c9d7284fda0cfe0b3d44cb0b',
                  'hash_10_VER_3fcdee4cbd92158da7c4518eff906afb'
               ],
            },
            {  item   => 'NETSTAT_syn_sent',
               color  => '5E8C6A',
               task   => 'hash_09_VER_0194e926af3c8acf4619ec8106ef7419',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_e33f934640665658962e1bfa4f1844fb',
                  'hash_10_VER_fef818200901e473023793702eb8766d',
                  'hash_10_VER_9ffe319fdff1f4f619f2ad33940ea8e8',
                  'hash_10_VER_5761452e973beaa31cce4d230aea909a'
               ],
            },
            {  item   => 'NETSTAT_syn_recv',
               color  => '88A65E',
               task   => 'hash_09_VER_5591a27a060f438dc6c1d2c53bfe2f31',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_1c198691e2d0815a1d4254034563ecbf',
                  'hash_10_VER_ac896c56127854d15a29457082ffdc6b',
                  'hash_10_VER_8a7f072d0e4e3259fd5430cb99c475f8',
                  'hash_10_VER_f64a6e78309ac3af1c3807e1f4ec61ef'
               ],
            },
            {  item   => 'NETSTAT_fin_wait1',
               color  => 'BFB35A',
               task   => 'hash_09_VER_0e0d8ed7d0ba2c8593b615455c76a49a',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_c0e38999e1a2c8020108afa56a5c5038',
                  'hash_10_VER_f028f04627931c3756c15e77a9581bd6',
                  'hash_10_VER_f68fbc90a05b2dfe444d5980b522b90a',
                  'hash_10_VER_479d2918efa718cecc97595930c07c61'
               ],
            },
            {  item   => 'NETSTAT_fin_wait2',
               color  => 'F2C45A',
               task   => 'hash_09_VER_1aef6539bda31fd7ffb2082357056ace',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_8cb8569682a4aca97d99fafd3ba4763f',
                  'hash_10_VER_498b91e65ce56425ac73577451195dd6',
                  'hash_10_VER_f92b29999ea0cf5d01a9192eda5e8048',
                  'hash_10_VER_c68456624048625bb8e84d4b8939bc3a'
               ],
            },
            {  item   => 'NETSTAT_time_wait',
               color  => 'EB6841',
               task   => 'hash_09_VER_89439e8f739977246cfb6f7f7c848a7b',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_dc40dbc7afa5176b4b04da76761922cd',
                  'hash_10_VER_295e35b7a5fa0152d9e9ee87f96f0c7f',
                  'hash_10_VER_195e7b96091d25ae1d322e8d623e9f0b',
                  'hash_10_VER_58144c5ad7e23a8e839b955310659db7'
               ],
            },
            {  item   => 'NETSTAT_close',
               color  => 'CC333F',
               task   => 'hash_09_VER_deabc014d90c891294a40dcd736b788c',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_0451f316904fa57f84824978de4bee4f',
                  'hash_10_VER_43fa1c9291d427a1b3df623d81c64a71',
                  'hash_10_VER_5617731fc041ded958a4944abcf5530d',
                  'hash_10_VER_c24f5390b1f2025cbf9e25a4de1f8b4d'
               ],
            },
            {  item   => 'NETSTAT_close_wait',
               color  => '6A4A3C',
               task   => 'hash_09_VER_707c68047349d37c9fcafea756e61e09',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_cf87c41f088d77991f1cd4ad2b7bfbcf',
                  'hash_10_VER_181028db4b2520474a158d5509a45610',
                  'hash_10_VER_c9bb9514d9d43ea876b13a49be07501b',
                  'hash_10_VER_f665b51c2365b30519bcba74c69cb9d4'
               ],
            },
            {  item   => 'NETSTAT_last_ack',
               color  => '00A0B0',
               task   => 'hash_09_VER_cc77f1868954f5fb9a24666598e5781f',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_7bc5ba4da3bef2056d2010aa647209b5',
                  'hash_10_VER_62b9ab92d3d1c7f345d06913016f11bb',
                  'hash_10_VER_0a8421fa8bbde30a0d337cf28aeb2f6e',
                  'hash_10_VER_7269e53b1eb62c347b8aaea7dfde2bcd'
               ],
            },
            {  item   => 'NETSTAT_listen',
               color  => '7A6A53',
               task   => 'hash_09_VER_71edaf831764db17771224276c51747f',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_30c63b09112d4b0369128066bc5dd010',
                  'hash_10_VER_0801b95b7d155227fcc41dba62cbe8d3',
                  'hash_10_VER_712bd258ff7945d9d594e20ac98aa1c1',
                  'hash_10_VER_1d800a5bdc92dc6be2615189193755e5'
               ],
            },
            {  item   => 'NETSTAT_closing',
               color  => 'D5DED9',
               task   => 'hash_09_VER_b62bfab6a8ac8d5ab317f223ec275853',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_628820972c6d80b767c25de66e36bef2',
                  'hash_10_VER_1bcc796b249df46c7ce96fc3738ec4d7',
                  'hash_10_VER_c592ad18c43282f23dbe986d64d7079e',
                  'hash_10_VER_8864b75cd89ebe6d3753e9ae0875afe0'
               ],
            },
            {  item   => 'NETSTAT_unknown',
               color  => '948C75',
               task   => 'hash_09_VER_9d939464ad27b38956628c902be68ea8',
               type   => 'STACK',
               hashes => [
                  'hash_10_VER_eea8db617a44c3ad9c9e89f08706ffc6',
                  'hash_10_VER_3027d8ef57d39951e34fb7de4e13eac9',
                  'hash_10_VER_68e30623864abee4a3c39d79386cbef6',
                  'hash_10_VER_01934ebaae64e19b80120114e3bebca8'
               ],
            },
         ],
      },
      {  name       => 'Swap Usage',
         base_value => '1000',
         hash       => 'hash_00_VER_e5c847a5205091e36d73928e2a9efb35',
         override   => { title => 1 },
         dt         => {
            hash       => 'hash_01_VER_f3bdaa6d7c29cb31b1c5e6a372efa5d4',
            input      => 'Get Swap Usage',
            VMSTAT_pswpin => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_e2a7d14f8c3e0acbcc219d4edaaf1c6d',
            },
            VMSTAT_pswpout => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_ac267b14b39ebb35aa6a548e44de8b05',
            },
         },
         items => [
            {  item   => 'VMSTAT_pswpin',
               color  => 'ECD078',
               task   => 'hash_09_VER_577e1764ceec6e22e51a8bbb97d9cf8e',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_e1efbb460489ce77a749b6140d8ae7af',
                  'hash_10_VER_104febce5ecfc805368f816ad1dc308a',
                  'hash_10_VER_ca1d2950732c13201ee64b23068f4738',
                  'hash_10_VER_ccce7b1a4fdff662cbd52690b72887b6'
               ],
            },
            {  item   => 'VMSTAT_pswpout',
               color  => 'D95B43',
               task   => 'hash_09_VER_1118e0e04554cc29dbf9f8eaf703bf24',
               type   => 'AREA',
               cdef   => 'Negate',
               hashes => [
                  'hash_10_VER_2dee09c88901350e50e9441be5e81e44',
                  'hash_10_VER_7d993c0625d92a2cfb8950fbdea4f31d',
                  'hash_10_VER_7011c686018b13ac1752fe33fe503cf2',
                  'hash_10_VER_db4438d64b12a3b16141e6d6bad7601c'
               ],
            },
         ],
      },
   ],
   inputs => {
      'Get W' => {
         type_id      => 1,
         hash         => 'hash_03_VER_a2c96b0ad84ca2775331081f9b795ca9',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type w --items <items>',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_85ead951b9c0ea4ffcba33ecd1e3a118',
               name        => 'hostname'
            },
         ],
         outputs => {
            STAT_loadavg          => 'hash_07_VER_296421d3011e3765f14b8074e29f796a',
            STAT_numusers         => 'hash_07_VER_d62c802855dcf6ccca0a57a60ee384bd',
         },
      },
      'Get Proc Stats' => {
         type_id      => 1,
         hash         => 'hash_03_VER_f089f990d2435e9ccb39a31f6bb9666c',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type proc_stat --items <items>',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_c99cc8373f0a8257d1b4909afd2a4623',
               name        => 'hostname'
            },
         ],
         outputs => {
            STAT_interrupts       => 'hash_07_VER_1a5f2b13a0291cec22b5fcc620e56447',
            STAT_context_switches => 'hash_07_VER_02651b1fcddc75660fb32915d5246ce3',
            STAT_forks            => 'hash_07_VER_32576de73d3639b897ae918f3fc52cc4',
            STAT_CPU_user         => 'hash_07_VER_69d45716470e8825b3febbcbe077b3dd',
            STAT_CPU_nice         => 'hash_07_VER_ecced5c0263215827eab1d9f2362dc7d',
            STAT_CPU_system       => 'hash_07_VER_d5481c3cdca37447f3d6d8c6f9ffb045',
            STAT_CPU_idle         => 'hash_07_VER_51ca1a64b1c5be49a843e1fae90929ef',
            STAT_CPU_iowait       => 'hash_07_VER_a664ae7820ace8f54cdabc829106a3ce',
            STAT_CPU_irq          => 'hash_07_VER_f22dab487f69954f00388de5cb0176b8',
            STAT_CPU_softirq      => 'hash_07_VER_9aa8b91ee63bea6ac3e3725a7fbab81d',
            STAT_CPU_steal        => 'hash_07_VER_d170ca8cc76807836332148d31874a6f',
            STAT_CPU_guest        => 'hash_07_VER_c3c27afa67e40c693fafcd9dba6881c1',
         },
      },
      'Get Disk Stats' => {
         type_id      => 1,
         hash         => 'hash_03_VER_0e40e175e6313d937954712b5baa6d4e',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type diskstats --items <items> '
                       . '--device <device>',
         prompt_title => 1,
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_ef6d77a70c636818a7c0d7f6ddb86cc0',
               name        => 'hostname'
            },
            {  allow_nulls => '',
               hash        => 'hash_07_VER_1db522fa629d5e33261ae9c169aea715',
               name        => 'device',
               override    => 1,
            },
         ],
         outputs => {
            DISK_reads              => 'hash_07_VER_2319ee4a21c1195d076a34c8ad94763a',
            DISK_reads_merged       => 'hash_07_VER_f445fc5828a637b1606db2714a8488e4',
            DISK_sectors_read       => 'hash_07_VER_1990fdf7bb67f11abfe538244b6bf36a',
            DISK_time_spent_reading => 'hash_07_VER_523af9be26fa1a6379a32c25d1b21a3d',
            DISK_writes             => 'hash_07_VER_8d110680fc974618103d58dbe1275269',
            DISK_writes_merged      => 'hash_07_VER_1d9e6a350fa2ed02296b24e99864c51e',
            DISK_sectors_written    => 'hash_07_VER_781876011aa0b192cb2dcf2ac623925d',
            DISK_time_spent_writing => 'hash_07_VER_9aa60584a8cf5b117d87221ed076d970',
            DISK_io_time            => 'hash_07_VER_502e54254e2a4c4f93a968da81a28e26',
            DISK_io_time_weighted   => 'hash_07_VER_15cd8a0d97071982acc3b0ce8771c0cc',
         },
      },
      'Get Memory' => {
         type_id      => 1,
         hash         => 'hash_03_VER_1ff2f59bebf528d142a841ab8392121b',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type memory --items <items>',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_9032076e5669e924bf528a22142ae25b',
               name        => 'hostname'
            },
         ],
         outputs => {
            STAT_memused   => 'hash_07_VER_0059dbbdc04e79a6996ed9a45d2ccfcd',
            STAT_memcached => 'hash_07_VER_412136717ee6a6b2afcb55f5f1df882f',
            STAT_membuffer => 'hash_07_VER_04dcdbd02ea2ad587e8101158e0b94d9',
            STAT_memshared => 'hash_07_VER_fa7dec2fb5edc6313ec5a46ba5b66dc0',
            STAT_memfree   => 'hash_07_VER_24994f161be152fbd728a969be026894',
            STAT_memtotal  => 'hash_07_VER_c32b28e40f2df6d3bd24d5792574a230',
         },
      },
      'Get Disk Space' => {
         type_id      => 1,
         hash         => 'hash_03_VER_9233ab2796cf312a44f54b91390d1789',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type df --items <items> '
                       . '--volume <volume>',
         prompt_title => 1,
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_f93dc0eca511e0ebcd91a57537886225',
               name        => 'hostname'
            },
            {  allow_nulls => '',
               hash        => 'hash_07_VER_aaf730665b5ee935ee71466ca12fd5c6',
               name        => 'volume',
               override    => 1,
            },
         ],
         outputs => {
            DISKFREE_used      => 'hash_07_VER_f2ec16bb5bca48f9d4f3f704fe7a9eaf',
            DISKFREE_available => 'hash_07_VER_86f039e40b8f2615b7e849d1d709f13d',
         },
      },
      'Get Network Traffic' => {
         type_id      => 1,
         hash         => 'hash_03_VER_82ef487d9e2e02f6ad97fb05368b9b4b',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type netdev --items <items> '
                       . '--device <device>',
         prompt_title => 1,
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_062c5b845f4659eae4386cb10c67bfe1',
               name        => 'hostname'
            },
            {  allow_nulls => '',
               hash        => 'hash_07_VER_0311246dd8c4ce8b47e58f3d0a396ceb',
               name        => 'device',
               override    => 1,
            },
         ],
         outputs => {
            NETDEV_rxbytes => 'hash_07_VER_34603bc78ebab0444b48df5cd75d2eb0',
            NETDEV_txbytes => 'hash_07_VER_47a906734a9bb011623c0edac9ced050',
         },
      },
      'Get Network Errors' => {
         type_id      => 1,
         hash         => 'hash_03_VER_8bfc3674ba3e7bcf42e0e7039b45acf5',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type netdev --items <items> '
                       . '--device <device>',
         prompt_title => 1,
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_debf83f71d124db5d31c289e89c235d6',
               name        => 'hostname'
            },
            {  allow_nulls => '',
               hash        => 'hash_07_VER_b000c079b0617d470d80ecfedda61168',
               name        => 'device',
               override    => 1,
            },
         ],
         outputs => {
            NETDEV_rxerrs    => 'hash_07_VER_e8c0e814429f432b85d685aaddde96a2',
            NETDEV_rxdrop    => 'hash_07_VER_2ea0f0838f90313b861671f7c7cf5a90',
            NETDEV_rxfifo    => 'hash_07_VER_4a3f4afee706402479e9ec4df34a2736',
            NETDEV_rxframe   => 'hash_07_VER_5479c55cece7be998166749e51210d07',
            NETDEV_txerrs    => 'hash_07_VER_7e3b47ce389bc70f6c92759aa9c29d05',
            NETDEV_txdrop    => 'hash_07_VER_d7f470b13e364016ff314de7eb71e2b0',
            NETDEV_txfifo    => 'hash_07_VER_cb07a6f85d6bf04e360a34fd7174d763',
            NETDEV_txcolls   => 'hash_07_VER_9187075324ae7e73b12b77b0527ca1a2',
            NETDEV_txcarrier => 'hash_07_VER_6877319fae49f61b766499f56cd2f05f',
         },
      },
      'Get Network Connection States' => {
         type_id      => 1,
         hash         => 'hash_03_VER_aa66dd95a1cab84788c22a85c591b334',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type netstat --items <items> ',
         prompt_title => 1,
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_e083d2a3097867e581f7d3b2d706e7d8',
               name        => 'hostname'
            },
         ],
         outputs => {
            NETSTAT_established => 'hash_07_VER_ebe3e0c149bf99ca3dfc2bce4148f163',
            NETSTAT_syn_sent    => 'hash_07_VER_1210872f58b4be1e3b10712f5be7d250',
            NETSTAT_syn_recv    => 'hash_07_VER_d9517eae2c5e2033a2118ce65232fb74',
            NETSTAT_fin_wait1   => 'hash_07_VER_a537759c75193685b917f55bb974dee2',
            NETSTAT_fin_wait2   => 'hash_07_VER_62496b7d61d0f98f99620f1cfad5eed5',
            NETSTAT_time_wait   => 'hash_07_VER_117fd6fc70b65fa7cdb309511e2294e6',
            NETSTAT_close       => 'hash_07_VER_850a2a1fa5e17d6f21f5361c5ddd239b',
            NETSTAT_close_wait  => 'hash_07_VER_db703661788c0988602aacb7a4887c1b',
            NETSTAT_last_ack    => 'hash_07_VER_bc4ea56561b968c59e221d696dd3c6b9',
            NETSTAT_listen      => 'hash_07_VER_3bbd6e36bc06e22b16866f92a096fff6',
            NETSTAT_closing     => 'hash_07_VER_638c11d9981115d11298046a9ce5d70e',
            NETSTAT_unknown     => 'hash_07_VER_5d5183c3930b91896e8de318efb875be',
         },
      },
      'Get Swap Usage' => {
         type_id      => 1,
         hash         => 'hash_03_VER_877d9ee890bd332237aaa25528e33981',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type vmstat --items <items> ',
         prompt_title => 1,
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_97fdd313406f93a7efe52cbf679ab5c2',
               name        => 'hostname'
            },
         ],
         outputs => {
            VMSTAT_pswpin  => 'hash_07_VER_c37cd12d284f402e4e6550f1c4c1c363',
            VMSTAT_pswpout => 'hash_07_VER_ca2301a5593e49bc16df695452881a96',
         },
      },
   },
};
