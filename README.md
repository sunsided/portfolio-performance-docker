# Portfolio Performance 0.48.1

This is a dockerized version of [Portfolio Performance] ([here] on GitHub); it requires an X11 server to run.

You can run it locally by executing `run.sh`, which is essentially a shortcut for

```bash
docker run \
        --rm -it \
        --name portfolio-peformance \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v $(pwd):/data \
        sunside/portfolio-performance:0.48.1
```

To build the image locally, run `build.sh` instead.


[Portfolio Performance]: http://www.portfolio-performance.info/portfolio/
[here]: https://github.com/buchen/portfolio
