'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "ebf0b735081decfa4c7689f6bdb398be",
"assets/assets/font/Roboto-Medium.ttf": "68ea4734cf86bd544650aee05137d7bb",
"assets/assets/font/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/assets/img/anx.png": "aae3e55c1cf40361ac67fc5cd4c0f616",
"assets/assets/img/bg.png": "b9aadf3dd0732e64ecf3e6c8cfe68430",
"assets/assets/img/dep.png": "0500fd19393f6777b1baddc53375f985",
"assets/assets/img/dp1.png": "925e4ad9ace8aec2b8949c099232986e",
"assets/assets/img/emo1.png": "85b92e103909dae91855539c19e0a675",
"assets/assets/img/emo2.png": "912b121c94c74c2980f96a0b68db1fa8",
"assets/assets/img/emo3.png": "4e4390ce698576b85503bf78c6081a1b",
"assets/assets/img/emo4.png": "3a4eb6e4c270394ac2985e64acb576d6",
"assets/assets/img/heart.png": "de99d8e745a78ff9d341fac1a3e848ea",
"assets/assets/img/l1.png": "295161fdbf883b626043dba6b919a649",
"assets/assets/img/l1.webp": "b45fb086cd6003c5305598731afc10a3",
"assets/assets/img/m1.webp": "71c2a2f271406c34ab3b3fed15727116",
"assets/assets/img/m2.png": "17258638f527146568f78ff6697d6b0a",
"assets/assets/img/m3.webp": "03a5e7ece032443c675727bc0c79c724",
"assets/assets/img/p1.png": "a9fa6afe117217e81c9ac04fe6fbd624",
"assets/assets/img/p1.webp": "37cb0d82ab24c20f2f3607721252a7bc",
"assets/assets/img/start.webp": "b4cfef5f8c26561cb4cd9cca53a5007c",
"assets/assets/img/yoga.png": "46859dc639ae3f7be38dd1eff5231152",
"assets/FontManifest.json": "22071f56dc967edbd9cdc6957e566bed",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "363d01616c2128664cc28612c75d3175",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.ico": "1cec6e1761b522973972a433d81fe2d1",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"hearts.svg": "fedf10e2d1ef602711e90d438b31339a",
"icons/Icon-192.png": "bb92d2817ebb573def4f68f33762d22a",
"icons/Icon-512.png": "15f10893ab9bbba9b0cd02842ef69210",
"icons/Icon-maskable-192.png": "3832607aa5419feb7a66309cc07576b1",
"icons/Icon-maskable-512.png": "c73811cbba7929752012a47b416f4ae6",
"index.html": "fc9aa7301c3aed63ce04de27165c5f8d",
"/": "fc9aa7301c3aed63ce04de27165c5f8d",
"main.dart.js": "59f84fd1951e677859b84948b871cf93",
"manifest.json": "6ef9a3852d99fa3eb88ec0332fbd03c2",
"version.json": "48bb172e37ad20e5d79657494e498134"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
