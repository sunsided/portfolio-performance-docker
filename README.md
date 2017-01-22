# Portfolio Performance 0.26.2

This is a dockerized version of [Portfolio Performance]; it requires an X11 server to run.

You can run it locally by executing `run.sh`, which is essentially a shortcut for

```bash
docker run \
        --rm -it \
	--name portfolio-peformance \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v $(pwd):/data \
        sunside/portfolio-performance
```


[Portfolio Performance]: http://www.portfolio-performance.info/portfolio/
