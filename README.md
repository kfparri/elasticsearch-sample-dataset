# elasticsearch-sample-dataset
The elasticsearch sample datasets scripted to create local development with elasticsearch in docker

## Setting up
1. To setup, you must first have docker installed and running.  Once you have docker running, pull up your terminal and run:
    ```
    docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.3.2
    ```

    You may also run it detached by adding the ```-d``` flag to the above command.

2. Once the container is up and running, you can load the data by running the ```pushData.sh``` script 
    - **Tip** if you pipe the script to an output file, it runs _much_ faster:
    ``` 
    ./pushData.sh > output.out 
    ```
    You can also use the powershell script to upload the data, unless you want to update your powershell restriction policy to unrestricted (which you shouldn't!) simply copy and paste the contents of ```pushData.ps1``` into a powershell window.