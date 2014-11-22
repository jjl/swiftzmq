#include <stdint.h>
#include <stdbool.h>

typedef struct szsock_t {
    uint32_t tag;               //  Object tag for runtime detection
    void *handle;               //  The libzmq socket handle
    char *endpoint;             //  Last bound endpoint, if any
    char *cache;                //  Holds last zsock_brecv strings
    int type;                   //  Socket type
    size_t cache_size;          //  Current size of cache
} szsock_t;

szsock_t *szsock_new (int type, const char *filename, size_t line_nbr);
void szsock_destroy (szsock_t **self_p, const char *filename, size_t line_nbr);
int szsock_bind (szsock_t *self, const char *format, ...);
char *szsock_endpoint (szsock_t *self);
int szsock_unbind (szsock_t *self, const char *format, ...);
int szsock_connect (szsock_t *self, const char *format, ...);
int szsock_disconnect (szsock_t *self, const char *format, ...);
int szsock_attach (szsock_t *self, const char *endpoints, bool serverish);
const char *szsock_type_str (szsock_t *self);
int szsock_send (void *self, const char *picture, ...);
int szsock_recv (void *self, const char *picture, ...);
int szsock_bsend (void *self, const char *picture, ...);
int szsock_brecv (void *selfish, const char *picture, ...);
void szsock_set_unbounded (void *self);
int szsock_signal (void *self, char status);
int szsock_wait (void *self);
void szsock_flush (void *self);
bool szsock_is (void *self);
void *szsock_resolve (void *self);
