import json

#specific the path to your JSON configuration file
config_file_path = 'config.json'

#Load JSON configuration file
with open(config_file_path, 'r') as config_file:
    config = json.load(config_file)

#print configuration
ConnectionString = config["connectionString"]

print(ConnectionString)