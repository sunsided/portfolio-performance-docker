# Portfolio Performance

This is a dockerized version of [Portfolio Performance].

You can run it locally by executing `run.sh`, which is essentially a shortcut for

```bash
docker run \
        --rm -it \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v $(pwd):/data \
        portfolio-performance
```


[Portfolio Performance]: http://www.portfolio-performance.info/portfolio/
