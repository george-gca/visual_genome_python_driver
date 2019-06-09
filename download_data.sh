#!/usr/bin/env bash

# we first CD into the folder that will host all the VisualGenome data
cd $1;

# we start downloading all the required files for Version 1.4
# N.B. we ignore the QA data
wget https://visualgenome.org/static/data/dataset/objects.json.zip;
unzip objects.json.zip;
wget https://visualgenome.org/static/data/dataset/relationships.json.zip;
unzip relationships.json.zip;
wget https://visualgenome.org/static/data/dataset/object_alias.txt;
wget https://visualgenome.org/static/data/dataset/relationship_alias.txt;
wget https://visualgenome.org/static/data/dataset/object_synsets.json.zip;
unzip object_synsets.json.zip;
wget https://visualgenome.org/static/data/dataset/attribute_synsets.json.zip;
unzip attribute_synsets.json.zip;
wget https://visualgenome.org/static/data/dataset/relationship_synsets.json.zip;
unzip relationship_synsets.json.zip;
wget https://visualgenome.org/static/data/dataset/image_data.json.zip;
unzip image_data.json.zip;
wget https://visualgenome.org/static/data/dataset/region_descriptions.json.zip;
unzip region_descriptions.json.zip;
wget https://visualgenome.org/static/data/dataset/attributes.json.zip;
unzip attributes.json.zip;
wget https://visualgenome.org/static/data/dataset/synsets.json.zip;
unzip synsets.json.zip;
wget https://visualgenome.org/static/data/dataset/scene_graphs.json.zip;
unzip scene_graphs.json.zip;

