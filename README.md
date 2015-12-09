# write-in-the-air
6.829 Final Project

This repository contains all of the training data and
Matlab code that we will use for processing the raw
channel data gathered from the Intel Galileos.

Commands to run for test data:

get_label(generate_aoa('test/test/horizontal/trial 1/0h_0.txt'), generate_aoa('test/test/vertical/trial 10/0v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/0h_0.txt'), generate_aoa('test/test/vertical/trial 20/0v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/0h_0.txt'), generate_aoa('test/test/vertical/trial 30/0v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/1h_1.txt'), generate_aoa('test/test/vertical/trial 11/1v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/1h_1.txt'), generate_aoa('test/test/vertical/trial 21/1v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/1h_1.txt'), generate_aoa('test/test/vertical/trial 31/1v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/2h_2.txt'), generate_aoa('test/test/vertical/trial 12/2v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/2h_2.txt'), generate_aoa('test/test/vertical/trial 22/2v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/2h_2.txt'), generate_aoa('test/test/vertical/trial 32/2v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/3h_3.txt'), generate_aoa('test/test/vertical/trial 13/3v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/3h_3.txt'), generate_aoa('test/test/vertical/trial 23/3v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/3h_3.txt'), generate_aoa('test/test/vertical/trial 33/3v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/4h_4.txt'), generate_aoa('test/test/vertical/trial 14/4v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/4h_4.txt'), generate_aoa('test/test/vertical/trial 24/4v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/4h_4.txt'), generate_aoa('test/test/vertical/trial 34/4v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/5h_5.txt'), generate_aoa('test/test/vertical/trial 15/5v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/5h_5.txt'), generate_aoa('test/test/vertical/trial 25/5v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/5h_5.txt'), generate_aoa('test/test/vertical/trial 35/5v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/6h_6.txt'), generate_aoa('test/test/vertical/trial 16/6v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/6h_6.txt'), generate_aoa('test/test/vertical/trial 26/6v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/6h_6.txt'), generate_aoa('test/test/vertical/trial 36/6v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/7h_7.txt'), generate_aoa('test/test/vertical/trial 17/7v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/7h_7.txt'), generate_aoa('test/test/vertical/trial 27/7v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/7h_7.txt'), generate_aoa('test/test/vertical/trial 37/7v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/8h_8.txt'), generate_aoa('test/test/vertical/trial 18/8v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/8h_8.txt'), generate_aoa('test/test/vertical/trial 28/8v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/8h_8.txt'), generate_aoa('test/test/vertical/trial 38/8v_3.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 1/9h_9.txt'), generate_aoa('test/test/vertical/trial 19/9v_1.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 2/9h_9.txt'), generate_aoa('test/test/vertical/trial 29/9v_2.txt'), Hor, Vert)
get_label(generate_aoa('test/test/horizontal/trial 3/9h_9.txt'), generate_aoa('test/test/vertical/trial 39/9v_3.txt'), Hor, Vert)
