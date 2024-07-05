# molecule

## USAGE
```

docker run --rm --privileged \
  -v $PWD:/data \
  -v /var/run/docker.sock:/var/run/docker.sock \
  francois/molecule:latest <molecule step ie: test | create | converge | ... | destroy>

```

Example:
```

docker run --rm --privileged \
  -v $PWD:/data \
  -v /var/run/docker.sock:/var/run/docker.sock \
  francois/molecule:latest test

```
