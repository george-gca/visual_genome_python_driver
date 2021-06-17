import visual_genome.local as vg


# Download scene_graphs, image_data, region descriptions and synsets to folder data/img/vg_data/
# create the data by image
# vg.save_scene_graphs_by_id(data_dir='data/img/vg_data', image_data_dir='data/img/vg_data/by-id/')


if __name__ == "__main__":
    scene_graphs = vg.get_scene_graphs(
        [1592510],
        min_rels=0,
        data_dir="data/vg_data/",
        image_data_dir="data/vg_data/by-id/",
    )

    print("# objects: {}".format(len(scene_graphs[0].objects)))

    for o in scene_graphs[0].objects:
        print("Object: {}".format(o))
        print("Attributes: ")
        for att in o.attributes:
            print(att)
