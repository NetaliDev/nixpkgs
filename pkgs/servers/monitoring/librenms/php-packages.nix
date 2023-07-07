{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "amenadiel/jpgraph" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amenadiel-jpgraph-e196d51a520a4182cc26240b4a0744495706f11a";
        src = fetchurl {
          url = "https://api.github.com/repos/HuasoFoundries/jpgraph/zipball/e196d51a520a4182cc26240b4a0744495706f11a";
          sha256 = "08y6cc7b1n6w2176grdx7ligjr9725bjx5ij8pdkz7l83rmaxabx";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-0ad82ce168c82ba30d1c01ec86116ab52f589478";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/0ad82ce168c82ba30d1c01ec86116ab52f589478";
          sha256 = "04kqy1hqvp4634njjjmhrc2g828d69sk6q3c55bpqnnmsqf154yb";
        };
      };
    };
    "clue/socket-raw" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "clue-socket-raw-91e9f619f6769f931454a9882c21ffd7623d06cb";
        src = fetchurl {
          url = "https://api.github.com/repos/clue/socket-raw/zipball/91e9f619f6769f931454a9882c21ffd7623d06cb";
          sha256 = "0jhpydampfwb264hv9a5hdpvrwmy9dsqav85fn30iv1gb0cgqijm";
        };
      };
    };
    "dapphp/radius" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dapphp-radius-023f538e46d20fa285f55dd65d7054fb9b370a82";
        src = fetchurl {
          url = "https://api.github.com/repos/dapphp/radius/zipball/023f538e46d20fa285f55dd65d7054fb9b370a82";
          sha256 = "1sswwxs9i5fi272iac1127xjhr641m9864sv3dxvlmaxxh6qbca4";
        };
      };
    };
    "dflydev/dot-access-data" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dflydev-dot-access-data-f41715465d65213d644d3141a6a93081be5d3549";
        src = fetchurl {
          url = "https://api.github.com/repos/dflydev/dflydev-dot-access-data/zipball/f41715465d65213d644d3141a6a93081be5d3549";
          sha256 = "1vgbjrq8qh06r26y5nlxfin4989r3h7dib1jifb2l3cjdn1r5bmj";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-1ca8f21980e770095a31456042471a57bc4c68fb";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/1ca8f21980e770095a31456042471a57bc4c68fb";
          sha256 = "1p8ia9g3mqz71bv4x8q1ng1fgcidmyksbsli1fjbialpgjk9k1ss";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-96d5a70fd91efdcec81fc46316efc5bf3da17ddf";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/96d5a70fd91efdcec81fc46316efc5bf3da17ddf";
          sha256 = "1g32p2byaa1h7n2scwxkcbmx7hgc3gbx32rggsqag4zdnil7j6xv";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-612a3ee5ab0d5dd97b7cf3874a6efe24325efac3";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/deprecations/zipball/612a3ee5ab0d5dd97b7cf3874a6efe24325efac3";
          sha256 = "078w4k0xdywyb44caz5grbcbxsi87iy13g7a270rs9g5f0p245fi";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-750671534e0241a7c50ea5b43f67e23eb5c96f32";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/750671534e0241a7c50ea5b43f67e23eb5c96f32";
          sha256 = "1inhh3k8ai8d6rhx5xsbdx0ifc3yjjfrahi0cy1npz9nx3383cfh";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-f9301a5b2fb1216b2b08f02ba04dc45423db6bff";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/inflector/zipball/f9301a5b2fb1216b2b08f02ba04dc45423db6bff";
          sha256 = "1kdq3sbwrzwprxr36cdw9m1zlwn15c0nz6i7mw0sq9mhnd2sgbrb";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-84a527db05647743d50373e0ec53a152f2cde568";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/84a527db05647743d50373e0ec53a152f2cde568";
          sha256 = "1wn3p8vjq3hqzn0k6dmwxdj2ykwk3653h5yw7a57avz9qkb86z70";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dragonmantank-cron-expression-782ca5968ab8b954773518e9e49a6f892a34b2a8";
        src = fetchurl {
          url = "https://api.github.com/repos/dragonmantank/cron-expression/zipball/782ca5968ab8b954773518e9e49a6f892a34b2a8";
          sha256 = "18pxn1v3b2yhwzky22p4wn520h89rcrihl7l6hd0p769vk1b2qg9";
        };
      };
    };
    "easybook/geshi" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "easybook-geshi-b4df5fa84a44d4e12eff67263a701eac7e157241";
        src = fetchurl {
          url = "https://api.github.com/repos/easybook/geshi/zipball/b4df5fa84a44d4e12eff67263a701eac7e157241";
          sha256 = "13s2z7ylbbfgrf0g059hl6zxwadwsy4a69avr8sh458p81l29v5n";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "egulias-email-validator-3a85486b709bc384dae8eb78fb2eec649bdb64ff";
        src = fetchurl {
          url = "https://api.github.com/repos/egulias/EmailValidator/zipball/3a85486b709bc384dae8eb78fb2eec649bdb64ff";
          sha256 = "1vbwd4fgg6910pfy0dpzkaf5djwzpx5nqr43hy2qpmkp11mkbbxw";
        };
      };
    };
    "ezyang/htmlpurifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ezyang-htmlpurifier-523407fb06eb9e5f3d59889b3978d5bfe94299c8";
        src = fetchurl {
          url = "https://api.github.com/repos/ezyang/htmlpurifier/zipball/523407fb06eb9e5f3d59889b3978d5bfe94299c8";
          sha256 = "1g65bndiwd2dmq5p6f29lh66x8lwxhpp1pmd619qbm8bnsy7hvki";
        };
      };
    };
    "fico7489/laravel-pivot" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fico7489-laravel-pivot-44f6e7b84761ae671b776dadbb668871c22edaeb";
        src = fetchurl {
          url = "https://api.github.com/repos/fico7489/laravel-pivot/zipball/44f6e7b84761ae671b776dadbb668871c22edaeb";
          sha256 = "1i2546brb2i0la326cdblv6vx8b90mlcnwcgpqg8ban36wrnjvaq";
        };
      };
    };
    "fruitcake/php-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fruitcake-php-cors-58571acbaa5f9f462c9c77e911700ac66f446d4e";
        src = fetchurl {
          url = "https://api.github.com/repos/fruitcake/php-cors/zipball/58571acbaa5f9f462c9c77e911700ac66f446d4e";
          sha256 = "18xm69q4dk9zqfwgp938y2byhlyy9lr5x5qln4k2mg8cq8xr2sm1";
        };
      };
    };
    "graham-campbell/result-type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-result-type-672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Result-Type/zipball/672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
          sha256 = "156zbfs19r9g543phlpjwhqin3k2x4dsvr5p0wk7rk4j0wwp8l2v";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-fb7566caccf22d74d1ab270de3551f72a58399f5";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/guzzle/zipball/fb7566caccf22d74d1ab270de3551f72a58399f5";
          sha256 = "0cmpq50s5xi9sg1dygllrhwj5dz5bxxj83xkvjspz63751xr51cs";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-3a494dc7dc1d7d12e511890177ae2d0e6c107da6";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/3a494dc7dc1d7d12e511890177ae2d0e6c107da6";
          sha256 = "1x8m4j1snrwyaywa0bsch26lr4050cnwpximbx4k66awc562f068";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-b635f279edd83fc275f822a1188157ffea568ff6";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/b635f279edd83fc275f822a1188157ffea568ff6";
          sha256 = "0734h3r8db06hcffagr8s7bxhjkvlfzvqg1klwmqidflwdwk7yj1";
        };
      };
    };
    "guzzlehttp/uri-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-uri-template-b945d74a55a25a949158444f09ec0d3c120d69e2";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/uri-template/zipball/b945d74a55a25a949158444f09ec0d3c120d69e2";
          sha256 = "02vd4r2di8xh9n5awfjy1lyb7vn5gkaynbiiqilm8did0r89qdhf";
        };
      };
    };
    "influxdb/influxdb-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "influxdb-influxdb-php-d6e59f4f04ab9107574fda69c2cbe36671253d03";
        src = fetchurl {
          url = "https://api.github.com/repos/influxdata/influxdb-php/zipball/d6e59f4f04ab9107574fda69c2cbe36671253d03";
          sha256 = "12pgci28sgkkkd7cmfqfsqifhniqs6mkziah0ij4rhxq7z3s20k2";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "justinrainbow-json-schema-ad87d5a5ca981228e0e205c2bc7dfb8e24559b60";
        src = fetchurl {
          url = "https://api.github.com/repos/justinrainbow/json-schema/zipball/ad87d5a5ca981228e0e205c2bc7dfb8e24559b60";
          sha256 = "12jrid38fyjcbhldxa26dm889mfr05kbr10mixdg77k47giin84q";
        };
      };
    };
    "laravel-notification-channels/webpush" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-notification-channels-webpush-b31f7d807d30c80e7391063291ebfe9683bb7de5";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel-notification-channels/webpush/zipball/b31f7d807d30c80e7391063291ebfe9683bb7de5";
          sha256 = "1vdalwjcncf3xz44j85bkb709c9mlnjqsxrhsvjmlkabwn2zi4aj";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-5c93d2795c393b462481179ce42dedfb30cc19b5";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/framework/zipball/5c93d2795c393b462481179ce42dedfb30cc19b5";
          sha256 = "1wff0nrlxll8kgvsdh5h7l50lshk86b7fs43g3ycx7269b5897gz";
        };
      };
    };
    "laravel/serializable-closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-serializable-closure-e5a3057a5591e1cfe8183034b0203921abe2c902";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/serializable-closure/zipball/e5a3057a5591e1cfe8183034b0203921abe2c902";
          sha256 = "0sjcn7w31x14slfj2mqs32kj62ay86i47i441p5cg3ajw9kjb6iy";
        };
      };
    };
    "laravel/socialite" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-socialite-50148edf24b6cd3e428aa9bc06a5d915b24376bb";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/socialite/zipball/50148edf24b6cd3e428aa9bc06a5d915b24376bb";
          sha256 = "0xdp118b59winbyvh7pa43bcp8rkfd75fckj0mbpx7zf72ralp8a";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-04a2d3bd0d650c0764f70bf49d1ee39393e4eb10";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/tinker/zipball/04a2d3bd0d650c0764f70bf49d1ee39393e4eb10";
          sha256 = "06rivrmcf8m8hm4vn9s7wwpfmgl89p73b78dm0qx26rs0lpr36p0";
        };
      };
    };
    "laravel/ui" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-ui-a58ec468db4a340b33f3426c778784717a2c144b";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/ui/zipball/a58ec468db4a340b33f3426c778784717a2c144b";
          sha256 = "0qrfr7rbi5b90inx3xf5yy5p9h38rs9b2567p2vh3711w4kqjmqd";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-d44a24690f16b8c1808bf13b1bd54ae4c63ea048";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/d44a24690f16b8c1808bf13b1bd54ae4c63ea048";
          sha256 = "1qx99m1qa2g3l6r2fim3rak6qh28zjj8sqjj86nq743dm3yszygw";
        };
      };
    };
    "league/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-config-754b3604fb2984c71f4af4a9cbe7b57f346ec1f3";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/config/zipball/754b3604fb2984c71f4af4a9cbe7b57f346ec1f3";
          sha256 = "0yjb85cd0qa0mra995863dij2hmcwk9x124vs8lrwiylb0l3mn8s";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-a141d430414fcb8bf797a18716b09f759a385bed";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/a141d430414fcb8bf797a18716b09f759a385bed";
          sha256 = "0w476nkv4izdrh8dn4g58lrqnfwrp8ijhj6fj8d8cpvr81kq0wiv";
        };
      };
    };
    "league/flysystem-local" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-local-543f64c397fefdf9cfeac443ffb6beff602796b3";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem-local/zipball/543f64c397fefdf9cfeac443ffb6beff602796b3";
          sha256 = "1f44jgjip7pgnjafwlazmbv9jap3xsw3jfzhgakbsa4bkx3aavr2";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-ff6248ea87a9f116e78edd6002e39e5128a0d4dd";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/ff6248ea87a9f116e78edd6002e39e5128a0d4dd";
          sha256 = "1a63nvqd6cz3vck3y8vjswn6c3cfwh13p0cn0ci5pqdf0bgjvvfz";
        };
      };
    };
    "league/oauth1-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-oauth1-client-d6365b901b5c287dd41f143033315e2f777e1167";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/oauth1-client/zipball/d6365b901b5c287dd41f143033315e2f777e1167";
          sha256 = "0hkh8l7884g8ssja1biwfb59x0jj951lwk6kmiacjqvyvzs07qmx";
        };
      };
    };
    "librenms/laravel-vue-i18n-generator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "librenms-laravel-vue-i18n-generator-c662202e21b41a33b1da405c0ca167983ac7e4e9";
        src = fetchurl {
          url = "https://api.github.com/repos/librenms/laravel-vue-i18n-generator/zipball/c662202e21b41a33b1da405c0ca167983ac7e4e9";
          sha256 = "06zm83hcnnkwfw2mf9nw765w8cswh0r20r5y3y8g425ysx23dr68";
        };
      };
    };
    "mews/purifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mews-purifier-48e7bddc18140412d7cd815b6eea2fc7a141c432";
        src = fetchurl {
          url = "https://api.github.com/repos/mewebstudio/Purifier/zipball/48e7bddc18140412d7cd815b6eea2fc7a141c432";
          sha256 = "1z3qh73v458sm143w08lygizds2zdqakjm54rab9792i0zxnlmfg";
        };
      };
    };
    "minishlink/web-push" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "minishlink-web-push-ec034f1e287cd1e74235e349bd017d71a61e9d8d";
        src = fetchurl {
          url = "https://api.github.com/repos/web-push-libs/web-push-php/zipball/ec034f1e287cd1e74235e349bd017d71a61e9d8d";
          sha256 = "1v8gr9wkhbqybb7fi8bmyhvp9i8bjpjx63bcsbyqf1aw9nrfnpcv";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-e2392369686d420ca32df3803de28b5d6f76867d";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/e2392369686d420ca32df3803de28b5d6f76867d";
          sha256 = "1cs9gx2qgggzzzn41858h2l2v7rrlnysxjxflmdm5ajyxw50sy2n";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-4f991ed2a403c85efbc4f23eb4030063fdbe01da";
        src = fetchurl {
          url = "https://api.github.com/repos/briannesbitt/Carbon/zipball/4f991ed2a403c85efbc4f23eb4030063fdbe01da";
          sha256 = "09k9ljqwn6qsr5z7wp2yv8p0vqr4hn03lyxvm76xm2g6wb6l43gp";
        };
      };
    };
    "nette/schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-schema-abbdbb70e0245d5f3bf77874cea1dfb0c930d06f";
        src = fetchurl {
          url = "https://api.github.com/repos/nette/schema/zipball/abbdbb70e0245d5f3bf77874cea1dfb0c930d06f";
          sha256 = "16i8gim0jpmmbq0pp4faw8kn2448yvpgsd1zvipbv9xrk37vah5q";
        };
      };
    };
    "nette/utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-utils-cacdbf5a91a657ede665c541eda28941d4b09c1e";
        src = fetchurl {
          url = "https://api.github.com/repos/nette/utils/zipball/cacdbf5a91a657ede665c541eda28941d4b09c1e";
          sha256 = "0v3as5xdmr9j7d4q4ly18f7g8g0sjcy25l4ispsdp60byldi7m8h";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-19526a33fb561ef417e822e85f08a00db4059c17";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/19526a33fb561ef417e822e85f08a00db4059c17";
          sha256 = "13rmjg186nz0w63hjbwbs55nxb999msjin268s9h56w8zc5ki0sy";
        };
      };
    };
    "nunomaduro/laravel-console-summary" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-laravel-console-summary-2defd2d80da6a424d8d8d3df6cdb972043debd31";
        src = fetchurl {
          url = "https://api.github.com/repos/nunomaduro/laravel-console-summary/zipball/2defd2d80da6a424d8d8d3df6cdb972043debd31";
          sha256 = "0f5vzzb1g85h5558g1zrqk4xjz0pw4b6plf40s0n2k3n63ivg536";
        };
      };
    };
    "nunomaduro/termwind" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-termwind-8ab0b32c8caa4a2e09700ea32925441385e4a5dc";
        src = fetchurl {
          url = "https://api.github.com/repos/nunomaduro/termwind/zipball/8ab0b32c8caa4a2e09700ea32925441385e4a5dc";
          sha256 = "1g75vpq7014s5yd6bvj78b88ia31slkikdhjv8iprz987qm5dnl7";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-58c3f47f650c94ec05a151692652a868995d2938";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/constant_time_encoding/zipball/58c3f47f650c94ec05a151692652a868995d2938";
          sha256 = "0i9km0lzvc7df9758fm1p3y0679pzvr5m9x3mrz0d2hxlppsm764";
        };
      };
    };
    "paragonie/random_compat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-random_compat-996434e5492cb4c3edcb9168db6fbb1359ef965a";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/random_compat/zipball/996434e5492cb4c3edcb9168db6fbb1359ef965a";
          sha256 = "0ky7lal59dihf969r1k3pb96ql8zzdc5062jdbg69j6rj0scgkyx";
        };
      };
    };
    "pear/console_color2" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-console_color2-cab2b886aa55cc9e23464d1f49edf97bee9f5a63";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Console_Color2/zipball/cab2b886aa55cc9e23464d1f49edf97bee9f5a63";
          sha256 = "1kzh9n06mzpb0wcnchl6xkhwl68r62lazf85mm1wfzm6r3rl0y93";
        };
      };
    };
    "pear/console_table" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-console_table-1930c11897ca61fd24b95f2f785e99e0f36dcdea";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Console_Table/zipball/1930c11897ca61fd24b95f2f785e99e0f36dcdea";
          sha256 = "1ls3pcg1n49f8fvhp0gzqsmxkfxwwny2h3dzpmbykqdwlnwcm2bb";
        };
      };
    };
    "pear/net_dns2" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-net_dns2-dc8053772132a855b8bb6193422a959995f3a773";
        src = fetchurl {
          url = "https://api.github.com/repos/mikepultz/netdns2/zipball/dc8053772132a855b8bb6193422a959995f3a773";
          sha256 = "14lr025ck7hqfn39jmfyas20rlmgcwhf2l0ayqvadrv9qjv4f8l7";
        };
      };
    };
    "php-amqplib/php-amqplib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-amqplib-php-amqplib-1aecbd182b35eb039667c50d7d92d71f105be779";
        src = fetchurl {
          url = "https://api.github.com/repos/php-amqplib/php-amqplib/zipball/1aecbd182b35eb039667c50d7d92d71f105be779";
          sha256 = "0wwzlf2yhjrc523n0y7qh23pxgn4f2qhkbr0jnxzq9j6mm75hnjm";
        };
      };
    };
    "php-flasher/flasher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-flasher-flasher-9ac731e943af4bc6c41ed2e7d50ddaa757bbe148";
        src = fetchurl {
          url = "https://api.github.com/repos/php-flasher/flasher/zipball/9ac731e943af4bc6c41ed2e7d50ddaa757bbe148";
          sha256 = "1hw9lviqw8lavlz0vs7zsbncvyp3w9c9icz1dzwxx5i52dzhlh3n";
        };
      };
    };
    "php-flasher/flasher-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-flasher-flasher-laravel-96b3b210ee778581a10033f4e353cdf819ce5434";
        src = fetchurl {
          url = "https://api.github.com/repos/php-flasher/flasher-laravel/zipball/96b3b210ee778581a10033f4e353cdf819ce5434";
          sha256 = "00v3r44kqjq93l0zl9djb802qbgfafqi483awrq4lp76lbya27cf";
        };
      };
    };
    "phpmailer/phpmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpmailer-phpmailer-df16b615e371d81fb79e506277faea67a1be18f1";
        src = fetchurl {
          url = "https://api.github.com/repos/PHPMailer/PHPMailer/zipball/df16b615e371d81fb79e506277faea67a1be18f1";
          sha256 = "1z8a30wl8zicl2a83gaqfbk0m8c8kqmch3m43z6ml98fl3vhbwwf";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-dd3a383e599f49777d8b628dadbb90cae435b87e";
        src = fetchurl {
          url = "https://api.github.com/repos/schmittjoh/php-option/zipball/dd3a383e599f49777d8b628dadbb90cae435b87e";
          sha256 = "029gpfa66hwg395jvf7swcvrj085wsw5fw6041nrl5kbc36fvwlb";
        };
      };
    };
    "phpseclib/phpseclib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpseclib-phpseclib-4580645d3fc05c189024eb3b834c6c1e4f0f30a1";
        src = fetchurl {
          url = "https://api.github.com/repos/phpseclib/phpseclib/zipball/4580645d3fc05c189024eb3b834c6c1e4f0f30a1";
          sha256 = "0v3c7n9h99pw4f03bfxjsgni7wpq7xr47nw2hf2hq8yjndw19n3p";
        };
      };
    };
    "predis/predis" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "predis-predis-33b70b971a32b0d28b4f748b0547593dce316e0d";
        src = fetchurl {
          url = "https://api.github.com/repos/predis/predis/zipball/33b70b971a32b0d28b4f748b0547593dce316e0d";
          sha256 = "0qlz42vsqzqnwg0cmdgxgb35k6gab5vs53dg87qsihi0n3rfj9ar";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/cache/zipball/aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
          sha256 = "07rnyjwb445sfj30v5ny3gfsgc1m7j7cyvwjgs2cm9slns1k1ml8";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-c71ecc56dfe541dbd90c5360474fbc405f8d5963";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/c71ecc56dfe541dbd90c5360474fbc405f8d5963";
          sha256 = "1mvan38yb65hwk68hl0p7jymwzr4zfnaxmwjbw7nj3rsknvga49i";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-client-0955afe48220520692d2d09f7ab7e0f93ffd6a31";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-client/zipball/0955afe48220520692d2d09f7ab7e0f93ffd6a31";
          sha256 = "09r970lfpwil861gzm47446ck1s6km6ijibkxl13p1ymwdchnv6m";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-e616d01114759c4c489f93b099585439f795fe35";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-factory/zipball/e616d01114759c4c489f93b099585439f795fe35";
          sha256 = "1vzimn3h01lfz0jx0lh3cy9whr3kdh103m1fw07qric4pnnz5kx8";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-402d35bcb92c70c026d1a6a9883f06b2ead23d71";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/402d35bcb92c70c026d1a6a9883f06b2ead23d71";
          sha256 = "13cnlzrh344n00sgkrp5cgbkr8dznd99c3jfnpl0wg1fdv1x4qfm";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-fe5ea303b0887d5caefd3d431c3e61ad47037001";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/fe5ea303b0887d5caefd3d431c3e61ad47037001";
          sha256 = "0a0rwg38vdkmal3nwsgx58z06qkfl85w2yvhbgwg45anr0b3bhmv";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-764e0b3939f5ca87cb904f570ef9be2d78a07865";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/simple-cache/zipball/764e0b3939f5ca87cb904f570ef9be2d78a07865";
          sha256 = "0hgcanvd9gqwkaaaq41lh8fsfdraxmp2n611lvqv69jwm1iy76g8";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-1724ceff278daeeac5a006744633bacbb2dc4706";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/1724ceff278daeeac5a006744633bacbb2dc4706";
          sha256 = "165n648669f9zgqxjzibnxv3qdijh5s618khcia5dy0wwzxa1vg6";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822";
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-a4b48764bfbb8f3a6a4d1aeb1a35bb5e9ecac4a5";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/a4b48764bfbb8f3a6a4d1aeb1a35bb5e9ecac4a5";
          sha256 = "0y5s9rbs023sw94yzvxr8fn9rr7xw03f08zmc9n9jl49zlr5s52p";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-60a4c63ab724854332900504274f6150ff26d286";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/60a4c63ab724854332900504274f6150ff26d286";
          sha256 = "1w1i50pbd18awmvzqjkbszw79dl09912ibn95qm8lxr4nsjvbb27";
        };
      };
    };
    "silber/bouncer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "silber-bouncer-502221b6724fe806aa01ffe08070edaa10222101";
        src = fetchurl {
          url = "https://api.github.com/repos/JosephSilber/bouncer/zipball/502221b6724fe806aa01ffe08070edaa10222101";
          sha256 = "1pzqpxlrmj8f5lc1v91rkv7s2cwarzxna474qrgcbyycymbwp35v";
        };
      };
    };
    "socialiteproviders/manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "socialiteproviders-manager-47402cbc5b7ef445317e799bf12fd5a12062206c";
        src = fetchurl {
          url = "https://api.github.com/repos/SocialiteProviders/Manager/zipball/47402cbc5b7ef445317e799bf12fd5a12062206c";
          sha256 = "0lmsb1ni27dw1zipd3l24dzm43xggh4dd92iws3r161s4pppf7sc";
        };
      };
    };
    "spatie/backtrace" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-backtrace-483f76a82964a0431aa836b6ed0edde0c248e3ab";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/backtrace/zipball/483f76a82964a0431aa836b6ed0edde0c248e3ab";
          sha256 = "1mb7fk0phc065iz0b1s6zf0lbn5nz6r2x0g6z650rwdkc015vh9n";
        };
      };
    };
    "spatie/flare-client-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-flare-client-php-943894c6a6b00501365ac0b91ae0dce56f2226fa";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/flare-client-php/zipball/943894c6a6b00501365ac0b91ae0dce56f2226fa";
          sha256 = "10wv2zczvjzfq96r6i28i86a5hzjrgn05czs6b8rhv8jp6fqz4jh";
        };
      };
    };
    "spatie/ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-ignition-de24ff1e01814d5043bd6eb4ab36a5a852a04973";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/ignition/zipball/de24ff1e01814d5043bd6eb4ab36a5a852a04973";
          sha256 = "0rb84r8jdcb8hv9ljbmcwhzpiwwdkc9wrp7lddjx63skby5ipgf6";
        };
      };
    };
    "spatie/laravel-ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-laravel-ignition-dd15fbe82ef5392798941efae93c49395a87d943";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/laravel-ignition/zipball/dd15fbe82ef5392798941efae93c49395a87d943";
          sha256 = "0y2pbk0yr4mzi5j5xqqhybjmk1g28hpb88n8kcrafp5rdva3j4qy";
        };
      };
    };
    "spomky-labs/base64url" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spomky-labs-base64url-7752ce931ec285da4ed1f4c5aa27e45e097be61d";
        src = fetchurl {
          url = "https://api.github.com/repos/Spomky-Labs/base64url/zipball/7752ce931ec285da4ed1f4c5aa27e45e097be61d";
          sha256 = "04xjhggcf6zc80ikva0flqis16q9b5lywld73g007m3y8b97q23l";
        };
      };
    };
    "spomky-labs/pki-framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spomky-labs-pki-framework-d3ba688bf40e7c6e0dabf065ee18fc210734e760";
        src = fetchurl {
          url = "https://api.github.com/repos/Spomky-Labs/pki-framework/zipball/d3ba688bf40e7c6e0dabf065ee18fc210734e760";
          sha256 = "0wg40xhma97d2a5rdx4fzr2zxsi4bnk2wdlcbz9dsvwrksjdifgp";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-8788808b07cf0bdd6e4b7fdd23d8ddb1470c83b7";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/8788808b07cf0bdd6e4b7fdd23d8ddb1470c83b7";
          sha256 = "0khydb2x5d3pajm2bb9cdijiy2fjqbrsw5faqp03yaryc60pwkzz";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-88453e64cd86c5b60e8d2fb2c6f953bbc353ffbf";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/css-selector/zipball/88453e64cd86c5b60e8d2fb2c6f953bbc353ffbf";
          sha256 = "18lvkwbc418fhb5s383ggiawg3a7bi610i8svf3vg5yfkvr9yw3r";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-7c3aff79d10325257a001fcf92d991f24fc967cf";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/7c3aff79d10325257a001fcf92d991f24fc967cf";
          sha256 = "0p0c2942wjq1bb06y9i8gw6qqj7sin5v5xwsvl0zdgspbr7jk1m9";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-99d2d814a6351461af350ead4d963bd67451236f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/99d2d814a6351461af350ead4d963bd67451236f";
          sha256 = "0f2g4axacvh15amghqip7qcbhhikr3d487593ip6jkvnhzgfbk2c";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-3af8ac1a3f98f6dbc55e10ae59c9e44bfc38dfaa";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/3af8ac1a3f98f6dbc55e10ae59c9e44bfc38dfaa";
          sha256 = "143swlb7s5a0g911kdpkkxy1lccvg1h49pjpyisjmqjjr5mkb906";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-a76aed96a42d2b521153fb382d418e30d18b59df";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/a76aed96a42d2b521153fb382d418e30d18b59df";
          sha256 = "1w49s1q6xhcmkgd3xkyjggiwys0wvyny0p3018anvdi0k86zg678";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-d9b01ba073c44cef617c7907ce2419f8d00d75e2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/d9b01ba073c44cef617c7907ce2419f8d00d75e2";
          sha256 = "1v1sln300klm5srgbgsghhvrx4rks6nyw7j4w0qaa66i3aq55aps";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-e0ad0d153e1c20069250986cd9e9dd1ccebb0d66";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/e0ad0d153e1c20069250986cd9e9dd1ccebb0d66";
          sha256 = "17w6w586z52i4s54m63kfqgz7ns8z9va0iy5xllna6gwvkj9lqza";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-161e16fd2e35fb4881a43bc8b383dfd5be4ac374";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/161e16fd2e35fb4881a43bc8b383dfd5be4ac374";
          sha256 = "04yz52h2g0r37vgdsns2kczik59yih73h6vfnzxvgskpi8b1z7cv";
        };
      };
    };
    "symfony/mailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mailer-7b03d9be1dea29bfec0a6c7b603f5072a4c97435";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/mailer/zipball/7b03d9be1dea29bfec0a6c7b603f5072a4c97435";
          sha256 = "1ml5dadsl2bvxf1pncdhk4xx11dwc940kj1m3l6rrw5w4ig4ny1h";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-7b5d2121858cd6efbed778abce9cfdd7ab1f62ad";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/mime/zipball/7b5d2121858cd6efbed778abce9cfdd7ab1f62ad";
          sha256 = "1jy4pilql69jxpydhpksd0pahwzrgajaxp09j9xw3za93qcw1d6b";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-5bbc823adecdae860bb64756d639ecfec17b050a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/5bbc823adecdae860bb64756d639ecfec17b050a";
          sha256 = "0vyv70z1yi2is727d1mkb961w5r1pb1v3wy1pvdp30h8ffy15wk6";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-511a08c03c1960e08a883f4cffcacd219b758354";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/511a08c03c1960e08a883f4cffcacd219b758354";
          sha256 = "0ifsgsyxf0z0nkynqvr5259dm5dsmbgdpvyi5zfvy8935mi0ki0i";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-639084e360537a19f9ee352433b84ce831f3d2da";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/639084e360537a19f9ee352433b84ce831f3d2da";
          sha256 = "1i2wcsbfbwdyrx8545yrrvbdaf4l2393pjvg9266q74611j6pzxj";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-19bd1e4fcd5b91116f14d8533c57831ed00571b6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/19bd1e4fcd5b91116f14d8533c57831ed00571b6";
          sha256 = "1d80jph5ykiw6ydv8fwd43s0aglh24qc1yrzds2f3aqanpbk1gr2";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
          sha256 = "1ym84qp609i50lv4vkd4yz99y19kaxd5kmpdnh66mxx1a4a104mi";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-869329b1e9894268a8a61dabb69153029b7a8c97";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/869329b1e9894268a8a61dabb69153029b7a8c97";
          sha256 = "1h0lbh8d41sa4fymmw03yzws3v3z0lz4lv1kgcld7r53i2m3wfwp";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
          sha256 = "16yydk7rsknlasrpn47n4b4js8svvp4rxzw99dkav52wr3cqmcwd";
        };
      };
    };
    "symfony/polyfill-php83" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php83-508c652ba3ccf69f8c97f251534f229791b52a57";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php83/zipball/508c652ba3ccf69f8c97f251534f229791b52a57";
          sha256 = "168mxw8jwyx5q8phmz6dhgf564g5hngpj0pyiv59lzazyqj82cx1";
        };
      };
    };
    "symfony/polyfill-uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-uuid-f3cf1a645c2734236ed1e2e671e273eeb3586166";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-uuid/zipball/f3cf1a645c2734236ed1e2e671e273eeb3586166";
          sha256 = "1pjh861iwlf71frm9f9i7acw4bbiq40gkh96a5wd09nfd2c3w7mc";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-8741e3ed7fe2e91ec099e02446fb86667a0f1628";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/8741e3ed7fe2e91ec099e02446fb86667a0f1628";
          sha256 = "1q9jvh645dhw2j7dmys3xslpmbwyxhb3ndn6pvcw197ird1dbzw9";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-d37ad1779c38b8eb71996d17dc13030dcb7f9cf5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/d37ad1779c38b8eb71996d17dc13030dcb7f9cf5";
          sha256 = "0zzcqr2wzny6x9sbzgsmpw1b4v3wmgfmh4rl95f2b5a3x39wxamc";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-40da9cc13ec349d9e4966ce18b5fbcd724ab10a4";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/40da9cc13ec349d9e4966ce18b5fbcd724ab10a4";
          sha256 = "188kncrgx16dg9x0ng47n4ljypblpxxn0bic5z75blihnydl5lb4";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-f2e190ee75ff0f5eced645ec0be5c66fac81f51f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/f2e190ee75ff0f5eced645ec0be5c66fac81f51f";
          sha256 = "1zbn32ra3zjl59iq7maascakxnh6h0rn3yqqfkp5rrn60xm9dn0j";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-f72b2cba8f79dd9d536f534f76874b58ad37876f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation/zipball/f72b2cba8f79dd9d536f534f76874b58ad37876f";
          sha256 = "1m865q15bsgv5pcv62yramyz9pfjijrwl768hnqrkmp2mbyqdqpj";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-02c24deb352fb0d79db5486c0c79905a85e37e86";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation-contracts/zipball/02c24deb352fb0d79db5486c0c79905a85e37e86";
          sha256 = "1mpn6s7dv8q96pgg6f81gyvgdqrnmjg2g6g3x555s5qprmh4hliw";
        };
      };
    };
    "symfony/uid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-uid-01b0f20b1351d997711c56f1638f7a8c3061e384";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/uid/zipball/01b0f20b1351d997711c56f1638f7a8c3061e384";
          sha256 = "0gmh5j09i4rfhkrbp47bm8620pfjqsh1yq02rcghblh9gkjqq81s";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-c81268d6960ddb47af17391a27d222bd58cf0515";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/c81268d6960ddb47af17391a27d222bd58cf0515";
          sha256 = "0cf15m23m617g5n14fwbafacfrwmdirrmhra3qp8rkdgh6d23czi";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-a9a8337aa641ef2aa39c3e028f9107ec391e5927";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/a9a8337aa641ef2aa39c3e028f9107ec391e5927";
          sha256 = "09crdf0pwqjwlpm45zf65xv9z5f32klzv643iisxn23gv73hh4vp";
        };
      };
    };
    "tecnickcom/tcpdf" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tecnickcom-tcpdf-e3cffc9bcbc76e89e167e9eb0bbda0cab7518459";
        src = fetchurl {
          url = "https://api.github.com/repos/tecnickcom/TCPDF/zipball/e3cffc9bcbc76e89e167e9eb0bbda0cab7518459";
          sha256 = "17769rpyfq6z8lw5bj7icvkz7003d6kbj1hiji5cixrkahvc57fy";
        };
      };
    };
    "tightenco/ziggy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tightenco-ziggy-3beb080be60b1eadad043f3773a160df13fa215f";
        src = fetchurl {
          url = "https://api.github.com/repos/tighten/ziggy/zipball/3beb080be60b1eadad043f3773a160df13fa215f";
          sha256 = "1ryiqcv6afjgiv2f6i6qsaww2c417l60lkhrj4n94amdqpcp4d6b";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-c42125b83a4fa63b187fdf29f9c93cb7733da30c";
        src = fetchurl {
          url = "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/c42125b83a4fa63b187fdf29f9c93cb7733da30c";
          sha256 = "0ckk04hwwz0fdkfr20i7xrhdjcnnw1b0liknbb81qyr1y4b7x3dd";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
        src = fetchurl {
          url = "https://api.github.com/repos/vlucas/phpdotenv/zipball/1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
          sha256 = "13h4xyxhdjn1n7xcxbcdhj20rv5fsaigbsbz61x2i224hj76620a";
        };
      };
    };
    "voku/portable-ascii" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-ascii-b56450eed252f6801410d810c8e1727224ae0743";
        src = fetchurl {
          url = "https://api.github.com/repos/voku/portable-ascii/zipball/b56450eed252f6801410d810c8e1727224ae0743";
          sha256 = "0gwlv1hr6ycrf8ik1pnvlwaac8cpm8sa1nf4d49s8rp4k2y5anyl";
        };
      };
    };
    "web-token/jwt-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "web-token-jwt-core-db58b6ebbe1a7d5869688e989b1cf110c6ab888f";
        src = fetchurl {
          url = "https://api.github.com/repos/web-token/jwt-core/zipball/db58b6ebbe1a7d5869688e989b1cf110c6ab888f";
          sha256 = "1xs7dxivjs31pnyagjwg611jzicdyd5ygcy1h5faqnjha1l8qb2m";
        };
      };
    };
    "web-token/jwt-key-mgmt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "web-token-jwt-key-mgmt-3b51eeeff38ac58ee86ec83d073b88b8294b1c7e";
        src = fetchurl {
          url = "https://api.github.com/repos/web-token/jwt-key-mgmt/zipball/3b51eeeff38ac58ee86ec83d073b88b8294b1c7e";
          sha256 = "1j3wg9bin38fc06lw6494rpypgrlckly2vrbm93jxp04wsf0gpq4";
        };
      };
    };
    "web-token/jwt-signature" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "web-token-jwt-signature-156e0b0ef534e53eecf23a32a92ee6d8cb4fdac4";
        src = fetchurl {
          url = "https://api.github.com/repos/web-token/jwt-signature/zipball/156e0b0ef534e53eecf23a32a92ee6d8cb4fdac4";
          sha256 = "1qxgmqf6khvmx97nwxb3m8sg3bycf729xjhwy1xn4xwmch4bja9r";
        };
      };
    };
    "web-token/jwt-signature-algorithm-ecdsa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "web-token-jwt-signature-algorithm-ecdsa-34b119d6b5eca53914ad3b96660e5bd7fb5538b9";
        src = fetchurl {
          url = "https://api.github.com/repos/web-token/jwt-signature-algorithm-ecdsa/zipball/34b119d6b5eca53914ad3b96660e5bd7fb5538b9";
          sha256 = "1riji6y5dgqj2lwxn7lrcd0027b8v7aparn0sdqsrxm9k77w1pw5";
        };
      };
    };
    "web-token/jwt-util-ecc" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "web-token-jwt-util-ecc-b2337052dbee724d710c1fdb0d3609835a5f8609";
        src = fetchurl {
          url = "https://api.github.com/repos/web-token/jwt-util-ecc/zipball/b2337052dbee724d710c1fdb0d3609835a5f8609";
          sha256 = "0pn2qbb016kxvklck271xgl7fjcvvrrk1j9lnx95a3p9mz81lsrs";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-11cb2199493b2f8a3b53e7f19068fc6aac760991";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/11cb2199493b2f8a3b53e7f19068fc6aac760991";
          sha256 = "18qiza1ynwxpi6731jx1w5qsgw98prld1lgvfk54z92b1nc7psix";
        };
      };
    };
  };
  devPackages = {
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-aff3235fecb4104203b1e62c32239c56530eee32";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/aff3235fecb4104203b1e62c32239c56530eee32";
          sha256 = "07nbdw2r9y5iic3dfb8r1mqzhgmkb2k7bla37zk54hnr8mnyiy7p";
        };
      };
    };
    "barryvdh/laravel-ide-helper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-ide-helper-81d5b223ff067a1f38e14c100997e153b837fe4a";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-ide-helper/zipball/81d5b223ff067a1f38e14c100997e153b837fe4a";
          sha256 = "0z1zpkznvrqs0wnr0zj8fj832a8bqgzkhk4s3j6mmaxjkxbxa8s9";
        };
      };
    };
    "barryvdh/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-reflection-docblock-e6811e927f0ecc37cc4deaa6627033150343e597";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/ReflectionDocBlock/zipball/e6811e927f0ecc37cc4deaa6627033150343e597";
          sha256 = "08gsiwza5n66mkpc07lpc0w505rrz0rv0dp9jiwk3ain0jl54yfw";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-90d087e988ff194065333d16bc5cf649872d9cdb";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/ca-bundle/zipball/90d087e988ff194065333d16bc5cf649872d9cdb";
          sha256 = "0x5nw6bxbvzxw56jc4xzdn5basflv18z78gsxqw2jamyaczyz6dn";
        };
      };
    };
    "composer/class-map-generator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-class-map-generator-953cc4ea32e0c31f2185549c7d216d7921f03da9";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/class-map-generator/zipball/953cc4ea32e0c31f2185549c7d216d7921f03da9";
          sha256 = "07lj173vnxccxzw5yaci16zrxl338jx84xnwmyz71fsvv7jkzcc8";
        };
      };
    };
    "composer/composer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-composer-4c516146167d1392c8b9b269bb7c24115d262164";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/composer/zipball/4c516146167d1392c8b9b269bb7c24115d262164";
          sha256 = "0jq35vbcrpr6snnfky3m0hi1lf2f4y7plpy7pcxgyizwy8p8cphq";
        };
      };
    };
    "composer/metadata-minifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-metadata-minifier-c549d23829536f0d0e984aaabbf02af91f443207";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/metadata-minifier/zipball/c549d23829536f0d0e984aaabbf02af91f443207";
          sha256 = "0ldblf3haw1q02zdbckq0v0dh81a948n9bmpfjs4zpj1zmxymmlg";
        };
      };
    };
    "composer/pcre" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-pcre-4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/pcre/zipball/4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
          sha256 = "05cvb25kawk3wjq9pvkx15rsjf9gjvhksmbq3xxhrmvqsl42mzrs";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-3953f23262f2bff1919fc82183ad9acb13ff62c9";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/semver/zipball/3953f23262f2bff1919fc82183ad9acb13ff62c9";
          sha256 = "0sp54hzb2gq777rd0w5ciq00g0l85irc2m6s2zx7675g24wfbbms";
        };
      };
    };
    "composer/spdx-licenses" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-spdx-licenses-c848241796da2abf65837d51dce1fae55a960149";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/spdx-licenses/zipball/c848241796da2abf65837d51dce1fae55a960149";
          sha256 = "1g833l7pf6q7fswxi8xxsfgbm2alfpfbmk7l5crf04w72hp10nwk";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-xdebug-handler-ced299686f41dce890debac69273b47ffe98a40c";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/xdebug-handler/zipball/ced299686f41dce890debac69273b47ffe98a40c";
          sha256 = "1hnhrp26mk3zjsp6cl351b12bcbbbdglc677vjz9n8l7qj466b0h";
        };
      };
    };
    "doctrine/annotations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-annotations-e157ef3f3124bbf6fe7ce0ffd109e8a8ef284e7f";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/annotations/zipball/e157ef3f3124bbf6fe7ce0ffd109e8a8ef284e7f";
          sha256 = "1lf9y10schsh11185xgfnwn91i77njymz3zv43xh4qcyjq5fjg32";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-c6222283fa3f4ac679f8b9ced9a4e23f163e80d0";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/c6222283fa3f4ac679f8b9ced9a4e23f163e80d0";
          sha256 = "059ahw73z0m24cal4f805j6h1i53f90mrmjr7s4f45yfxgwcqvcn";
        };
      };
    };
    "fakerphp/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fakerphp-faker-e3daa170d00fde61ea7719ef47bb09bb8f1d9b01";
        src = fetchurl {
          url = "https://api.github.com/repos/FakerPHP/Faker/zipball/e3daa170d00fde61ea7719ef47bb09bb8f1d9b01";
          sha256 = "1n99cfc737xcyvip3k9j1f5iy91bh1m64xg404xa7gvzlgpdnm7n";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-c83e88a30524f9360b11f585f71e6b17313b7187";
        src = fetchurl {
          url = "https://api.github.com/repos/filp/whoops/zipball/c83e88a30524f9360b11f585f71e6b17313b7187";
          sha256 = "1gic15fav548z97yqsawwlmnkdwnrq36095218jzd9b4s8n4zn2g";
        };
      };
    };
    "friendsofphp/php-cs-fixer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "friendsofphp-php-cs-fixer-92b019f6c8d79aa26349d0db7671d37440dc0ff3";
        src = fetchurl {
          url = "https://api.github.com/repos/PHP-CS-Fixer/PHP-CS-Fixer/zipball/92b019f6c8d79aa26349d0db7671d37440dc0ff3";
          sha256 = "12bc6djhrgl7w2ynnnpnxk08xv02qn6pqwyzqdsgkj7m9mn5rqrs";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url = "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "laravel/dusk" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-dusk-a926506b105b93c473609bfe88b5da2347eeb7b2";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/dusk/zipball/a926506b105b93c473609bfe88b5da2347eeb7b2";
          sha256 = "122qzl1ds82n8dlyiij16rz7b8nrmlscqqkc463mkxv1h8w61sw1";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-17dcf3f6ed112bb85a37cf13538fd8de49f5c274";
        src = fetchurl {
          url = "https://api.github.com/repos/maximebf/php-debugbar/zipball/17dcf3f6ed112bb85a37cf13538fd8de49f5c274";
          sha256 = "06g98wazm9lfimz21m8833123h06gh48pmp8xixljra9lbl50g7v";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-d1413755e26fe56a63455f7753221c86cbb88f66";
        src = fetchurl {
          url = "https://api.github.com/repos/mockery/mockery/zipball/d1413755e26fe56a63455f7753221c86cbb88f66";
          sha256 = "1nxg8jx944p9h5g9fx4skf0igdzprmdi533ia72cm4d41pc9nq89";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
          sha256 = "16k44y94bcr439bsxm5158xvmlyraph2c6n17qa5y29b04jqdw5j";
        };
      };
    };
    "nunomaduro/collision" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-collision-2b97fed4950cf0ff148c18b853975ec8ea135e90";
        src = fetchurl {
          url = "https://api.github.com/repos/nunomaduro/collision/zipball/2b97fed4950cf0ff148c18b853975ec8ea135e90";
          sha256 = "0c47q6k8qdhjhgfx0afzamj9m6haj5a4rk4wvnscbz1s1jr4m5qh";
        };
      };
    };
    "nunomaduro/larastan" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-larastan-73e5be5f5c732212ce6ca77ffd2753a136f36a23";
        src = fetchurl {
          url = "https://api.github.com/repos/nunomaduro/larastan/zipball/73e5be5f5c732212ce6ca77ffd2753a136f36a23";
          sha256 = "1qihli30ji9xj541bmrp39dimhbai6b3si4vpgdx9k3x221lalqn";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-97803eca37d319dfa7826cc2437fc020857acb53";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53";
          sha256 = "107dsj04ckswywc84dvw42kdrqd4y6yvb2qwacigyrn05p075c1w";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
          sha256 = "0mdbzh1y0m2vvpf54vw7ckcbcf1yfhivwxgc9j9rbb7yifmlyvsg";
        };
      };
    };
    "php-parallel-lint/php-parallel-lint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-parallel-lint-php-parallel-lint-6483c9832e71973ed29cf71bd6b3f4fde438a9de";
        src = fetchurl {
          url = "https://api.github.com/repos/php-parallel-lint/PHP-Parallel-Lint/zipball/6483c9832e71973ed29cf71bd6b3f4fde438a9de";
          sha256 = "15r9nyc650y7h568rnd2ha4n4i9nplgcq9yvhnly0r5s1zyhvw5a";
        };
      };
    };
    "php-webdriver/webdriver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-webdriver-webdriver-3ea4f924afb43056bf9c630509e657d951608563";
        src = fetchurl {
          url = "https://api.github.com/repos/php-webdriver/php-webdriver/zipball/3ea4f924afb43056bf9c630509e657d951608563";
          sha256 = "0mwhw5b7axvcsf7zk9nsjich4yj9sc0vdp11klddgm0z6w0i9rqr";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-b2fe4d22a5426f38e014855322200b97b5362c0d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/b2fe4d22a5426f38e014855322200b97b5362c0d";
          sha256 = "06nsbg1min5qw3126pb9fs70n7pqqzihkj2ficxqf4fjrc2vznv6";
        };
      };
    };
    "phpmyadmin/sql-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpmyadmin-sql-parser-db1b3069b5dbc220d393d67ff911e0ae76732755";
        src = fetchurl {
          url = "https://api.github.com/repos/phpmyadmin/sql-parser/zipball/db1b3069b5dbc220d393d67ff911e0ae76732755";
          sha256 = "0dwdyxd9wcbvkh0vy715cqkkavv51b4872jgxz1i6jq8a7ij09j3";
        };
      };
    };
    "phpstan/phpdoc-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpdoc-parser-a2b24135c35852b348894320d47b3902a94bc494";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpdoc-parser/zipball/a2b24135c35852b348894320d47b3902a94bc494";
          sha256 = "0zrziqqxwq5lasv0jnran2mnmjwg37mvg610d6rar8jky1vwsb84";
        };
      };
    };
    "phpstan/phpstan" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpstan-5d660cbb7e1b89253a47147ae44044f49832351f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpstan/zipball/5d660cbb7e1b89253a47147ae44044f49832351f";
          sha256 = "00699wjnzrg3z4v4jdflf0h5s195kh4ndsqmjbig0ayspdx54i7d";
        };
      };
    };
    "phpstan/phpstan-deprecation-rules" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpstan-deprecation-rules-a22b36b955a2e9a3d39fe533b6c1bb5359f9c319";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpstan-deprecation-rules/zipball/a22b36b955a2e9a3d39fe533b6c1bb5359f9c319";
          sha256 = "1q90kwdq6nj8wgnsrf1idqclc0klnzqsgdqwf72acxyvz9vilxrp";
        };
      };
    };
    "phpstan/phpstan-mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpstan-mockery-6aa86bd8e9c9a1be97baf0558d4a2ed1374736a6";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpstan-mockery/zipball/6aa86bd8e9c9a1be97baf0558d4a2ed1374736a6";
          sha256 = "1p0jbxll2i049jl5glj8il626zsffc62v3hkkfmirj6x1vds17i9";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-b0a88255cb70d52653d80c890bd7f38740ea50d1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/b0a88255cb70d52653d80c890bd7f38740ea50d1";
          sha256 = "0av8237khhxbs561s297amwvc5azi17hpnbx272a8lj4d551qvvz";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-a6d351645c3fe5a30f5e86be6577d946af65a328";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/a6d351645c3fe5a30f5e86be6577d946af65a328";
          sha256 = "1bs0indmhlakvgpwip3z54lqx8rgz9vxiclmvsrk3m1axn3vmsyh";
        };
      };
    };
    "react/promise" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "react-promise-f913fb8cceba1e6644b7b90c4bfb678ed8a3ef38";
        src = fetchurl {
          url = "https://api.github.com/repos/reactphp/promise/zipball/f913fb8cceba1e6644b7b90c4bfb678ed8a3ef38";
          sha256 = "1awzjaryj6lyi5wn0rmzwf5wyn1lg5wl3c6jp88i1gc9mp50g0n4";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-442e7c7e687e42adc03470c7b668bc4b2402c0b2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2";
          sha256 = "074qzdq19k9x4svhq3nak5h348xska56v1sqnhk1aj0jnrx02h37";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-fa0f136dd2334583309d32b62544682ee972b51a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/fa0f136dd2334583309d32b62544682ee972b51a";
          sha256 = "0m8ibkwaxw2q5v84rlvy7ylpkddscsa8hng0cjczy4bqpqavr83w";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-739b35e53379900cc9ac327b2147867b8b6efd88";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/739b35e53379900cc9ac327b2147867b8b6efd88";
          sha256 = "1y4yz8n8hszbhinf9ipx3pqyvgm7gz0krgyn19z0097yq3bbq8yf";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-74be17022044ebaaecfdf0c5cd504fc9cd5a7131";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/74be17022044ebaaecfdf0c5cd504fc9cd5a7131";
          sha256 = "0f90471bi8lkmffms3bc2dnggqv8a81y1f4gi7p3r5120328mjm0";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
          sha256 = "02045n3in01zk571v1phyhj0b2mvnvx8qnlqvw4j33r7qdd4clzn";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
          sha256 = "1a6yj8v8rwj3igip8xysdifvbd7gkzmwrj9whdx951pdq7add46j";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-0ca8db5a5fc9c8646244e629625ac486fa286bf2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/0ca8db5a5fc9c8646244e629625ac486fa286bf2";
          sha256 = "1csrfa5b7ivza712lfmbywp9jhwf4ls5lc0vn812xljkj7w24kg1";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-c1c2e997aa3146983ed888ad08b15470a2e22ecc";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/c1c2e997aa3146983ed888ad08b15470a2e22ecc";
          sha256 = "0fay9s5cm16gbwr7qjihwrzxn7sikiwba0gvda16xng903argbk0";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
          sha256 = "1ag6ysxffhxyg7g4rj9xjjlwq853r4x92mmin4f09hn5mqn9f0l1";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
          sha256 = "0p5s8rp7mrhw20yz5wx1i4k8ywf0h0ximcqan39n9qnma1dlnbyr";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
          sha256 = "0bvfvb62qbpy2hzxs4bjzb0xhks6h3cp6qx96z4qlyz6wl2fa1w5";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-594fd6462aad8ecee0b45ca5045acea4776667f1";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/jsonlint/zipball/594fd6462aad8ecee0b45ca5045acea4776667f1";
          sha256 = "0i5y3id1sckc41f40i1nxqhfszpan9gps6q6kgv9ag7qi8zqvqi0";
        };
      };
    };
    "seld/phar-utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-phar-utils-ea2f4014f163c1be4c601b9b7bd6af81ba8d701c";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/phar-utils/zipball/ea2f4014f163c1be4c601b9b7bd6af81ba8d701c";
          sha256 = "0gsni1p06ahp1pwpp2bm5b21cpv9k6cfrhlwlrpszpg03cmsbng2";
        };
      };
    };
    "seld/signal-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-signal-handler-f69d119511dc0360440cdbdaa71829c149b7be75";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/signal-handler/zipball/f69d119511dc0360440cdbdaa71829c149b7be75";
          sha256 = "1g8f3myk1ij3zq9mh7wcjkd8xw0lv2p6xqynk1ramz54mcmy4rfw";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-edd36776956f2a6fcf577edb5b05eb0e3bdc52ae";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/edd36776956f2a6fcf577edb5b05eb0e3bdc52ae";
          sha256 = "1idya1y7m51bgk7h3c4s9v02lq2zf35krpy08ypn103x29ghhypa";
        };
      };
    };
    "symfony/options-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-options-resolver-a10f19f5198d589d5c33333cffe98dc9820332dd";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/options-resolver/zipball/a10f19f5198d589d5c33333cffe98dc9820332dd";
          sha256 = "134wdzd40884v48agn3ra02a1qq9kspl8vhx0dw3isa17k2kn6h2";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
          sha256 = "1p0jr92x323pl4frjbhmziyk5g1zig1g30i1v1p0wfli2sq8h5mb";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-707403074c8ea6e2edaf8794b0157a0bfa52157a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/707403074c8ea6e2edaf8794b0157a0bfa52157a";
          sha256 = "05qrjfnnnz402l11wm0ydblrip7hjll12yqxmh2wd02b0s8dj29f";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-fc47f1015ec80927ff64ba9094dfe8b9d48fe9f2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/stopwatch/zipball/fc47f1015ec80927ff64ba9094dfe8b9d48fe9f2";
          sha256 = "0gnpyw9bc4399ycqlqkdsp8nyg63y26629xbp26vh0xdvkfmgwrl";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-34a41e998c2183e22995f158c581e7b5e755ab9e";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/34a41e998c2183e22995f158c581e7b5e755ab9e";
          sha256 = "1za4a017kjb4rw2ydglip4bp5q2y7mfiycj3fvnp145i84jc7n0q";
        };
      };
    };
  };
in
composerEnv.buildPackage {
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
