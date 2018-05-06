from __future__ import absolute_import
from __future__ import division
from __future__ import print_function



import tensorflow as tf

from inception import inception_train
from inception.flowers_data import FlowersData

FLAGS = tf.app.flags.FLAGS


def main(_):
	print('Hi')


if __name__ == '__main__':
  tf.app.run()
