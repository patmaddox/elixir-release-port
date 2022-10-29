stage:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port stage

package:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port package

clean:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port clean