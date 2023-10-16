#include <gpu/helper.h>

__device__ float dot(GPoint a, GPoint b) {
    float d = a.x*b.x + a.y*b.y + a.z*b.z;

    return d;
}
