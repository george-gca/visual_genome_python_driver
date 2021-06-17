import os
from argparse import ArgumentParser

import visual_genome.local as vg


parser = ArgumentParser()

parser.add_argument(
    "-d",
    "--data_dir",
    required=True,
    help="Main folder containing the VisualGenome data",
)


def main(args):
    print(
        "-- Building local snapshot of VisualGenome in folder: {}".format(args.data_dir)
    )

    # N.B. We assume that we have already downloaded all the required data and stored them in args.data_dir
    # Create per image scene graphs
    # First we create the 'by-id' folder where the data are going to be stored
    by_id_folder = os.path.join(args.data_dir, "by-id")
    if not os.path.exists(by_id_folder):
        os.mkdir(by_id_folder)

    print("-- Storing complete scene graphs")
    vg.save_scene_graphs_by_id(args.data_dir, by_id_folder)


if __name__ == "__main__":
    args = parser.parse_args()
    main(args)
