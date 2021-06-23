# test host output compared to expected -----------------------------------

host_data_2 <- as_tibble(sampledrawn_host) %>% 
  dplyr::select(-geometry) %>% 
  tidyr::separate(Description, c("new_desc", "new_sample"), "_", remove= FALSE, extra = "drop") %>% 
  group_by(new_desc) %>% 
  summarise(
    max_sample = max(as.integer(new_sample) )
  )

write_csv(host_data_2, "outputs/host_samples_check_second_run.csv")




# test settlement output compared to expected -----------------------------

settlement_data_2 <- as_tibble(sampledrawn_settlements) %>% 
  dplyr::select(-geometry) %>% 
  tidyr::separate(Description, c("new_desc", "new_sample"), "_", remove= FALSE, extra = "drop") %>% 
  group_by(new_desc) %>% 
  summarise(
    max_sample = max(as.integer(new_sample) )
  )

write_csv(settlement_data_2, "outputs/settlement_samples_check_second_run.csv")
