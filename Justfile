stage:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd)/my_elixir_app USE_GITHUB=no DISTFILES="" -C port stage

package:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd)/my_elixir_app USE_GITHUB=no DISTFILES="" -C port package

clean:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd)/my_elixir_app USE_GITHUB=no DISTFILES="" -C port clean