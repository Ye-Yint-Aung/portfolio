'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "af880c9cd7f4b8af689e3d42f947d787",
"assets/AssetManifest.bin.json": "b609853022c4bb899ae9d6fb6657c46f",
"assets/AssetManifest.json": "082f7fe1486f60977c2c703fc4883ce0",
"assets/assets/fonts/bodoni.ttf": "a703c4bb765620d8ac5b6a1ed6448aa3",
"assets/assets/fonts/timesnewroman.ttf": "e2f6bf4ef7c6443cbb0ae33f1c1a9ccc",
"assets/assets/images/about_me.jpg": "9952d25cc83fe562822796f07b082bc6",
"assets/assets/images/agnews.jpg": "7f3c468d01286e0ff66314d18724867a",
"assets/assets/images/agnews1.jpg": "b21e881dd19d821a2c5b599e4b2b6858",
"assets/assets/images/agnews2.jpg": "1d36c6d12150c65c1f4dd949008ef4f9",
"assets/assets/images/agnews3.jpg": "7d2927f6fee3571fc0e61acc18237018",
"assets/assets/images/earth1.png": "74e02023c675410fd265e5790dd18b60",
"assets/assets/images/earth1_1.png": "e6c03dd0eebbc0f96942445ea4263f23",
"assets/assets/images/earth2.png": "d1ec339fdaf3951af4aaf019967a2d05",
"assets/assets/images/earth3.png": "23c35bbd4dd5722dd471c19d62056bbf",
"assets/assets/images/earth4.png": "efd4e383fb9d4b321589b837717a872e",
"assets/assets/images/ec1.jpg": "067a2f61e905f7f3e367ebe0a14d26b4",
"assets/assets/images/ec2.jpg": "8ac15afe316796bb92de42315829ed08",
"assets/assets/images/ec3.jpg": "0f8152bae121f485f82455c735710a4d",
"assets/assets/images/ec4.jpg": "7d561e6b69290a121583b3a7d9edd085",
"assets/assets/images/ec5.jpg": "7516fa30c6e3f49d06f5ef2e4a9f1c17",
"assets/assets/images/ec6.jpg": "72fec3cdcabbaf4b33436c0c328614a6",
"assets/assets/images/facebook.png": "8c89ef8ab45d47ae9a954822532889f7",
"assets/assets/images/flutter.png": "86bcb4bc08d1539b4d3b25fb58c9f6c5",
"assets/assets/images/flutter_logo.png": "1c832a91341e177fba99586c58d6e81f",
"assets/assets/images/Frame%252019.png": "77ff9f02dcfdea68e73667ea23ca646c",
"assets/assets/images/Frame%252027.png": "c338cbed6cdbf0173d50776fcaa82ab1",
"assets/assets/images/Frame%252029.png": "0e277eb32869dc19f81e0bfb836602ca",
"assets/assets/images/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/images/gmail.png": "eabc1a70245f1384e30960f25f9b2784",
"assets/assets/images/item1.png": "c1cee21df3fddac98f360611c463ae95",
"assets/assets/images/item2.png": "47442c384a19bd7f32ed47274d7cab33",
"assets/assets/images/item3.png": "dece3ae7847a067525a0af0d56355067",
"assets/assets/images/item4.png": "51b166124673d5ae050f78a9964b6261",
"assets/assets/images/item5.png": "70122749e49c6e864435d9745ed55804",
"assets/assets/images/item6.png": "ce6130225fe6c499f8ad8f1f5bcf251d",
"assets/assets/images/link_in.png": "5e041fcba8a38258be853f2d1f045e54",
"assets/assets/images/Logo1.png": "a3a7e3d1581ac64004fb231efb66301a",
"assets/assets/images/Logo2.png": "81c4aa3ad1195a1925f82f9fce4c1d96",
"assets/assets/images/Logo3.png": "aef19c2870b427b9d65c3d82d19327f6",
"assets/assets/images/Logo4.png": "8d6cd6b1cba1519d763b59be9a4da9d6",
"assets/assets/images/mrtv1.jpg": "950da15176f35f9a798a7a7889dba818",
"assets/assets/images/mrtv2.jpg": "688c7d8f86b6264f927eb38cc0869877",
"assets/assets/images/mrtv3.jpg": "f5d445dd713f35fb8ca83cf1390d92d9",
"assets/assets/images/mrtv4.jpg": "39a0b09cd283db162f956cb350ddbeb2",
"assets/assets/images/mrtv5.jpg": "7626ef472a6325505e51f574de9857c8",
"assets/assets/images/news1.png": "7253dd86a392c2540c9325ee72e61a9a",
"assets/assets/images/news2.png": "426b29913d87e749b99e5efdc23745c9",
"assets/assets/images/news3.png": "b52029202f91e794fb9066f90c1a3b9e",
"assets/assets/images/news4.png": "faf66427ab90fe2cfe38dc63adf294b9",
"assets/assets/images/news5.png": "d72e4f30b2bfef9835c2a5d97e9d65e5",
"assets/assets/images/profile.jpg": "b287473aca49d8c6ef118a107137a1cb",
"assets/assets/images/telegram1.png": "14121db28271528919226694b94390b2",
"assets/assets/images/viber.png": "bf786038637ea137b3398578c70596f7",
"assets/assets/images/working.png": "5bfb28ab533677833d23c65281337830",
"assets/FontManifest.json": "a4e03e20f8a3689cee3ba1a47c440a8e",
"assets/fonts/MaterialIcons-Regular.otf": "53eb6976ce4edd8bcf01d8a86cf2e8bf",
"assets/NOTICES": "d8dc35b6bfdde1dba3039d7e284109df",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "85fbe510c815b009e3d1f871583a7736",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f0cbb932895084cd2131a28e50f80fca",
"/": "f0cbb932895084cd2131a28e50f80fca",
"main.dart.js": "9552c9190ec8dbd292a79a25edb6d912",
"manifest.json": "89acef4440a935caa8e3cf96ebbf1471",
"version.json": "ac05d3d4958936b069137007fdc6f43d"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
