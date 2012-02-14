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
   name   => 'MongoDB Server',
   hash   => 'hash_02_VER_964285787036ca169bbc3e8d6b4bd9ca',
   version => {
      version => '1.1.8',
      hash    => 'hash_06_VER_11fc9bd183398a0b4f8e1a065a6e3b18',
   },
   checksum => 'hash_06_VER_f8bd64840238c602c4523385db8aa599',
   graphs => [
      {  name       => 'MongoDB Connections',
         base_value => '1000',
         hash       => 'hash_00_VER_601d44d082198ea8b27a67674bdb0c6a',
         dt         => {
            hash       => 'hash_01_VER_5c57fe3483653fb6959563fdabf9bc64',
            input      => 'Get MongoDB Stats',
            MONGODB_connected_clients => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_4ecb4eed3038865504c8fdd63ba5c5dc'
            },
         },
         items => [
            {  item   => 'MONGODB_connected_clients',
               color  => '9B2B1B',
               task   => 'hash_09_VER_ab2cbe79b01557c36352afd1eaf001ae',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_ebced2b4f26ed1495c63fc2f7ab722c4',
                  'hash_10_VER_5ac85f5f172ad4648d65036bd2e10f36',
                  'hash_10_VER_2574cc7c7297d62a575944f1b66470d4',
                  'hash_10_VER_4b9c36371617d559727f797c166d527d'
               ],
            },
         ],
      },
      {  name       => 'MongoDB Memory',
         base_value => '1000',
         hash       => 'hash_00_VER_c558581ad6226c7c910c561dc6a0ab81',
         dt         => {
            hash       => 'hash_01_VER_6cdcaafe2437d45fcf298f78a7d6aa4f',
            input      => 'Get MongoDB Stats',
            MONGODB_used_virtual_memory => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_1e9933298c3edec210c84c0beb7a34d5'
            },
            MONGODB_used_mapped_memory => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_a6678ba6f5c8608fcd612c092027ac20'
            },
            MONGODB_used_resident_memory => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_3ee50312180aa16059e6f337246cc396'
            },
         },
         items => [
            {  item   => 'MONGODB_used_virtual_memory',
               color  => '3B7AD9',
               task   => 'hash_09_VER_f2dee226b861bf39dc58b5fb3fa1dd73',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_d1144a397ca56ce5efd03a02e350aef3',
                  'hash_10_VER_eb6f5f040392edb6a53dc395c5b1c539',
                  'hash_10_VER_ee619833f2aae85aa1e03296769deb6e',
                  'hash_10_VER_069fca9b9c76ac88cb1735e6761dfea4'
               ],
            },
            {  item   => 'MONGODB_used_mapped_memory',
               color  => '6FD1BF',
               task   => 'hash_09_VER_a5259564a2276d3144040bd76c68eada',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_53e1859be4b7ef43653d390b8d5bdeba',
                  'hash_10_VER_c5697bcf27a48858ed10ca44e1995a73',
                  'hash_10_VER_6c7284363a5f3aff550977f084bb8a0e',
                  'hash_10_VER_0a35342a25cb45b04eb0c0cac7b23484'
               ],
            },
            {  item   => 'MONGODB_used_resident_memory',
               color  => '0E6E5C',
               task   => 'hash_09_VER_fe2aeffb8d18fa9391ccf630536e89c1',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_99e33e308aa02192637c3b8cefae4f44',
                  'hash_10_VER_ce786c919e8fe2ae32087485d91ccc5b',
                  'hash_10_VER_57a5ddcd05da3b71e2ca26326978604c',
                  'hash_10_VER_3d307947b531f878d68473e907f7050d'
               ],
            },
         ],
      },
      {  name       => 'MongoDB Commands',
         base_value => '1000',
         hash       => 'hash_00_VER_8bc802a80c9321e8095e72c3171830a2',
         dt         => {
            hash       => 'hash_01_VER_acd6ec325ca8ca4e425ba034ee790daf',
            input      => 'Get MongoDB Stats',
            MONGODB_op_inserts => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_a4ef49a56bcaf21c29e0c7e90f0d95df'
            },
            MONGODB_op_queries => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_6e807c678a4b6648b27245327961f640'
            },
            MONGODB_op_updates => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_f2a703101705dcdea6ed1a572d95660d'
            },
            MONGODB_op_deletes => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_73fae24ddf1c83a3b9d3723c5a868b61'
            },
            MONGODB_op_getmores => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_d82deb6d93bd7f85941657d1cab61807'
            },
            MONGODB_op_commands => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_8277b10cd5940d6cec1a0ed9ba98935f'
            },
         },
         items => [
            {  item   => 'MONGODB_op_inserts',
               color  => 'FF7200',
               task   => 'hash_09_VER_ffc07ecf670b764b62d6fbc4f00aafd5',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_a0878ac88f101b387bf5c60696619a89',
                  'hash_10_VER_f4146be08a4eaaefd1aaf855664fe2c4',
                  'hash_10_VER_76ec9dfea442c668a2e3e95c2b564982',
                  'hash_10_VER_bf912a787cdec3f998aa115b0b6cca44'
               ],
            },
            {  item   => 'MONGODB_op_queries',
               color  => '503001',
               task   => 'hash_09_VER_0809464faec2716c4787a4fa1b965de3',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_5106b90a75080ff40ef64059fa2885be',
                  'hash_10_VER_388712396779f3f4e3075c8354281f9e',
                  'hash_10_VER_e8b4e81fcecbf4d6ca6c0a8c1bae3efb',
                  'hash_10_VER_bcba7cfc7d0106bacc1529d2c5cf850d'
               ],
            },
            {  item   => 'MONGODB_op_updates',
               color  => 'EDAC00',
               task   => 'hash_09_VER_eeaf3ade030021fedbb7bc4d70d89c8a',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_56672b57dd04f971ac1b962702cddfe2',
                  'hash_10_VER_0a83e62751aa3de737df54bb61bdaf2d',
                  'hash_10_VER_31af37e06052ddc3ae2453762f5070c6',
                  'hash_10_VER_ccef69c1c7e8de58cbb1b9439bd8a36d'
               ],
            },
            {  item   => 'MONGODB_op_deletes',
               color  => '506101',
               task   => 'hash_09_VER_7b43008e6542f24d6a80028ccde9f1f7',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_def2bb376198cd5b37eeab9b7dd32010',
                  'hash_10_VER_dd4bc4ae154a26d9b57613adbf15cf5e',
                  'hash_10_VER_b93223c54946a1ae4427808050a88d59',
                  'hash_10_VER_4dacdb1685abf81b6746e701f1e30563'
               ],
            },
            {  item   => 'MONGODB_op_getmores',
               color  => '0CCCCC',
               task   => 'hash_09_VER_90c5838af8ee40db97aaff231ab73aae',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_6c6e9f8aaaac56d8f594495abee9beed',
                  'hash_10_VER_fa251cf4de93185a2888434ef686ad69',
                  'hash_10_VER_7ea793dce043626cb2d5776c0a516eff',
                  'hash_10_VER_624efb05355df8949ea5bbac2baf917c'
               ],
            },
            {  item   => 'MONGODB_op_commands',
               color  => '53CA05',
               task   => 'hash_09_VER_6d2dffd5d3fdf06261b5f9422c2c3ba8',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_b83f7a79877fe807f526ad29b5345627',
                  'hash_10_VER_7069b60e07d133e220586eaa37b6db2d',
                  'hash_10_VER_c8e0574e1d56440de98ff18e381d3d69',
                  'hash_10_VER_075ad0144a5ca3f82842cefd0283e294'
               ],
            },
         ],
      },
      {  name       => 'MongoDB Index Ops',
         base_value => '1000',
         hash       => 'hash_00_VER_1b1e03088fbd221860fef727c090113a',
         dt         => {
            hash       => 'hash_01_VER_750885cf52501b81eebd67de196ed103',
            input      => 'Get MongoDB Stats',
            MONGODB_index_accesses => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_d96bd9f48bcb56bdd6e9386e41f68fa3'
            },
            MONGODB_index_hits => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_f0fb3a39da657fd9e70e0b48487bbf6a'
            },
            MONGODB_index_misses => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_2a1a583bc64854b70e059223846b2beb'
            },
            MONGODB_index_resets => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_03cd9de38249d48481d23f1d2f49675d'
            },
         },
         items => [
            {  item   => 'MONGODB_index_accesses',
               color  => 'FF7200',
               task   => 'hash_09_VER_17b21983485cefe0f7da73a4a09bb22d',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_262e847f11efdf66290a5ec869a3c248',
                  'hash_10_VER_0c5adb1398401a6d27423ebb89c05a27',
                  'hash_10_VER_e39b93697b67c61cb1d0e7e063fc3eff',
                  'hash_10_VER_198fbee284e005e8b9f3004b5a6a521a'
               ],
            },
            {  item   => 'MONGODB_index_hits',
               color  => '503001',
               task   => 'hash_09_VER_5c9b89a37b5eaa531b52ef1d9226a530',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_8dcfdd940141e71956c61c1d6385a25a',
                  'hash_10_VER_4af945224318ca106ac575665f1d8fdc',
                  'hash_10_VER_115f96ab6b8b92af1fb04be2a93e7adc',
                  'hash_10_VER_1ea5f5ea97c024ae27ce2169886d3d14'
               ],
            },
            {  item   => 'MONGODB_index_misses',
               color  => 'EDAC00',
               task   => 'hash_09_VER_deac71554b636ea5c35f2c9b86c0820b',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_ca0f8fc02f9b7f3171b14fbcddc76c4c',
                  'hash_10_VER_be21f43102070cfe4de22b4c94f5c346',
                  'hash_10_VER_4a4769e3f576ad2a5554fbcbd01cb417',
                  'hash_10_VER_76210c7bef5fd38844213238eddcad1f'
               ],
            },
            {  item   => 'MONGODB_index_resets',
               color  => '506101',
               task   => 'hash_09_VER_220f45219b14bbbc12fd2b8989344d94',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_b4e284f14d2abc5cc8334b38f4c0ccf2',
                  'hash_10_VER_64a5aabc5c6cf609eb2c113f9e20512f',
                  'hash_10_VER_955575c7baad31636b21ae17923bea2f',
                  'hash_10_VER_3c7a7bd0ccaab5056795e2c0925d4319'
               ],
            },
         ],
      },
      {  name       => 'MongoDB Background Flushes',
         base_value => '1000',
         hash       => 'hash_00_VER_66e9ab65f91018b77dd5ed335d9090f5',
         dt         => {
            hash       => 'hash_01_VER_4c0c36b111b23edc86803b0237c43358',
            input      => 'Get MongoDB Stats',
            MONGODB_back_flushes => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_da9c6cc3af79bccd9b0b7f83be0d8dce'
            },
            MONGODB_back_total_ms => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_c255950d0088fad37d813c3d2363eccc'
            },
            MONGODB_back_average_ms => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_acba4fa253a50c3340dca8f451b404bb'
            },
            MONGODB_back_last_ms => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_36900471f31caf8be7d9c6746f6be0eb'
            },
         },
         items => [
            {  item   => 'MONGODB_back_flushes',
               color  => '71FF06',
               task   => 'hash_09_VER_5d33123f415d387e5ab98ab57cc2b610',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_d4ce557366dc60bc10a7bfc5ccb3599d',
                  'hash_10_VER_533e198bcef4bd7b5f0069fd2f9346b4',
                  'hash_10_VER_511169ae485c1dd54ce71ee2e2314b38',
                  'hash_10_VER_ae2a1bef380435a09b77e619e4af0458'
               ],
            },
            {  item   => 'MONGODB_back_total_ms',
               color  => 'FF2400',
               task   => 'hash_09_VER_29d91f2f9c237cc23226aa1a0c3c87f3',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_06d24fa1e08ff80ea4011e465284cacb',
                  'hash_10_VER_97c86cd38d24a5aeacc18499a6e8f7fb',
                  'hash_10_VER_7f1a0aec6216a6ee6cb6d8f1f861b28e',
                  'hash_10_VER_b7298db032da432bd2a9e8902f2007df'
               ],
            },
            {  item   => 'MONGODB_back_average_ms',
               color  => 'E83089',
               task   => 'hash_09_VER_e7338014c96a82013322354a0af0c05d',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_6c26b27c6086c0006122abe33ac9637c',
                  'hash_10_VER_2a121c8e20c66b35964799f8f3f609c3',
                  'hash_10_VER_7f81b9dcf27be27651520cdf0b33b771',
                  'hash_10_VER_acd2a59b577cbbaea7bc758438eb1cc4'
               ],
            },
            {  item   => 'MONGODB_back_last_ms',
               color  => '17D2E1',
               task   => 'hash_09_VER_81f896a1c462772b06f92260245ee932',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_7e73e6aaf220dfb7598bbf95d0151428',
                  'hash_10_VER_6d755746e8b5e5ad8a17254fd0076610',
                  'hash_10_VER_ffcc7bd545416c036bf3f42cda5b93d2',
                  'hash_10_VER_79b270b2f8b56f09f0fbca4b7a3f317c'
               ],
            },
         ],
      },
      {  name       => 'MongoDB Slave Lag',
         base_value => '1000',
         hash       => 'hash_00_VER_93989b7f3472d222a7093db6468b0c23',
         dt         => {
            hash       => 'hash_01_VER_9037877a6c79127f92129311c03a2abb',
            input      => 'Get MongoDB Stats',
            MONGODB_slave_lag => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_f38fc1d8ca67e65597eb679adfc628e2'
            },
         },
         items => [
            {  item   => 'MONGODB_slave_lag',
               color  => '3F00B8',
               task   => 'hash_09_VER_11d87247f56ee928868697c303e8ec9c',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_57dbb72026ad93c625ff09e58e6fcc27',
                  'hash_10_VER_7966e12ad0bf579449ea664a02507aeb',
                  'hash_10_VER_39844808431759aeea3a00dd3555eb41',
                  'hash_10_VER_028fa2e61ada11ce0472b36c6f581c8c'
               ],
            },
         ],
      },
   ],
   inputs => {
      'Get MongoDB Stats' => {
         type_id      => 1,
         hash         => 'hash_03_VER_63af1b6572e75a1bbbfadfcaf547fcc0',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type mongodb --items <items> ',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_1523cdf6f372d7c285be82d424c152cb',
               name        => 'hostname'
            },
            {  allow_nulls => 'on',
               hash        => 'hash_07_VER_09eeb4f28b9e44cc1ade9ade9f38f440',
               name        => 'port2',
            },
         ],
         outputs => {
            MONGODB_connected_clients        => 'hash_07_VER_284b5a64b1e5e14c5d80a1d700bd7001',
            MONGODB_used_resident_memory     => 'hash_07_VER_1745adc9d44b5c06742df430ef72b259',
            MONGODB_used_mapped_memory       => 'hash_07_VER_2afa03e450aa34079b421f7c58b8657b',
            MONGODB_used_virtual_memory      => 'hash_07_VER_fe902ecbef31c1f3d88260ee57efff33',
            MONGODB_index_accesses           => 'hash_07_VER_a82944b823ed21206be8b1072e11f9e7',
            MONGODB_index_hits               => 'hash_07_VER_21bb6986a0fb39f1c12094b726377c93',
            MONGODB_index_misses             => 'hash_07_VER_482cae2d0fd9b305d476e24a2b011dc2',
            MONGODB_index_resets             => 'hash_07_VER_d809a7fc8cfb1138322915e05ee8e221',
            MONGODB_back_flushes             => 'hash_07_VER_9894b68da31096a907b02169d60086cb',
            MONGODB_back_total_ms            => 'hash_07_VER_3d794263eb6c96405fb470a421f7a53a',
            MONGODB_back_average_ms          => 'hash_07_VER_41c390fe38814d7d9f38f6fe1ef4d7fa',
            MONGODB_back_last_ms             => 'hash_07_VER_18a73661b425554281af5b693bc5c848',
            MONGODB_op_inserts               => 'hash_07_VER_14c15103c7921c48c7b4831d721b4d42',
            MONGODB_op_queries               => 'hash_07_VER_34c9db7bf2d4efbec260063fa3338e14',
            MONGODB_op_updates               => 'hash_07_VER_9ed8d64157627bb3ef746fef7e535ad6',
            MONGODB_op_deletes               => 'hash_07_VER_f8ac47f20256dc45ac0465e76863c600',
            MONGODB_op_getmores              => 'hash_07_VER_e5456bc422f5bf251b543a58000a3cb0',
            MONGODB_op_commands              => 'hash_07_VER_b933cfc444d57db2b4a9f423b93d13a8',
            MONGODB_slave_lag                => 'hash_07_VER_9e48f99539418329239a540c1d5736c0',
         },
      },
   },
};
