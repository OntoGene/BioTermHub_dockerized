# OntoGene Bio Term Hub

The Bio Term Hub (BTH) is an aggregator of biomedical terminologies sourced from manually curated databases.


## Docker image

To build the docker image, navigate into this directory and run the following command:

```
$ docker build -t biotermhub .
```

This will create a new Docker image (this process can take some time). To run the image:

```
$ docker run -p 80:80 --name biotermhub_instance biotermhub
```

Note that the parameter `-p external:internal` maps an external port to an internal port in the Docker image. You can supply any other port as the external port.

## Accessing the server

After running the Docker image, you can open your browser and point it to `localhost:80/termhub/www` (or using the external port you supplied when running the image).

## Using the web interface

When you first launch the server, all the resources will show as `Update available.` This is because BTH will need to download a first image of all the available resources. If the server is kept running, however, only resources that have been updated since the last download will need to be re-downloaded.

Select the resources you're interested in, click `update` and `create resource` at the bottom of the page. You can then download the compiled resource.

## License

Licensed under the BSD 2-Clause License, see [LICENSE.md](LICENSE.md).
