[h0, t0, mac0] = process_channels('./training_data/horizontal/trial_1/0h_1.txt');
[h1, t1, mac1] = process_channels('./training_data/horizontal/trial_1/1h_1.txt');
[h2, t2, mac2] = process_channels('./training_data/horizontal/trial_1/2h_1.txt');
[h3, t3, mac3] = process_channels('./training_data/horizontal/trial_1/3h_1.txt');
[h4, t4, mac4] = process_channels('./training_data/horizontal/trial_1/4h_1.txt');
[h5, t5, mac5] = process_channels('./training_data/horizontal/trial_1/5h_1.txt');
[h6, t6, mac6] = process_channels('./training_data/horizontal/trial_1/6h_1.txt');
[h7, t7, mac7] = process_channels('./training_data/horizontal/trial_1/7h_1.txt');
[h8, t8, mac8] = process_channels('./training_data/horizontal/trial_1/8h_1.txt');
[h9, t9, mac9] = process_channels('./training_data/horizontal/trial_1/9h_1.txt');

mac_id = ' b8:9:8a:e3:11:49';
[~, ~, aoa0] = filter_mac(h0, t0, mac0, mac_id);
[~, ~, aoa1] = filter_mac(h1, t1, mac1, mac_id);
[~, ~, aoa2] = filter_mac(h2, t2, mac2, mac_id);
[~, ~, aoa3] = filter_mac(h3, t3, mac3, mac_id);
[~, ~, aoa4] = filter_mac(h4, t4, mac4, mac_id);
[~, ~, aoa5] = filter_mac(h5, t5, mac5, mac_id);
[~, ~, aoa6] = filter_mac(h6, t6, mac6, mac_id);
[~, ~, aoa7] = filter_mac(h7, t7, mac7, mac_id);
[~, ~, aoa8] = filter_mac(h8, t8, mac8, mac_id);
[~, ~, aoa9] = filter_mac(h9, t9, mac9, mac_id);

feats0 = generate_features(aoa0);
feats1 = generate_features(aoa1);
feats2 = generate_features(aoa2);
feats3 = generate_features(aoa3);
feats4 = generate_features(aoa4);
feats5 = generate_features(aoa5);
feats6 = generate_features(aoa6);
feats7 = generate_features(aoa7);
feats8 = generate_features(aoa8);
feats9 = generate_features(aoa9);


[h00, t00, mac00] = process_channels('./training_data/horizontal/trial_2/0h_2.txt');
% mac_id = ' b8:9:8a:e3:11:49';
[~, ~, aoa00] = filter_mac(h00, t00, mac00, mac_id);
feats00 = generate_features(aoa00);

p0 = get_corr_coef(feats0, feats00);
p1 = get_corr_coef(feats1, feats00);
p2 = get_corr_coef(feats2, feats00);
p3 = get_corr_coef(feats3, feats00);
p4 = get_corr_coef(feats4, feats00);
p5 = get_corr_coef(feats5, feats00);
p6 = get_corr_coef(feats6, feats00);
p7 = get_corr_coef(feats7, feats00);
p8 = get_corr_coef(feats8, feats00);
p9 = get_corr_coef(feats9, feats00);
