-- SELECT player info
SELECT a.*
FROM common_player_info a
WHERE rosterstatus = "Active"


-- Game Metrics -- freethrows made, freethrows attempted, ftrate, offensive rebounds, rebounds, assists, steal, blocks, turnovers, personal fouls
SELECT a.season_id, a.game_id, a.game_date,-- home team metrics
       a.team_id_home, a.team_name_home,
       a.ftm_home, a.fta_home, a.ft_pct_home, a.oreb_home, a.reb_home, a.ast_home, a.stl_home, a.blk_home, a.tov_home, a.pf_home,
       a.team_id_away, a.team_name_away, -- away team metrics
       a.ftm_away, a.fta_away, a.ft_pct_away, a.oreb_away, a.reb_away, a.ast_away, a.stl_away, a.blk_away, a.tov_away, a.pf_away,
       a.season_type,
       a.pts_home, a.pts_away, a.plus_minus_home,
       -- table b
       b.largest_lead_home, b.largest_lead_away, b.times_tied, b.lead_changes,
       -- table c
       c.pts_qtr1_home, c.pts_qtr2_home, c.pts_qtr3_home, c.pts_qtr4_home, c.pts_ot1_home, c.pts_ot2_home, c.pts_ot3_home, c.pts_ot4_home, c.pts_ot5_home, c.pts_ot6_home, c.pts_ot7_home, c.pts_ot8_home, c.pts_ot9_home, c.pts_ot10_home,
       c.pts_qtr1_away, c.pts_qtr2_away, c.pts_qtr3_away, c.pts_qtr4_away, c.pts_ot1_away, c.pts_ot2_away, c.pts_ot3_away, c.pts_ot4_away, c.pts_ot5_away, c.pts_ot6_away, c.pts_ot7_away, c.pts_ot8_away, c.pts_ot9_away, c.pts_ot10_away
FROM game a
LEFT JOIN other_stats b
ON a.game_id = b.game_id
LEFT JOIN line_score c
ON a.game_id = c.game_id
WHERE game_date > "2000-01-01 00:00:00";