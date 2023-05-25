{ composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null
, noDev ? false }:

let
  packages = {
    "amenadiel/jpgraph" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amenadiel-jpgraph-e196d51a520a4182cc26240b4a0744495706f11a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/HuasoFoundries/jpgraph/zipball/e196d51a520a4182cc26240b4a0744495706f11a";
          sha256 = "08y6cc7b1n6w2176grdx7ligjr9725bjx5ij8pdkz7l83rmaxabx";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-459f2781e1a08d52ee56b0b1444086e038561e3f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/brick/math/zipball/459f2781e1a08d52ee56b0b1444086e038561e3f";
          sha256 = "00qgiy3ywrhn0lhzjagizi47np2xj9g4gqm7p2g0iv8cciwkf4bp";
        };
      };
    };
    "clue/socket-raw" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "clue-socket-raw-91e9f619f6769f931454a9882c21ffd7623d06cb";
        src = fetchurl {
          url =
            "https://api.github.com/repos/clue/socket-raw/zipball/91e9f619f6769f931454a9882c21ffd7623d06cb";
          sha256 = "0jhpydampfwb264hv9a5hdpvrwmy9dsqav85fn30iv1gb0cgqijm";
        };
      };
    };
    "dapphp/radius" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dapphp-radius-023f538e46d20fa285f55dd65d7054fb9b370a82";
        src = fetchurl {
          url =
            "https://api.github.com/repos/dapphp/radius/zipball/023f538e46d20fa285f55dd65d7054fb9b370a82";
          sha256 = "1sswwxs9i5fi272iac1127xjhr641m9864sv3dxvlmaxxh6qbca4";
        };
      };
    };
    "dflydev/dot-access-data" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "dflydev-dot-access-data-f41715465d65213d644d3141a6a93081be5d3549";
        src = fetchurl {
          url =
            "https://api.github.com/repos/dflydev/dflydev-dot-access-data/zipball/f41715465d65213d644d3141a6a93081be5d3549";
          sha256 = "1vgbjrq8qh06r26y5nlxfin4989r3h7dib1jifb2l3cjdn1r5bmj";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-1ca8f21980e770095a31456042471a57bc4c68fb";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/cache/zipball/1ca8f21980e770095a31456042471a57bc4c68fb";
          sha256 = "1p8ia9g3mqz71bv4x8q1ng1fgcidmyksbsli1fjbialpgjk9k1ss";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-c480849ca3ad6706a39c970cdfe6888fa8a058b8";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/dbal/zipball/c480849ca3ad6706a39c970cdfe6888fa8a058b8";
          sha256 = "15j98h80li6m1aj53p8ddy0lkbkanc5kdy6xrikpdd6zhmsfgq9k";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-0e2a4f1f8cdfc7a92ec3b01c9334898c806b30de";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/deprecations/zipball/0e2a4f1f8cdfc7a92ec3b01c9334898c806b30de";
          sha256 = "1sk1f020n0w7p7r4rsi7wnww85vljrim1i5h9wb0qiz2c4l8jj09";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "doctrine-event-manager-95aa4cb529f1e96576f3fda9f5705ada4056a520";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/event-manager/zipball/95aa4cb529f1e96576f3fda9f5705ada4056a520";
          sha256 = "0xi2s28jmmvrndg1yd0r5s10d9a0q6j2dxdbazvcbws9waf0yrvj";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-d9d313a36c872fd6ee06d9a6cbcf713eaa40f024";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/inflector/zipball/d9d313a36c872fd6ee06d9a6cbcf713eaa40f024";
          sha256 = "1z6y0mxqadarw76whppcl0h0cj7p5n6k7mxihggavq46i2wf7nhj";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-84a527db05647743d50373e0ec53a152f2cde568";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/lexer/zipball/84a527db05647743d50373e0ec53a152f2cde568";
          sha256 = "1wn3p8vjq3hqzn0k6dmwxdj2ykwk3653h5yw7a57avz9qkb86z70";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "dragonmantank-cron-expression-782ca5968ab8b954773518e9e49a6f892a34b2a8";
        src = fetchurl {
          url =
            "https://api.github.com/repos/dragonmantank/cron-expression/zipball/782ca5968ab8b954773518e9e49a6f892a34b2a8";
          sha256 = "18pxn1v3b2yhwzky22p4wn520h89rcrihl7l6hd0p769vk1b2qg9";
        };
      };
    };
    "easybook/geshi" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "easybook-geshi-b4df5fa84a44d4e12eff67263a701eac7e157241";
        src = fetchurl {
          url =
            "https://api.github.com/repos/easybook/geshi/zipball/b4df5fa84a44d4e12eff67263a701eac7e157241";
          sha256 = "13s2z7ylbbfgrf0g059hl6zxwadwsy4a69avr8sh458p81l29v5n";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "egulias-email-validator-3a85486b709bc384dae8eb78fb2eec649bdb64ff";
        src = fetchurl {
          url =
            "https://api.github.com/repos/egulias/EmailValidator/zipball/3a85486b709bc384dae8eb78fb2eec649bdb64ff";
          sha256 = "1vbwd4fgg6910pfy0dpzkaf5djwzpx5nqr43hy2qpmkp11mkbbxw";
        };
      };
    };
    "ezyang/htmlpurifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ezyang-htmlpurifier-523407fb06eb9e5f3d59889b3978d5bfe94299c8";
        src = fetchurl {
          url =
            "https://api.github.com/repos/ezyang/htmlpurifier/zipball/523407fb06eb9e5f3d59889b3978d5bfe94299c8";
          sha256 = "1g65bndiwd2dmq5p6f29lh66x8lwxhpp1pmd619qbm8bnsy7hvki";
        };
      };
    };
    "fico7489/laravel-pivot" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "fico7489-laravel-pivot-44f6e7b84761ae671b776dadbb668871c22edaeb";
        src = fetchurl {
          url =
            "https://api.github.com/repos/fico7489/laravel-pivot/zipball/44f6e7b84761ae671b776dadbb668871c22edaeb";
          sha256 = "1i2546brb2i0la326cdblv6vx8b90mlcnwcgpqg8ban36wrnjvaq";
        };
      };
    };
    "fruitcake/php-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fruitcake-php-cors-58571acbaa5f9f462c9c77e911700ac66f446d4e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/fruitcake/php-cors/zipball/58571acbaa5f9f462c9c77e911700ac66f446d4e";
          sha256 = "18xm69q4dk9zqfwgp938y2byhlyy9lr5x5qln4k2mg8cq8xr2sm1";
        };
      };
    };
    "graham-campbell/result-type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "graham-campbell-result-type-672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
        src = fetchurl {
          url =
            "https://api.github.com/repos/GrahamCampbell/Result-Type/zipball/672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
          sha256 = "156zbfs19r9g543phlpjwhqin3k2x4dsvr5p0wk7rk4j0wwp8l2v";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-b50a2a1251152e43f6a37f0fa053e730a67d25ba";
        src = fetchurl {
          url =
            "https://api.github.com/repos/guzzle/guzzle/zipball/b50a2a1251152e43f6a37f0fa053e730a67d25ba";
          sha256 = "0cy828r0kafx58jh0k1cy17y77qh248d9kfk9ncn9pyq2q5v9p9p";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-b94b2807d85443f9719887892882d0329d1e2598";
        src = fetchurl {
          url =
            "https://api.github.com/repos/guzzle/promises/zipball/b94b2807d85443f9719887892882d0329d1e2598";
          sha256 = "1vvac7y5ax955qjg7dyjmaw3vab9v2lypjygap0040rv3z4x9vz8";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-b635f279edd83fc275f822a1188157ffea568ff6";
        src = fetchurl {
          url =
            "https://api.github.com/repos/guzzle/psr7/zipball/b635f279edd83fc275f822a1188157ffea568ff6";
          sha256 = "0734h3r8db06hcffagr8s7bxhjkvlfzvqg1klwmqidflwdwk7yj1";
        };
      };
    };
    "guzzlehttp/uri-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "guzzlehttp-uri-template-b945d74a55a25a949158444f09ec0d3c120d69e2";
        src = fetchurl {
          url =
            "https://api.github.com/repos/guzzle/uri-template/zipball/b945d74a55a25a949158444f09ec0d3c120d69e2";
          sha256 = "02vd4r2di8xh9n5awfjy1lyb7vn5gkaynbiiqilm8did0r89qdhf";
        };
      };
    };
    "influxdb/influxdb-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "influxdb-influxdb-php-d6e59f4f04ab9107574fda69c2cbe36671253d03";
        src = fetchurl {
          url =
            "https://api.github.com/repos/influxdata/influxdb-php/zipball/d6e59f4f04ab9107574fda69c2cbe36671253d03";
          sha256 = "12pgci28sgkkkd7cmfqfsqifhniqs6mkziah0ij4rhxq7z3s20k2";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "justinrainbow-json-schema-ad87d5a5ca981228e0e205c2bc7dfb8e24559b60";
        src = fetchurl {
          url =
            "https://api.github.com/repos/justinrainbow/json-schema/zipball/ad87d5a5ca981228e0e205c2bc7dfb8e24559b60";
          sha256 = "12jrid38fyjcbhldxa26dm889mfr05kbr10mixdg77k47giin84q";
        };
      };
    };
    "laravel-notification-channels/webpush" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "laravel-notification-channels-webpush-b31f7d807d30c80e7391063291ebfe9683bb7de5";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel-notification-channels/webpush/zipball/b31f7d807d30c80e7391063291ebfe9683bb7de5";
          sha256 = "1vdalwjcncf3xz44j85bkb709c9mlnjqsxrhsvjmlkabwn2zi4aj";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-e14d28c0f9403630d13f308bb43f3d3cb73d6d67";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel/framework/zipball/e14d28c0f9403630d13f308bb43f3d3cb73d6d67";
          sha256 = "0p7mg9yaqd3iz7a63khcl31sqgnwvljdk2sibdbp3nbgghdcasrs";
        };
      };
    };
    "laravel/serializable-closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "laravel-serializable-closure-f23fe9d4e95255dacee1bf3525e0810d1a1b0f37";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel/serializable-closure/zipball/f23fe9d4e95255dacee1bf3525e0810d1a1b0f37";
          sha256 = "0dyvqph5q1lb6gl6ga4b1xkziqzj6s2ia5pbd7h40anm4sh3z8dl";
        };
      };
    };
    "laravel/socialite" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-socialite-a14a177f2cc71d8add71e2b19e00800e83bdda09";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel/socialite/zipball/a14a177f2cc71d8add71e2b19e00800e83bdda09";
          sha256 = "1fxlywrr2pansda2p9k475i20il2b5sz93w9b0kr7lihf242rz1z";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-04a2d3bd0d650c0764f70bf49d1ee39393e4eb10";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel/tinker/zipball/04a2d3bd0d650c0764f70bf49d1ee39393e4eb10";
          sha256 = "06rivrmcf8m8hm4vn9s7wwpfmgl89p73b78dm0qx26rs0lpr36p0";
        };
      };
    };
    "laravel/ui" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-ui-05ff7ac1eb55e2dfd10edcfb18c953684d693907";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel/ui/zipball/05ff7ac1eb55e2dfd10edcfb18c953684d693907";
          sha256 = "0g4302i22lkfdn0mx29a161x0239h98x3fbc2997dl4dzpk68h8f";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-d44a24690f16b8c1808bf13b1bd54ae4c63ea048";
        src = fetchurl {
          url =
            "https://api.github.com/repos/thephpleague/commonmark/zipball/d44a24690f16b8c1808bf13b1bd54ae4c63ea048";
          sha256 = "1qx99m1qa2g3l6r2fim3rak6qh28zjj8sqjj86nq743dm3yszygw";
        };
      };
    };
    "league/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-config-754b3604fb2984c71f4af4a9cbe7b57f346ec1f3";
        src = fetchurl {
          url =
            "https://api.github.com/repos/thephpleague/config/zipball/754b3604fb2984c71f4af4a9cbe7b57f346ec1f3";
          sha256 = "0yjb85cd0qa0mra995863dij2hmcwk9x124vs8lrwiylb0l3mn8s";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-81e87e74dd5213795c7846d65089712d2dda90ce";
        src = fetchurl {
          url =
            "https://api.github.com/repos/thephpleague/flysystem/zipball/81e87e74dd5213795c7846d65089712d2dda90ce";
          sha256 = "1lhcl71nbbkq27ssd92ilwbjicddnlwwf4ggihxwwv213847bdl9";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "league-mime-type-detection-ff6248ea87a9f116e78edd6002e39e5128a0d4dd";
        src = fetchurl {
          url =
            "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/ff6248ea87a9f116e78edd6002e39e5128a0d4dd";
          sha256 = "1a63nvqd6cz3vck3y8vjswn6c3cfwh13p0cn0ci5pqdf0bgjvvfz";
        };
      };
    };
    "league/oauth1-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-oauth1-client-d6365b901b5c287dd41f143033315e2f777e1167";
        src = fetchurl {
          url =
            "https://api.github.com/repos/thephpleague/oauth1-client/zipball/d6365b901b5c287dd41f143033315e2f777e1167";
          sha256 = "0hkh8l7884g8ssja1biwfb59x0jj951lwk6kmiacjqvyvzs07qmx";
        };
      };
    };
    "librenms/laravel-vue-i18n-generator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "librenms-laravel-vue-i18n-generator-956cb56130ee8c1faa48996184f5e37e9d25ac2f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/librenms/laravel-vue-i18n-generator/zipball/956cb56130ee8c1faa48996184f5e37e9d25ac2f";
          sha256 = "0q995a4kyfkjw37n4j4052jc4vrk4issyf5pzb285shv24nnlngm";
        };
      };
    };
    "mews/purifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mews-purifier-48e7bddc18140412d7cd815b6eea2fc7a141c432";
        src = fetchurl {
          url =
            "https://api.github.com/repos/mewebstudio/Purifier/zipball/48e7bddc18140412d7cd815b6eea2fc7a141c432";
          sha256 = "1z3qh73v458sm143w08lygizds2zdqakjm54rab9792i0zxnlmfg";
        };
      };
    };
    "minishlink/web-push" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "minishlink-web-push-ec034f1e287cd1e74235e349bd017d71a61e9d8d";
        src = fetchurl {
          url =
            "https://api.github.com/repos/web-push-libs/web-push-php/zipball/ec034f1e287cd1e74235e349bd017d71a61e9d8d";
          sha256 = "1v8gr9wkhbqybb7fi8bmyhvp9i8bjpjx63bcsbyqf1aw9nrfnpcv";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-f259e2b15fb95494c83f52d3caad003bbf5ffaa1";
        src = fetchurl {
          url =
            "https://api.github.com/repos/Seldaek/monolog/zipball/f259e2b15fb95494c83f52d3caad003bbf5ffaa1";
          sha256 = "0lz7lgr1bcxsh4c63z8k26bxawkx14h689wgdiap8992rf97kbk2";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-496712849902241f04902033b0441b269effe001";
        src = fetchurl {
          url =
            "https://api.github.com/repos/briannesbitt/Carbon/zipball/496712849902241f04902033b0441b269effe001";
          sha256 = "1bs1a0cji8fyjw7bys23da6162hymwps0pzm0mqib5rx4g0f1v0x";
        };
      };
    };
    "nette/schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-schema-abbdbb70e0245d5f3bf77874cea1dfb0c930d06f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nette/schema/zipball/abbdbb70e0245d5f3bf77874cea1dfb0c930d06f";
          sha256 = "16i8gim0jpmmbq0pp4faw8kn2448yvpgsd1zvipbv9xrk37vah5q";
        };
      };
    };
    "nette/utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-utils-cacdbf5a91a657ede665c541eda28941d4b09c1e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nette/utils/zipball/cacdbf5a91a657ede665c541eda28941d4b09c1e";
          sha256 = "0v3as5xdmr9j7d4q4ly18f7g8g0sjcy25l4ispsdp60byldi7m8h";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-6bb5176bc4af8bcb7d926f88718db9b96a2d4290";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nikic/PHP-Parser/zipball/6bb5176bc4af8bcb7d926f88718db9b96a2d4290";
          sha256 = "1q7a8wmjn9x28v5snxxriiih3vj12aqc3za0w6pdhbxs9ywxsg9n";
        };
      };
    };
    "nunomaduro/laravel-console-summary" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "nunomaduro-laravel-console-summary-235a9de26ab2dfd0612558cedf2cbd2ad686b884";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nunomaduro/laravel-console-summary/zipball/235a9de26ab2dfd0612558cedf2cbd2ad686b884";
          sha256 = "0ch57pvv871a41pj4nnbsf2i1p6cpl03v90q6j5xdh64myya9lrl";
        };
      };
    };
    "nunomaduro/termwind" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-termwind-8ab0b32c8caa4a2e09700ea32925441385e4a5dc";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nunomaduro/termwind/zipball/8ab0b32c8caa4a2e09700ea32925441385e4a5dc";
          sha256 = "1g75vpq7014s5yd6bvj78b88ia31slkikdhjv8iprz987qm5dnl7";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "paragonie-constant_time_encoding-58c3f47f650c94ec05a151692652a868995d2938";
        src = fetchurl {
          url =
            "https://api.github.com/repos/paragonie/constant_time_encoding/zipball/58c3f47f650c94ec05a151692652a868995d2938";
          sha256 = "0i9km0lzvc7df9758fm1p3y0679pzvr5m9x3mrz0d2hxlppsm764";
        };
      };
    };
    "paragonie/random_compat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "paragonie-random_compat-996434e5492cb4c3edcb9168db6fbb1359ef965a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/paragonie/random_compat/zipball/996434e5492cb4c3edcb9168db6fbb1359ef965a";
          sha256 = "0ky7lal59dihf969r1k3pb96ql8zzdc5062jdbg69j6rj0scgkyx";
        };
      };
    };
    "pear/console_color2" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-console_color2-cab2b886aa55cc9e23464d1f49edf97bee9f5a63";
        src = fetchurl {
          url =
            "https://api.github.com/repos/pear/Console_Color2/zipball/cab2b886aa55cc9e23464d1f49edf97bee9f5a63";
          sha256 = "1kzh9n06mzpb0wcnchl6xkhwl68r62lazf85mm1wfzm6r3rl0y93";
        };
      };
    };
    "pear/console_table" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-console_table-1930c11897ca61fd24b95f2f785e99e0f36dcdea";
        src = fetchurl {
          url =
            "https://api.github.com/repos/pear/Console_Table/zipball/1930c11897ca61fd24b95f2f785e99e0f36dcdea";
          sha256 = "1ls3pcg1n49f8fvhp0gzqsmxkfxwwny2h3dzpmbykqdwlnwcm2bb";
        };
      };
    };
    "pear/net_dns2" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-net_dns2-dc8053772132a855b8bb6193422a959995f3a773";
        src = fetchurl {
          url =
            "https://api.github.com/repos/mikepultz/netdns2/zipball/dc8053772132a855b8bb6193422a959995f3a773";
          sha256 = "14lr025ck7hqfn39jmfyas20rlmgcwhf2l0ayqvadrv9qjv4f8l7";
        };
      };
    };
    "php-amqplib/php-amqplib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "php-amqplib-php-amqplib-bccaaf8ef8bcf18b4ab41e645e92537752b887bd";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-amqplib/php-amqplib/zipball/bccaaf8ef8bcf18b4ab41e645e92537752b887bd";
          sha256 = "1n15v0nlijpbb0f8px7vzzvl2ayy7b0vfm8ylhi7wy05rjhcm7hz";
        };
      };
    };
    "php-flasher/flasher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-flasher-flasher-07c043e4be6143fe8b4c59ffc8af7dd42ba04c4e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-flasher/flasher/zipball/07c043e4be6143fe8b4c59ffc8af7dd42ba04c4e";
          sha256 = "1sxifp657fw4gqi41b5a36w34v7nw8kz7b09wispgpz17wj3jabn";
        };
      };
    };
    "php-flasher/flasher-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "php-flasher-flasher-laravel-247b28cfa9471ce6eef61673eb7574a5ba48ac91";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-flasher/flasher-laravel/zipball/247b28cfa9471ce6eef61673eb7574a5ba48ac91";
          sha256 = "1c6vhbz22xyw0xskwcn1rri0iffpv4asfykfwy703xw94n0vr7qy";
        };
      };
    };
    "phpmailer/phpmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpmailer-phpmailer-df16b615e371d81fb79e506277faea67a1be18f1";
        src = fetchurl {
          url =
            "https://api.github.com/repos/PHPMailer/PHPMailer/zipball/df16b615e371d81fb79e506277faea67a1be18f1";
          sha256 = "1z8a30wl8zicl2a83gaqfbk0m8c8kqmch3m43z6ml98fl3vhbwwf";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-dd3a383e599f49777d8b628dadbb90cae435b87e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/schmittjoh/php-option/zipball/dd3a383e599f49777d8b628dadbb90cae435b87e";
          sha256 = "029gpfa66hwg395jvf7swcvrj085wsw5fw6041nrl5kbc36fvwlb";
        };
      };
    };
    "phpseclib/phpseclib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpseclib-phpseclib-cc181005cf548bfd8a4896383bb825d859259f95";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpseclib/phpseclib/zipball/cc181005cf548bfd8a4896383bb825d859259f95";
          sha256 = "1mh6qrcb8rgrw9k65lzg0gwz25vsk1msvfazm42lxh258k6rfq2x";
        };
      };
    };
    "predis/predis" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "predis-predis-a77a43913a74f9331f637bb12867eb8e274814e5";
        src = fetchurl {
          url =
            "https://api.github.com/repos/predis/predis/zipball/a77a43913a74f9331f637bb12867eb8e274814e5";
          sha256 = "17xby6nk7nv1gww7hgsd1rzm40ghxx6xg6pfb3zqm40vsg25grrg";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-c71ecc56dfe541dbd90c5360474fbc405f8d5963";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/container/zipball/c71ecc56dfe541dbd90c5360474fbc405f8d5963";
          sha256 = "1mvan38yb65hwk68hl0p7jymwzr4zfnaxmwjbw7nj3rsknvga49i";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-client-2dfb5f6c5eff0e91e20e913f8c5452ed95b86621";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/http-client/zipball/2dfb5f6c5eff0e91e20e913f8c5452ed95b86621";
          sha256 = "0cmkifa3ji1r8kn3y1rwg81rh8g2crvnhbv2am6d688dzsbw967v";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-e616d01114759c4c489f93b099585439f795fe35";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/http-factory/zipball/e616d01114759c4c489f93b099585439f795fe35";
          sha256 = "1vzimn3h01lfz0jx0lh3cy9whr3kdh103m1fw07qric4pnnz5kx8";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-cb6ce4845ce34a8ad9e68117c10ee90a29919eba";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/http-message/zipball/cb6ce4845ce34a8ad9e68117c10ee90a29919eba";
          sha256 = "1s87sajxsxl30ciqyhx0vir2pai63va4ssbnq7ki6s050i4vm80h";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-fe5ea303b0887d5caefd3d431c3e61ad47037001";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/log/zipball/fe5ea303b0887d5caefd3d431c3e61ad47037001";
          sha256 = "0a0rwg38vdkmal3nwsgx58z06qkfl85w2yvhbgwg45anr0b3bhmv";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-764e0b3939f5ca87cb904f570ef9be2d78a07865";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/simple-cache/zipball/764e0b3939f5ca87cb904f570ef9be2d78a07865";
          sha256 = "0hgcanvd9gqwkaaaq41lh8fsfdraxmp2n611lvqv69jwm1iy76g8";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-5350ce0ec8ecf2c5b5cf554cd2496f97b444af85";
        src = fetchurl {
          url =
            "https://api.github.com/repos/bobthecow/psysh/zipball/5350ce0ec8ecf2c5b5cf554cd2496f97b444af85";
          sha256 = "1xsv9sv8wm1c727wn0rfvkmk1k12d6a25hwppjzk3gvqnsg9y2vi";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url =
            "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822";
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-a4b48764bfbb8f3a6a4d1aeb1a35bb5e9ecac4a5";
        src = fetchurl {
          url =
            "https://api.github.com/repos/ramsey/collection/zipball/a4b48764bfbb8f3a6a4d1aeb1a35bb5e9ecac4a5";
          sha256 = "0y5s9rbs023sw94yzvxr8fn9rr7xw03f08zmc9n9jl49zlr5s52p";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-433b2014e3979047db08a17a205f410ba3869cf2";
        src = fetchurl {
          url =
            "https://api.github.com/repos/ramsey/uuid/zipball/433b2014e3979047db08a17a205f410ba3869cf2";
          sha256 = "1yvdbbgblnzzv1zjzwggpayfb8n2kpbwki9dnxc42g4wrxissb8j";
        };
      };
    };
    "socialiteproviders/manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "socialiteproviders-manager-47402cbc5b7ef445317e799bf12fd5a12062206c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/SocialiteProviders/Manager/zipball/47402cbc5b7ef445317e799bf12fd5a12062206c";
          sha256 = "0lmsb1ni27dw1zipd3l24dzm43xggh4dd92iws3r161s4pppf7sc";
        };
      };
    };
    "spatie/backtrace" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-backtrace-ec4dd16476b802dbdc6b4467f84032837e316b8c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/spatie/backtrace/zipball/ec4dd16476b802dbdc6b4467f84032837e316b8c";
          sha256 = "1w12qfyc6lhij3zlpjwn883y57vpwdqn9kazsw36w1jl1sgwjyl5";
        };
      };
    };
    "spatie/flare-client-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "spatie-flare-client-php-3e5dd5ac4928f3d2d036bd02de5eb83fd0ef1f42";
        src = fetchurl {
          url =
            "https://api.github.com/repos/spatie/flare-client-php/zipball/3e5dd5ac4928f3d2d036bd02de5eb83fd0ef1f42";
          sha256 = "1hvks36gzvwi4xwwjn404jlm312kr6gkiw7w2qyhpllbkyjh291a";
        };
      };
    };
    "spatie/ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-ignition-cc09114b7057bd217b676f047544b33f5b6247e6";
        src = fetchurl {
          url =
            "https://api.github.com/repos/spatie/ignition/zipball/cc09114b7057bd217b676f047544b33f5b6247e6";
          sha256 = "0vjlzr3c1q69yf4lkr3ry4f6rg7ccic06sc1km2im8yvp4486ls3";
        };
      };
    };
    "spatie/laravel-ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "spatie-laravel-ignition-1a2b4bd3d48c72526c0ba417687e5c56b5cf49bc";
        src = fetchurl {
          url =
            "https://api.github.com/repos/spatie/laravel-ignition/zipball/1a2b4bd3d48c72526c0ba417687e5c56b5cf49bc";
          sha256 = "03jr98p7rcvkjzqynvgdkb13xl164wfw95i60r1nc10az75df5aw";
        };
      };
    };
    "spomky-labs/base64url" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spomky-labs-base64url-7752ce931ec285da4ed1f4c5aa27e45e097be61d";
        src = fetchurl {
          url =
            "https://api.github.com/repos/Spomky-Labs/base64url/zipball/7752ce931ec285da4ed1f4c5aa27e45e097be61d";
          sha256 = "04xjhggcf6zc80ikva0flqis16q9b5lywld73g007m3y8b97q23l";
        };
      };
    };
    "spomky-labs/pki-framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "spomky-labs-pki-framework-d3ba688bf40e7c6e0dabf065ee18fc210734e760";
        src = fetchurl {
          url =
            "https://api.github.com/repos/Spomky-Labs/pki-framework/zipball/d3ba688bf40e7c6e0dabf065ee18fc210734e760";
          sha256 = "0wg40xhma97d2a5rdx4fzr2zxsi4bnk2wdlcbz9dsvwrksjdifgp";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-3582d68a64a86ec25240aaa521ec8bc2342b369b";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/console/zipball/3582d68a64a86ec25240aaa521ec8bc2342b369b";
          sha256 = "1w9rqzi4vyrz4zizl1c9glw6dwq43q703k6jxn3cmkswsbisiy1j";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-aedf3cb0f5b929ec255d96bbb4909e9932c769e0";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/css-selector/zipball/aedf3cb0f5b929ec255d96bbb4909e9932c769e0";
          sha256 = "1sr492i55w1shyzp365a2xb50fsb0arkf2idckd8icck54k3zdgf";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-deprecation-contracts-e2d1534420bd723d0ef5aec58a22c5fe60ce6f5e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/deprecation-contracts/zipball/e2d1534420bd723d0ef5aec58a22c5fe60ce6f5e";
          sha256 = "1z7akdycl5ar42vs1kc00ggm5rbqw0lx7i3acbcbfhnwmdxsmcxh";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-61e90f94eb014054000bc902257d2763fac09166";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/error-handler/zipball/61e90f94eb014054000bc902257d2763fac09166";
          sha256 = "1kxm9pzvvlrd2b1gwbq9b45qgq6sckl0xr078cis7vsbhw9kwbkn";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-event-dispatcher-04046f35fd7d72f9646e721fc2ecb8f9c67d3339";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/event-dispatcher/zipball/04046f35fd7d72f9646e721fc2ecb8f9c67d3339";
          sha256 = "1va0impcvcmbf3v8xpjkwrm0l5w14pb2n2fs2k29xp23xjd7lnil";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-event-dispatcher-contracts-0ad3b6f1e4e2da5690fefe075cd53a238646d8dd";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/0ad3b6f1e4e2da5690fefe075cd53a238646d8dd";
          sha256 = "0yqg0h2kf4mij39nisshvg5gssn6aqyqphngi05z6jfd0q89a46x";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-20808dc6631aecafbe67c186af5dcb370be3a0eb";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/finder/zipball/20808dc6631aecafbe67c186af5dcb370be3a0eb";
          sha256 = "113yidfp8sjkv200kx4pi81zn0v0r9gmq8dw7p3zvhc23k1hinh8";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-http-foundation-511a524affeefc191939348823ac75e9921c2112";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/http-foundation/zipball/511a524affeefc191939348823ac75e9921c2112";
          sha256 = "1cwsbnjpy07l88p1xk9vqwp0smy7f9xj2g455dad9zr2gs1xryaw";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-9563229e56076070d92ca30c089e801e8a4629a3";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/http-kernel/zipball/9563229e56076070d92ca30c089e801e8a4629a3";
          sha256 = "1b3w3zzyrx30dzqa0nvwa59cpdqj49m31pnvgb0g71lhj1jzd7im";
        };
      };
    };
    "symfony/mailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mailer-bfcfa015c67e19c6fdb7ca6fe70700af1e740a17";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/mailer/zipball/bfcfa015c67e19c6fdb7ca6fe70700af1e740a17";
          sha256 = "1i6q57w3jhfy69z86jyqvjwx7y50rl8z3y7n6gc1kafw97g1yyn8";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-62e341f80699badb0ad70b31149c8df89a2d778e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/mime/zipball/62e341f80699badb0ad70b31149c8df89a2d778e";
          sha256 = "1l56y494n4phiyafcgc7sa8vfxzsvz6lbzxhnqirdgv19y4zvbim";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-ctype-5bbc823adecdae860bb64756d639ecfec17b050a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-ctype/zipball/5bbc823adecdae860bb64756d639ecfec17b050a";
          sha256 = "0vyv70z1yi2is727d1mkb961w5r1pb1v3wy1pvdp30h8ffy15wk6";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-intl-grapheme-511a08c03c1960e08a883f4cffcacd219b758354";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/511a08c03c1960e08a883f4cffcacd219b758354";
          sha256 = "0ifsgsyxf0z0nkynqvr5259dm5dsmbgdpvyi5zfvy8935mi0ki0i";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-intl-idn-639084e360537a19f9ee352433b84ce831f3d2da";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/639084e360537a19f9ee352433b84ce831f3d2da";
          sha256 = "1i2wcsbfbwdyrx8545yrrvbdaf4l2393pjvg9266q74611j6pzxj";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-intl-normalizer-19bd1e4fcd5b91116f14d8533c57831ed00571b6";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/19bd1e4fcd5b91116f14d8533c57831ed00571b6";
          sha256 = "1d80jph5ykiw6ydv8fwd43s0aglh24qc1yrzds2f3aqanpbk1gr2";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-mbstring-8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
          sha256 = "1ym84qp609i50lv4vkd4yz99y19kaxd5kmpdnh66mxx1a4a104mi";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-php72-869329b1e9894268a8a61dabb69153029b7a8c97";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-php72/zipball/869329b1e9894268a8a61dabb69153029b7a8c97";
          sha256 = "1h0lbh8d41sa4fymmw03yzws3v3z0lz4lv1kgcld7r53i2m3wfwp";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-php80-7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-php80/zipball/7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
          sha256 = "16yydk7rsknlasrpn47n4b4js8svvp4rxzw99dkav52wr3cqmcwd";
        };
      };
    };
    "symfony/polyfill-uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-uuid-f3cf1a645c2734236ed1e2e671e273eeb3586166";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-uuid/zipball/f3cf1a645c2734236ed1e2e671e273eeb3586166";
          sha256 = "1pjh861iwlf71frm9f9i7acw4bbiq40gkh96a5wd09nfd2c3w7mc";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-75ed64103df4f6615e15a7fe38b8111099f47416";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/process/zipball/75ed64103df4f6615e15a7fe38b8111099f47416";
          sha256 = "0y296s3yh2k243khmky3imgv4qvwsmwj25kzvmfvd3avns9wz1zf";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-69062e2823f03b82265d73a966999660f0e1e404";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/routing/zipball/69062e2823f03b82265d73a966999660f0e1e404";
          sha256 = "03nzrw3kvraf3cyn31hmpvnip4aihj84234i5qh5iv59jzpz517p";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-service-contracts-a8c9cedf55f314f3a186041d19537303766df09a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/service-contracts/zipball/a8c9cedf55f314f3a186041d19537303766df09a";
          sha256 = "0gk4mpvm0v8a98p641wdxdvcinl4366fiqadq0za3w37zrwals53";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-193e83bbd6617d6b2151c37fff10fa7168ebddef";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/string/zipball/193e83bbd6617d6b2151c37fff10fa7168ebddef";
          sha256 = "1478grgcbh5vwylwnx89bzjrws5akm8h7kmm7j4h741wvhzv45j6";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-817535dbb1721df8b3a8f2489dc7e50bcd6209b5";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/translation/zipball/817535dbb1721df8b3a8f2489dc7e50bcd6209b5";
          sha256 = "04vkzgy8w5w4hcgyfx8f3lrs7l048mmv9c1xxb0dvzckn28znx64";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-translation-contracts-dfec258b9dd17a6b24420d464c43bffe347441c8";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/translation-contracts/zipball/dfec258b9dd17a6b24420d464c43bffe347441c8";
          sha256 = "1ns37kz4fc2z0kdzhk9kchsxffy5h7ls43z4carv2vzrkgzml8lx";
        };
      };
    };
    "symfony/uid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-uid-d30c72a63897cfa043e1de4d4dd2ffa9ecefcdc0";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/uid/zipball/d30c72a63897cfa043e1de4d4dd2ffa9ecefcdc0";
          sha256 = "0lg3qxa011mvg41xznm69jqc6l02ysvw9jm48bb63gn1j70zy6ba";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-d37ab6787be2db993747b6218fcc96e8e3bb4bd0";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/var-dumper/zipball/d37ab6787be2db993747b6218fcc96e8e3bb4bd0";
          sha256 = "1im9235lfwbgwdkdkqszgpxbyyayndn138rbfgrwpznj9wq834g2";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-e8e6a1d59e050525f27a1f530aa9703423cb7f57";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/yaml/zipball/e8e6a1d59e050525f27a1f530aa9703423cb7f57";
          sha256 = "0hjrpnrsm8yg8kfj0nda2xhgli1llp4ndm9v94fk25a0vs5f26bq";
        };
      };
    };
    "tecnickcom/tcpdf" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tecnickcom-tcpdf-e3cffc9bcbc76e89e167e9eb0bbda0cab7518459";
        src = fetchurl {
          url =
            "https://api.github.com/repos/tecnickcom/TCPDF/zipball/e3cffc9bcbc76e89e167e9eb0bbda0cab7518459";
          sha256 = "17769rpyfq6z8lw5bj7icvkz7003d6kbj1hiji5cixrkahvc57fy";
        };
      };
    };
    "tightenco/ziggy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tightenco-ziggy-82ea6ec6cb6ab3545b0245310b2a424316fe48d8";
        src = fetchurl {
          url =
            "https://api.github.com/repos/tighten/ziggy/zipball/82ea6ec6cb6ab3545b0245310b2a424316fe48d8";
          sha256 = "1mfiwvpd5jhs9lsg0bl3qm1spa25062cfilkn80f9la08gbry5fh";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "tijsverkoyen-css-to-inline-styles-c42125b83a4fa63b187fdf29f9c93cb7733da30c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/c42125b83a4fa63b187fdf29f9c93cb7733da30c";
          sha256 = "0ckk04hwwz0fdkfr20i7xrhdjcnnw1b0liknbb81qyr1y4b7x3dd";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
        src = fetchurl {
          url =
            "https://api.github.com/repos/vlucas/phpdotenv/zipball/1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
          sha256 = "13h4xyxhdjn1n7xcxbcdhj20rv5fsaigbsbz61x2i224hj76620a";
        };
      };
    };
    "voku/portable-ascii" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-ascii-b56450eed252f6801410d810c8e1727224ae0743";
        src = fetchurl {
          url =
            "https://api.github.com/repos/voku/portable-ascii/zipball/b56450eed252f6801410d810c8e1727224ae0743";
          sha256 = "0gwlv1hr6ycrf8ik1pnvlwaac8cpm8sa1nf4d49s8rp4k2y5anyl";
        };
      };
    };
    "web-token/jwt-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "web-token-jwt-core-ec2580e8cdd17410016216fbf1b645052c35f644";
        src = fetchurl {
          url =
            "https://api.github.com/repos/web-token/jwt-core/zipball/ec2580e8cdd17410016216fbf1b645052c35f644";
          sha256 = "0jsahw3c3nl6lrw4ap4y3vps72vbxqc6hrhn6virvfwqckgvqiq9";
        };
      };
    };
    "web-token/jwt-key-mgmt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "web-token-jwt-key-mgmt-bf6dec304f2a718d70f7316e498c612317c59e08";
        src = fetchurl {
          url =
            "https://api.github.com/repos/web-token/jwt-key-mgmt/zipball/bf6dec304f2a718d70f7316e498c612317c59e08";
          sha256 = "0n4pfxn6452zpjzvqr50bjfa8fdjmfjv4yfq5ldppa7m5sxnhfcs";
        };
      };
    };
    "web-token/jwt-signature" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "web-token-jwt-signature-14b71230d9632564e356b785366ad36880964190";
        src = fetchurl {
          url =
            "https://api.github.com/repos/web-token/jwt-signature/zipball/14b71230d9632564e356b785366ad36880964190";
          sha256 = "1lnnq4iwxrpw3db1pnxasv23pil4lz4p0iipzjzidzr226wa0l8i";
        };
      };
    };
    "web-token/jwt-signature-algorithm-ecdsa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "web-token-jwt-signature-algorithm-ecdsa-e09159600f19832cf4a68921e7299e564bc0eaf9";
        src = fetchurl {
          url =
            "https://api.github.com/repos/web-token/jwt-signature-algorithm-ecdsa/zipball/e09159600f19832cf4a68921e7299e564bc0eaf9";
          sha256 = "0pzvyp0g8r6gh7fij864gmamlavb8skkiby83x91khrdm3ch856y";
        };
      };
    };
    "web-token/jwt-util-ecc" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "web-token-jwt-util-ecc-b2337052dbee724d710c1fdb0d3609835a5f8609";
        src = fetchurl {
          url =
            "https://api.github.com/repos/web-token/jwt-util-ecc/zipball/b2337052dbee724d710c1fdb0d3609835a5f8609";
          sha256 = "0pn2qbb016kxvklck271xgl7fjcvvrrk1j9lnx95a3p9mz81lsrs";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-11cb2199493b2f8a3b53e7f19068fc6aac760991";
        src = fetchurl {
          url =
            "https://api.github.com/repos/webmozarts/assert/zipball/11cb2199493b2f8a3b53e7f19068fc6aac760991";
          sha256 = "18qiza1ynwxpi6731jx1w5qsgw98prld1lgvfk54z92b1nc7psix";
        };
      };
    };
  };
  devPackages = {
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "barryvdh-laravel-debugbar-aff3235fecb4104203b1e62c32239c56530eee32";
        src = fetchurl {
          url =
            "https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/aff3235fecb4104203b1e62c32239c56530eee32";
          sha256 = "07nbdw2r9y5iic3dfb8r1mqzhgmkb2k7bla37zk54hnr8mnyiy7p";
        };
      };
    };
    "barryvdh/laravel-ide-helper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "barryvdh-laravel-ide-helper-81d5b223ff067a1f38e14c100997e153b837fe4a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/barryvdh/laravel-ide-helper/zipball/81d5b223ff067a1f38e14c100997e153b837fe4a";
          sha256 = "0z1zpkznvrqs0wnr0zj8fj832a8bqgzkhk4s3j6mmaxjkxbxa8s9";
        };
      };
    };
    "barryvdh/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "barryvdh-reflection-docblock-bf44b757feb8ba1734659029357646466ded673e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/barryvdh/ReflectionDocBlock/zipball/bf44b757feb8ba1734659029357646466ded673e";
          sha256 = "0wqay983dn0j4b71f7i8r454r0ciypjss9hbwn5dadlrw0wgssmv";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-74780ccf8c19d6acb8d65c5f39cd72110e132bbd";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/ca-bundle/zipball/74780ccf8c19d6acb8d65c5f39cd72110e132bbd";
          sha256 = "0s7w5mag61xs29f2zzwikhc1y3sy03kyvqm73f8d5y1160fl1wpi";
        };
      };
    };
    "composer/class-map-generator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "composer-class-map-generator-1e1cb2b791facb2dfe32932a7718cf2571187513";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/class-map-generator/zipball/1e1cb2b791facb2dfe32932a7718cf2571187513";
          sha256 = "02avlgdwwm6pbh5pbv3bd2km4xy6vzbf3kyg6awsrfwd40v6kdqg";
        };
      };
    };
    "composer/composer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-composer-c7cffaad16a60636a776017eac5bd8cd0095c32f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/composer/zipball/c7cffaad16a60636a776017eac5bd8cd0095c32f";
          sha256 = "1f1mn6dmw06fa44ybpjv0jzf7dqb4rixk1f9xgj3hjr4wjxgxmsx";
        };
      };
    };
    "composer/metadata-minifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "composer-metadata-minifier-c549d23829536f0d0e984aaabbf02af91f443207";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/metadata-minifier/zipball/c549d23829536f0d0e984aaabbf02af91f443207";
          sha256 = "0ldblf3haw1q02zdbckq0v0dh81a948n9bmpfjs4zpj1zmxymmlg";
        };
      };
    };
    "composer/pcre" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-pcre-4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/pcre/zipball/4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
          sha256 = "05cvb25kawk3wjq9pvkx15rsjf9gjvhksmbq3xxhrmvqsl42mzrs";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-3953f23262f2bff1919fc82183ad9acb13ff62c9";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/semver/zipball/3953f23262f2bff1919fc82183ad9acb13ff62c9";
          sha256 = "0sp54hzb2gq777rd0w5ciq00g0l85irc2m6s2zx7675g24wfbbms";
        };
      };
    };
    "composer/spdx-licenses" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "composer-spdx-licenses-c848241796da2abf65837d51dce1fae55a960149";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/spdx-licenses/zipball/c848241796da2abf65837d51dce1fae55a960149";
          sha256 = "1g833l7pf6q7fswxi8xxsfgbm2alfpfbmk7l5crf04w72hp10nwk";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "composer-xdebug-handler-ced299686f41dce890debac69273b47ffe98a40c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/composer/xdebug-handler/zipball/ced299686f41dce890debac69273b47ffe98a40c";
          sha256 = "1hnhrp26mk3zjsp6cl351b12bcbbbdglc677vjz9n8l7qj466b0h";
        };
      };
    };
    "doctrine/annotations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-annotations-e157ef3f3124bbf6fe7ce0ffd109e8a8ef284e7f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/annotations/zipball/e157ef3f3124bbf6fe7ce0ffd109e8a8ef284e7f";
          sha256 = "1lf9y10schsh11185xgfnwn91i77njymz3zv43xh4qcyjq5fjg32";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-c6222283fa3f4ac679f8b9ced9a4e23f163e80d0";
        src = fetchurl {
          url =
            "https://api.github.com/repos/doctrine/instantiator/zipball/c6222283fa3f4ac679f8b9ced9a4e23f163e80d0";
          sha256 = "059ahw73z0m24cal4f805j6h1i53f90mrmjr7s4f45yfxgwcqvcn";
        };
      };
    };
    "fakerphp/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fakerphp-faker-92efad6a967f0b79c499705c69b662f738cc9e4d";
        src = fetchurl {
          url =
            "https://api.github.com/repos/FakerPHP/Faker/zipball/92efad6a967f0b79c499705c69b662f738cc9e4d";
          sha256 = "0yxl4vicv0yc5jxsfslxkhh7fjgryg3anmpvdvbqim2df5wv4pqg";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-e864ac957acd66e1565f25efda61e37791a5db0b";
        src = fetchurl {
          url =
            "https://api.github.com/repos/filp/whoops/zipball/e864ac957acd66e1565f25efda61e37791a5db0b";
          sha256 = "1q6lx0d2h1372flsh7qqacyb9gljhhlnasgbvydhil11v1mai50g";
        };
      };
    };
    "friendsofphp/php-cs-fixer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "friendsofphp-php-cs-fixer-d40f9436e1c448d309fa995ab9c14c5c7a96f2dc";
        src = fetchurl {
          url =
            "https://api.github.com/repos/PHP-CS-Fixer/PHP-CS-Fixer/zipball/d40f9436e1c448d309fa995ab9c14c5c7a96f2dc";
          sha256 = "0q404j4phg2jhydcanz9la98h010jl508ph994af50sz84zibpng";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url =
            "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "laravel/dusk" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-dusk-c1d17269c317bc99fef3c2e885465d0bb6398434";
        src = fetchurl {
          url =
            "https://api.github.com/repos/laravel/dusk/zipball/c1d17269c317bc99fef3c2e885465d0bb6398434";
          sha256 = "0n6c2vqf2x0f978cpmdiv9pfvf31da8qvhhbfdhjqy6prxsxa8fz";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-17dcf3f6ed112bb85a37cf13538fd8de49f5c274";
        src = fetchurl {
          url =
            "https://api.github.com/repos/maximebf/php-debugbar/zipball/17dcf3f6ed112bb85a37cf13538fd8de49f5c274";
          sha256 = "06g98wazm9lfimz21m8833123h06gh48pmp8xixljra9lbl50g7v";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-e92dcc83d5a51851baf5f5591d32cb2b16e3684e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/mockery/mockery/zipball/e92dcc83d5a51851baf5f5591d32cb2b16e3684e";
          sha256 = "0dvkr0ff37cn6s72s7sqw26j6i5fja780x980zhl099frflkw5s9";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/myclabs/DeepCopy/zipball/7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
          sha256 = "16k44y94bcr439bsxm5158xvmlyraph2c6n17qa5y29b04jqdw5j";
        };
      };
    };
    "nunomaduro/collision" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-collision-f05978827b9343cba381ca05b8c7deee346b6015";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nunomaduro/collision/zipball/f05978827b9343cba381ca05b8c7deee346b6015";
          sha256 = "09bpw23vq3yyilrkd6k798igrg0ypryxpw2bfbdgjvjwhs4ndf29";
        };
      };
    };
    "nunomaduro/larastan" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-larastan-072e2c9566ae000bf66c92384fc933b81885244b";
        src = fetchurl {
          url =
            "https://api.github.com/repos/nunomaduro/larastan/zipball/072e2c9566ae000bf66c92384fc933b81885244b";
          sha256 = "0nfbwgqz6wm7r9z7x1rkp3578p8yvj3kwj9308inhp0763nsvmx5";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-97803eca37d319dfa7826cc2437fc020857acb53";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53";
          sha256 = "107dsj04ckswywc84dvw42kdrqd4y6yvb2qwacigyrn05p075c1w";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
          sha256 = "0mdbzh1y0m2vvpf54vw7ckcbcf1yfhivwxgc9j9rbb7yifmlyvsg";
        };
      };
    };
    "php-parallel-lint/php-parallel-lint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "php-parallel-lint-php-parallel-lint-6483c9832e71973ed29cf71bd6b3f4fde438a9de";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-parallel-lint/PHP-Parallel-Lint/zipball/6483c9832e71973ed29cf71bd6b3f4fde438a9de";
          sha256 = "15r9nyc650y7h568rnd2ha4n4i9nplgcq9yvhnly0r5s1zyhvw5a";
        };
      };
    };
    "php-webdriver/webdriver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "php-webdriver-webdriver-3ea4f924afb43056bf9c630509e657d951608563";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-webdriver/php-webdriver/zipball/3ea4f924afb43056bf9c630509e657d951608563";
          sha256 = "0mwhw5b7axvcsf7zk9nsjich4yj9sc0vdp11klddgm0z6w0i9rqr";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpdocumentor-type-resolver-dfc078e8af9c99210337325ff5aa152872c98714";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/dfc078e8af9c99210337325ff5aa152872c98714";
          sha256 = "0s1vrnljzaxk8a7188k130jmfss6rfgjfn0m52m8hndwl51pwiks";
        };
      };
    };
    "phpmyadmin/sql-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpmyadmin-sql-parser-0f5895aab2b6002d00b6831b60983523dea30bff";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpmyadmin/sql-parser/zipball/0f5895aab2b6002d00b6831b60983523dea30bff";
          sha256 = "016jndgdzp4hmnnx08f2ffhlv79c4wrb2fbnxs8867md1ahhq2aw";
        };
      };
    };
    "phpstan/phpdoc-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpdoc-parser-22dcdfd725ddf99583bfe398fc624ad6c5004a0f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpstan/phpdoc-parser/zipball/22dcdfd725ddf99583bfe398fc624ad6c5004a0f";
          sha256 = "1w4gxfy1q3n3c3ajiyma4jgn4kc3006zpmjbxk63fbkhv747jylb";
        };
      };
    };
    "phpstan/phpstan" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpstan-8aa62e6ea8b58ffb650e02940e55a788cbc3fe21";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpstan/phpstan/zipball/8aa62e6ea8b58ffb650e02940e55a788cbc3fe21";
          sha256 = "1bbk4jwj53sx9fbb08vgjl9mfpnm213rh544rhiqxgbmva782pvz";
        };
      };
    };
    "phpstan/phpstan-deprecation-rules" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpstan-phpstan-deprecation-rules-a22b36b955a2e9a3d39fe533b6c1bb5359f9c319";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpstan/phpstan-deprecation-rules/zipball/a22b36b955a2e9a3d39fe533b6c1bb5359f9c319";
          sha256 = "1q90kwdq6nj8wgnsrf1idqclc0klnzqsgdqwf72acxyvz9vilxrp";
        };
      };
    };
    "phpstan/phpstan-mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpstan-phpstan-mockery-6aa86bd8e9c9a1be97baf0558d4a2ed1374736a6";
        src = fetchurl {
          url =
            "https://api.github.com/repos/phpstan/phpstan-mockery/zipball/6aa86bd8e9c9a1be97baf0558d4a2ed1374736a6";
          sha256 = "1p0jbxll2i049jl5glj8il626zsffc62v3hkkfmirj6x1vds17i9";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpunit-php-code-coverage-443bc6912c9bd5b409254a40f4b0f4ced7c80ea1";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/443bc6912c9bd5b409254a40f4b0f4ced7c80ea1";
          sha256 = "18v2xs142pw4dl9l6imcmkdvv5m18zd36ar41i586f4mg8d961d1";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-b65d59a059d3004a040c16a82e07bbdf6cfdd115";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/b65d59a059d3004a040c16a82e07bbdf6cfdd115";
          sha256 = "0pjrhwxh2lx0h5vdm784dpd2jcvz1g0jdzhgs0dznp2fhk5az6cr";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
        src = fetchurl {
          url =
            "https://api.github.com/repos/php-fig/cache/zipball/aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
          sha256 = "07rnyjwb445sfj30v5ny3gfsgc1m7j7cyvwjgs2cm9slns1k1ml8";
        };
      };
    };
    "react/promise" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "react-promise-234f8fd1023c9158e2314fa9d7d0e6a83db42910";
        src = fetchurl {
          url =
            "https://api.github.com/repos/reactphp/promise/zipball/234f8fd1023c9158e2314fa9d7d0e6a83db42910";
          sha256 = "0p3n6jzlny75qcqwvrz0920ry3p902nq4v64cpg9ndd0g79dbdz4";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-442e7c7e687e42adc03470c7b668bc4b2402c0b2";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2";
          sha256 = "074qzdq19k9x4svhq3nak5h348xska56v1sqnhk1aj0jnrx02h37";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-fa0f136dd2334583309d32b62544682ee972b51a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/comparator/zipball/fa0f136dd2334583309d32b62544682ee972b51a";
          sha256 = "0m8ibkwaxw2q5v84rlvy7ylpkddscsa8hng0cjczy4bqpqavr83w";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-739b35e53379900cc9ac327b2147867b8b6efd88";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/complexity/zipball/739b35e53379900cc9ac327b2147867b8b6efd88";
          sha256 = "1y4yz8n8hszbhinf9ipx3pqyvgm7gz0krgyn19z0097yq3bbq8yf";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-3461e3fccc7cfdfc2720be910d3bd73c69be590d";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/diff/zipball/3461e3fccc7cfdfc2720be910d3bd73c69be590d";
          sha256 = "0967nl6cdnr0v0z83w4xy59agn60kfv8gb41aw3fpy1n2wpp62dj";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/environment/zipball/830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
          sha256 = "02045n3in01zk571v1phyhj0b2mvnvx8qnlqvw4j33r7qdd4clzn";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/exporter/zipball/ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
          sha256 = "1a6yj8v8rwj3igip8xysdifvbd7gkzmwrj9whdx951pdq7add46j";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-global-state-0ca8db5a5fc9c8646244e629625ac486fa286bf2";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/global-state/zipball/0ca8db5a5fc9c8646244e629625ac486fa286bf2";
          sha256 = "1csrfa5b7ivza712lfmbywp9jhwf4ls5lc0vn812xljkj7w24kg1";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-lines-of-code-c1c2e997aa3146983ed888ad08b15470a2e22ecc";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/c1c2e997aa3146983ed888ad08b15470a2e22ecc";
          sha256 = "0fay9s5cm16gbwr7qjihwrzxn7sikiwba0gvda16xng903argbk0";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-recursion-context-e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
          sha256 = "1ag6ysxffhxyg7g4rj9xjjlwq853r4x92mmin4f09hn5mqn9f0l1";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "sebastian-resource-operations-0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
          sha256 = "0p5s8rp7mrhw20yz5wx1i4k8ywf0h0ximcqan39n9qnma1dlnbyr";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/type/zipball/75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
          sha256 = "0bvfvb62qbpy2hzxs4bjzb0xhks6h3cp6qx96z4qlyz6wl2fa1w5";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-4211420d25eba80712bff236a98960ef68b866b7";
        src = fetchurl {
          url =
            "https://api.github.com/repos/Seldaek/jsonlint/zipball/4211420d25eba80712bff236a98960ef68b866b7";
          sha256 = "1sgfwxipspih3xhzivpdykcfnbk9ydhzpi8vc8q0jxsd4q8kf38c";
        };
      };
    };
    "seld/phar-utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-phar-utils-ea2f4014f163c1be4c601b9b7bd6af81ba8d701c";
        src = fetchurl {
          url =
            "https://api.github.com/repos/Seldaek/phar-utils/zipball/ea2f4014f163c1be4c601b9b7bd6af81ba8d701c";
          sha256 = "0gsni1p06ahp1pwpp2bm5b21cpv9k6cfrhlwlrpszpg03cmsbng2";
        };
      };
    };
    "seld/signal-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-signal-handler-f69d119511dc0360440cdbdaa71829c149b7be75";
        src = fetchurl {
          url =
            "https://api.github.com/repos/Seldaek/signal-handler/zipball/f69d119511dc0360440cdbdaa71829c149b7be75";
          sha256 = "1g8f3myk1ij3zq9mh7wcjkd8xw0lv2p6xqynk1ramz54mcmy4rfw";
        };
      };
    };
    "staudenmeir/dusk-updater" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "staudenmeir-dusk-updater-f81141cfbc1d14f78354a2f84496138afe11a394";
        src = fetchurl {
          url =
            "https://api.github.com/repos/staudenmeir/dusk-updater/zipball/f81141cfbc1d14f78354a2f84496138afe11a394";
          sha256 = "0dcxk4c1s2qyvp7ij2x124axslg12x1zc2d76pfw7vzcrvq5rfhd";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-82b6c62b959f642d000456f08c6d219d749215b3";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/filesystem/zipball/82b6c62b959f642d000456f08c6d219d749215b3";
          sha256 = "18fw51cb19bs359i333f9jaxxff6m1h5szgc7d1mpnga8q2mlba5";
        };
      };
    };
    "symfony/options-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-options-resolver-aa0e85b53bbb2b4951960efd61d295907eacd629";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/options-resolver/zipball/aa0e85b53bbb2b4951960efd61d295907eacd629";
          sha256 = "0rlmc7w9k33jy61a6kcdx2l3psclvx60wmvq37mndwg5wiwb9782";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-php73-9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-php73/zipball/9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
          sha256 = "1p0jr92x323pl4frjbhmziyk5g1zig1g30i1v1p0wfli2sq8h5mb";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name =
          "symfony-polyfill-php81-707403074c8ea6e2edaf8794b0157a0bfa52157a";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/polyfill-php81/zipball/707403074c8ea6e2edaf8794b0157a0bfa52157a";
          sha256 = "05qrjfnnnz402l11wm0ydblrip7hjll12yqxmh2wd02b0s8dj29f";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-f3adc98c1061875dd2edcd45e5b04e63d0e29f8f";
        src = fetchurl {
          url =
            "https://api.github.com/repos/symfony/stopwatch/zipball/f3adc98c1061875dd2edcd45e5b04e63d0e29f8f";
          sha256 = "0xnfadyzr59ll98spnrv638kc7q431rbp41a9hz1cvisf7f85czj";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-34a41e998c2183e22995f158c581e7b5e755ab9e";
        src = fetchurl {
          url =
            "https://api.github.com/repos/theseer/tokenizer/zipball/34a41e998c2183e22995f158c581e7b5e755ab9e";
          sha256 = "1za4a017kjb4rw2ydglip4bp5q2y7mfiycj3fvnp145i84jc7n0q";
        };
      };
    };
  };
in composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "librenms-librenms";
  src = composerEnv.filterSrc ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    homepage = "https://www.librenms.org/";
    license = "GPL-3.0-or-later";
  };
}
