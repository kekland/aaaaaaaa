#include <stddef.h>
#include <stdint.h>

#define FLMBGL_EXPORT __attribute__((__visibility__("default"))) __attribute__((__used__))

#ifdef __cplusplus
#define EXTERNC extern "C"
#else
#define EXTERNC
#endif

EXTERNC FLMBGL_EXPORT int test_flmbgl();

// typedefs
typedef void* mbgl_map_options_t;
typedef void* mbgl_tile_server_options_t;
typedef void* mbgl_resource_options_t;
typedef void* mbgl_map_t;
typedef void* flmbgl_map_observer_t;
typedef void* flmbgl_renderer_frontend_t;
typedef void* mbgl_camera_options_t;

// ---------------------------------
// mbgl_map_options_t
// ---------------------------------

EXTERNC FLMBGL_EXPORT mbgl_map_options_t mbgl_map_options_create();
EXTERNC FLMBGL_EXPORT void mbgl_map_options_destroy(mbgl_map_options_t _mapOptions);

enum MbglMapMode {
  MbglMapMode_Continuous = 0,
  MbglMapMode_Static = 1,
  MbglMapMode_Tile = 2,
};
EXTERNC FLMBGL_EXPORT void mbgl_map_options_set_mode(mbgl_map_options_t _mapOptions, enum MbglMapMode mode);
EXTERNC FLMBGL_EXPORT void mbgl_map_options_set_size(mbgl_map_options_t _mapOptions, uint32_t width, uint32_t height);
EXTERNC FLMBGL_EXPORT void mbgl_map_options_set_pixel_ratio(mbgl_map_options_t _mapOptions, float pixelRatio);

// ----------------------------------
// mbgl_tile_server_options_t
// ----------------------------------

EXTERNC FLMBGL_EXPORT mbgl_tile_server_options_t mbgl_tile_server_options_create();
EXTERNC FLMBGL_EXPORT mbgl_tile_server_options_t mbgl_tile_server_options_mapbox_configuration_create();
EXTERNC FLMBGL_EXPORT mbgl_tile_server_options_t mbgl_tile_server_options_maptiler_configuration_create();
EXTERNC FLMBGL_EXPORT mbgl_tile_server_options_t mbgl_tile_server_options_maplibre_configuration_create();
EXTERNC FLMBGL_EXPORT void mbgl_tile_server_options_destroy(mbgl_tile_server_options_t _tileServerOptions);

// ---------------------------------
// mbgl_resource_options_t
// ---------------------------------

EXTERNC FLMBGL_EXPORT mbgl_resource_options_t mbgl_resource_options_create();
EXTERNC FLMBGL_EXPORT void mbgl_resource_options_destroy(mbgl_resource_options_t _resourceOptions);
EXTERNC FLMBGL_EXPORT void mbgl_resource_options_set_api_key(mbgl_resource_options_t _resourceOptions,
                                                             const char* apiKey);
EXTERNC FLMBGL_EXPORT void mbgl_resource_options_set_tile_server_options(mbgl_resource_options_t _resourceOptions,
                                                                         mbgl_tile_server_options_t _tileServerOptions);

// ---------------------------------
// flmbgl_map_observer_t
// ---------------------------------

EXTERNC FLMBGL_EXPORT flmbgl_map_observer_t flmbgl_map_observer_create();
EXTERNC FLMBGL_EXPORT void flmbgl_map_observer_destroy(flmbgl_map_observer_t _mapObserver);

// ---------------------------------
// flmbgl_renderer_frontend_t
// ---------------------------------

EXTERNC FLMBGL_EXPORT flmbgl_renderer_frontend_t flmbgl_renderer_frontend_create();
EXTERNC FLMBGL_EXPORT void flmbgl_renderer_frontend_destroy(flmbgl_renderer_frontend_t _rendererFrontend);
EXTERNC FLMBGL_EXPORT void flmbgl_renderer_frontend_render(flmbgl_renderer_frontend_t _rendererFrontend);
EXTERNC FLMBGL_EXPORT void flmbgl_renderer_frontend_set_size_and_pixel_ratio(
    flmbgl_renderer_frontend_t _rendererFrontend, uint32_t width, uint32_t height, float pixelRatio);
EXTERNC FLMBGL_EXPORT int64_t flmbgl_renderer_frontend_get_texture_id(flmbgl_renderer_frontend_t _rendererFrontend);

// ---------------------------------
// mbgl_camera_options_t
// ---------------------------------

EXTERNC FLMBGL_EXPORT mbgl_camera_options_t mbgl_camera_options_create();
EXTERNC FLMBGL_EXPORT void mbgl_camera_options_destroy(mbgl_camera_options_t _cameraOptions);
EXTERNC FLMBGL_EXPORT void mbgl_camera_options_set_center(mbgl_camera_options_t _cameraOptions, double latitude,
                                                          double longitude);
EXTERNC FLMBGL_EXPORT void mbgl_camera_options_set_zoom(mbgl_camera_options_t _cameraOptions, double zoom);
EXTERNC FLMBGL_EXPORT void mbgl_camera_options_set_bearing(mbgl_camera_options_t _cameraOptions, double bearing);
EXTERNC FLMBGL_EXPORT void mbgl_camera_options_set_pitch(mbgl_camera_options_t _cameraOptions, double pitch);

// ---------------------------------
// mbgl_map_t
// ---------------------------------

EXTERNC FLMBGL_EXPORT mbgl_map_t mbgl_map_create(flmbgl_renderer_frontend_t _rendererFrontend,
                                                 flmbgl_map_observer_t _mapObserver, mbgl_map_options_t _mapOptions,
                                                 mbgl_resource_options_t _resourceOptions);
EXTERNC FLMBGL_EXPORT void mbgl_map_destroy(mbgl_map_t map);
EXTERNC FLMBGL_EXPORT void mbgl_map_style_load_url(mbgl_map_t _map, const char* url);
EXTERNC FLMBGL_EXPORT void mbgl_map_jump_to(mbgl_map_t _map, mbgl_camera_options_t _cameraOptions);
EXTERNC FLMBGL_EXPORT void mbgl_map_set_size(mbgl_map_t _map, uint32_t width, uint32_t height);
