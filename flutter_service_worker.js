'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "4ea556f8d67c9374aba7e14bddf5c91f",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"flutter_bootstrap.js": "0c8750ab57590e74b215cf1ffed08614",
"favicon.png": "e3ba0936cce0ed61f1884210da59afbc",
"index.html": "d74e0ce8ef1eeefc1d7cac6c6a3a6cc3",
"/": "d74e0ce8ef1eeefc1d7cac6c6a3a6cc3",
"version.json": "009c9e65172e010890f7f65fde438006",
"icons/Icon-192.png": "45ccc3c17e417eb1ae5cf520c65d3f90",
"icons/Icon-512.png": "8e7d731479c8e7407e6cc7a4038518fb",
"icons/Icon-maskable-512.png": "8e7d731479c8e7407e6cc7a4038518fb",
"icons/Icon-maskable-192.png": "45ccc3c17e417eb1ae5cf520c65d3f90",
"manifest.json": "46645376320977bbd122594a051e8c1c",
"assets/NOTICES": "58c4cd5ec1cd5198762f0a2ec554b291",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "d2685180e36fb37ca58960f200ce6113",
"assets/fonts/MaterialIcons-Regular.otf": "59aa4c7434e2c47fbfe6ef2c65d5fba5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "c764133789783fbf9d3d280a22c6abcb",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "7189e88d71afedf5396c1f9ea275e89f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/AssetManifest.bin": "2636fb8c674f68280308588dfe6b8b60",
"assets/FontManifest.json": "9079600dd6cc1457502d9273b45170aa",
"assets/assets/images/android.svg": "0a04451ad3b5886234ef80268c803e46",
"assets/assets/images/bubble.jpeg": "1c4acb46b4cc321c8ea6a60cd873876d",
"assets/assets/images/svm.jpeg": "ab9547d55fd756fd84377ca20e3825b5",
"assets/assets/images/acoustic.jpeg": "10d9dca7daa0707774d54f0626ac9509",
"assets/assets/images/uct-logo.png": "a441aa4a204a9eea5bd9526aec7903aa",
"assets/assets/images/tsc.jpeg": "3ab41f2851c17b64f95558e9b8f6eea0",
"assets/assets/images/embeddedengineering.svg": "59612873fb5b642ab30befc00a175a59",
"assets/assets/images/circuit.svg": "786c6e4c4585b6868f8e2054a30a8fff",
"assets/assets/images/alumni.png": "f481654b3696a3748634486ebcff47db",
"assets/assets/images/magnet.svg": "9032714e1c1f2bfa0bb4b7f4062b074c",
"assets/assets/images/mri.svg": "20056d010a9c1e6f9084ae0a895ffabb",
"assets/assets/images/javascript.svg": "62e9645bbd2ac03fa81d220ef769dbc8",
"assets/assets/images/helicopter.jpeg": "e071149c6fd9aef235c29b02da0f5024",
"assets/assets/images/ml.svg": "4b6b1adc94b687fe27b852456ca9b8e8",
"assets/assets/images/resistor.svg": "61b4b36efb3f9b7fce4ebb5246d038b1",
"assets/assets/images/dsp.svg": "733ac78fda9049c867567e0ea71a0f19",
"assets/assets/images/python.svg": "85368627053aa7df8e1340c0f29acdb8",
"assets/assets/images/emengineering.svg": "f40b8f19e5c01094f624d289396d8262",
"assets/assets/images/opencl.svg": "9a7684ac8630734c8acc9945a7b1f9bc",
"assets/assets/images/messagepassing.svg": "ce58e7d948ebf3a2edd9862236be3fcc",
"assets/assets/images/physics.svg": "621042741c35baae7d81f365c2cd578a",
"assets/assets/images/operations.svg": "b4ac17534687433703057c049d4ff856",
"assets/assets/images/cpuchip.svg": "9dc19f84575ff7fa3a91716ccd6b4133",
"assets/assets/images/ewb_img.png": "7ab617814924988ae0236a7955b0cf5a",
"assets/assets/images/ukzn-logo.png": "92f53451361c93ca5aa43777b84b1f1c",
"assets/assets/images/ukzn-logo.webp": "a8d93d7031ca776dc26f02aeb1aebd25",
"assets/assets/images/numeric.svg": "dd93b437863a35aeff8d28ff7d16bfba",
"assets/assets/images/compSci.svg": "ea52fa5799c0356375d2c17222bd7264",
"assets/assets/images/nano.svg": "33b0974aa2d4d7f2a3128fcc41a77080",
"assets/assets/images/embedded.svg": "950d9988a299a26539b30d5a09a2fec0",
"assets/assets/images/sql.svg": "8b22fe7d840ee6daf9b4bfaa5e0f107d",
"assets/assets/images/pcb.svg": "3860a8dfb24f77268fdb35b258e567df",
"assets/assets/images/dna.svg": "917008e3f2d0b81ee2e52cb3b4b5ed2d",
"assets/assets/images/opencl.jpeg": "2faa55a7f376ee252d159927555f3ede",
"assets/assets/images/EEE4125C_Group_13_Business_Idea_Selection.pdf": "69ccc9be8c16bf74bdde778e41102ecd",
"assets/assets/images/cpp.svg": "797c85b510ba6603dd20d35aed8d4089",
"assets/assets/images/imagingfpga.jpeg": "6ffe43b8a24d59f171cf0f9e5b3b5157",
"assets/assets/images/elecEng.svg": "165833bc2c1aabe290b97e767dc92b8e",
"assets/assets/images/portfolio_icon.png": "7cb8fcd768c7538bd9c9efd457a0df18",
"assets/assets/images/parallel.svg": "0bcfb8c625e63f83fb626ade1fadf65c",
"assets/assets/images/imaging.svg": "cd51ceefc9c5b10e892f1bc88758f3d0",
"assets/assets/images/flutter.svg": "749737f954a8acaae1b3d389b3fc857f",
"assets/assets/images/quantum.svg": "a1c868918d6d797dd66bc6fc478af148",
"assets/assets/images/appMath.svg": "5e835dabad260a1e45ff8d0554e2407c",
"assets/assets/images/java.svg": "2ae4636a86ab462bdd844e0bfd2835f5",
"assets/assets/images/pitch.png": "a692022b73e5fe6439b93689f2951166",
"assets/assets/images/verilog.svg": "5ad61e42a00e946cd57f6c790a4d10ba",
"assets/assets/images/compEng.svg": "f5617c3ba97dcd2fd9b7e40daeb3c14e",
"assets/assets/images/mpi.svg": "3a24cc59ddc6dfacd03a676b46707dc2",
"assets/assets/images/exclusivebooks_img.png": "cc73b997cbe12969f863513ffcad9265",
"assets/assets/images/scalio.png": "89b5c534a6936a715b490464d0060432",
"assets/assets/images/embeddedc.svg": "3790e9d6d6a52a9174225bae2b601c8c",
"assets/assets/images/dev_img.png": "f84ef3e036cf7da1c86a77e439df389f",
"assets/assets/images/slider.svg": "a4fc3ee8b34de4bfab375880f4297c49",
"assets/assets/images/realanalysis.svg": "5518b2db80d9933acd897ec32330ded2",
"assets/assets/images/design.svg": "7ce8611b9d571e537f0b93f67bf6c735",
"assets/assets/images/control.svg": "eda06029ef11302d6adcd5c336c03d97",
"assets/assets/images/engineering.svg": "88f0f2371ffc98395368968bd7ca11fe",
"assets/assets/images/ruler.svg": "4791ae452335f1ba68a2787f872f3e5f",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/AssetManifest.bin.json": "190bdd3f9203ebda2a031ba79d1e8cd3",
"assets/loading.gif": "602efadf1bcfb2d6b7ac7bf3c91430a2"};
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
