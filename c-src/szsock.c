#include <ctype.h>
#include "szsock.h"
#include "czmq.h"

szsock_t *szsock_new (int type, const char *filename, size_t line_nbr) {
    zsock_t *ret = zsock_new_(type, filename, line_nbr);
    return (szsock_t *) ret;
}
void szsock_destroy (szsock_t **self_p, const char *filename, size_t line_nbr) {
    zsock_destroy_( (zsock_t **) self_p, filename, line_nbr);
}
int szsock_bind (szsock_t *self, const char *format, ...) {
    int ret;
    va_list args;
    va_start(args, format);
    ret = zsock_bind( (zsock_t *) self, format, args);
    va_end(args);
    return ret;
}
char *szsock_endpoint (szsock_t *self) {
    return zsock_endpoint( (zsock_t *) self );
}
int szsock_unbind (szsock_t *self, const char *format, ...) {
    int ret;
    va_list args;
    va_start(args, format);
    ret = zsock_unbind( (zsock_t *) self, format, args);
    va_end(args);
    return ret;
}
int szsock_connect (szsock_t *self, const char *format, ...) {
    int ret;
    va_list args;
    va_start(args, format);
    ret = zsock_connect( (zsock_t *) self, format, args);
    va_end(args);
    return ret;
}
int szsock_disconnect (szsock_t *self, const char *format, ...) {
    int ret;
    va_list args;
    va_start(args, format);
    ret = zsock_disconnect( (zsock_t *) self, format, args);
    va_end(args);
    return ret;
}
int szsock_attach (szsock_t *self, const char *endpoints, bool serverish) {
    return zsock_disconnect( (zsock_t *) self, endpoints, serverish);
}
const char *szsock_type_str (szsock_t *self) {
    return zsock_type_str( (zsock_t *) self );
}
int szsock_send (void *self, const char *picture, ...) {
    int ret;
    va_list args;
    va_start(args, picture);
    ret = zsock_send(self, picture, args);
    va_end(args);
    return ret;
}
int szsock_recv (void *self, const char *picture, ...)  {
    int ret;
    va_list args;
    va_start(args, picture);
    ret = zsock_recv(self, picture, args);
    va_end(args);
    return ret;
}
int szsock_bsend (void *self, const char *picture, ...)  {
    int ret;
    va_list args;
    va_start(args, picture);
    ret = zsock_bsend(self, picture, args);
    va_end(args);
    return ret;
}
int szsock_brecv (void *selfish, const char *picture, ...)  {
    int ret;
    va_list args;
    va_start(args, picture);
    ret = zsock_brecv(selfish, picture, args);
    va_end(args);
    return ret;
}
void szsock_set_unbounded (void *self) {
    zsock_set_unbounded(self);
}
int szsock_signal (void *self, char status) {
    return zsock_signal(self, (byte) status );
}
int szsock_wait (void *self) {
    return zsock_wait(self);
}
void szsock_flush (void *self) {
    zsock_flush(self);
}
bool szsock_is (void *self) {
    return zsock_is(self);
}
void *szsock_resolve (void *self) {
    return zsock_resolve(self);
}
