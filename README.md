# feedyard/dashboard

The feedyard dashboard repo can be cloned and used to create a standard build and deploy pipeline for a smashing dashboard.  

The feedyard/smashing container has a pre-configured dashboard called 'dashboard'. This image build copies the Smashing dashboard
configuration files in to a new image that is ready for deployment.

A simple way to run the resulting image locally is:
```bash
$ docker run -p 8080:3030 dashboard:latest
```
THe dashboard will now be visibel on localhost:8080  

You can easily create a supprting deployment configuration for use with Swarm, k8, or whatever your chosen orchestrator.

See the [Smashing](https://github.com/Smashing/smashing) README for general usage instructions for the smashing dashbaord.

Update the appropriate smashing asset folders to customize your dashboard   