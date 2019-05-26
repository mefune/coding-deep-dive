-- B"H --

``` SQL

select   *,
         -- ------------------------------------
         to_hex(
             sha512(
                 -- ------------------------------------
                 concat(
                     -- ------------------------------------
                     coalesce(account,                        '<field account>'),
                     coalesce(campaign,                       '<field campaign>'),
                     coalesce(search_keyword,                 '<field search_keyword>'),
                     coalesce(headline,                       '<field headline>'),
                     coalesce(headline_1,                     '<field headline_1>'),
                     coalesce(headline_2,                     '<field headline_2>'),
                     coalesce(expanded_text_ad_headline_3,    '<field expanded_text_ad_headline_3>'),
                     coalesce(short_headline,                 '<field short_headline>'),
                     coalesce(long_headline,                  '<field long_headline>'),
                     coalesce(description,                    '<field description>'),
                     coalesce(expanded_text_ad_description_2, '<field expanded_text_ad_description_2>'),
                     coalesce(description_line_1,             '<field description_line_1>'),
                     coalesce(description_line_2,             '<field description_line_2>'),
                     coalesce(display_url,                    '<field display_url>'),
                     coalesce(ad,                             '<field ad>'),
                     coalesce(path_1,                         '<field path_1>'),
                     coalesce(path_2,                         '<field path_2>'),
                     coalesce(business_name,                  '<field business_name>'),
                     coalesce(ad_group,                       '<field ad_group>'),
                     coalesce(search_term,	                   '<field search_term>'),
                     coalesce(device,                         '<field device>'),
                     coalesce(network_with_search_partners,   '<field network_with_search_partners>'),
                     coalesce(time_zone,                      '<field time_zone>'),
                     coalesce(currency,                       '<field currency>'),
                     coalesce(labels_on_account,              '<field labels_on_account>'),
                     coalesce(ad_state,                       '<field ad_state>'),
                     coalesce(ad_status,                      '<field ad_status>'),
                     coalesce(ad_final_url,                   '<field ad_final_url>'),
                     coalesce(quality_score,                  '<field quality_score>'),
                     coalesce(month,                          '<field month>'),
                     coalesce(day,                            '<field day>'),
                     coalesce(day_of_week,                    '<field day_of_week>'),
                     coalesce(year,                           '<field year>'),
                     coalesce(ad_relevance,                   '<field ad_relevance>'),
                     coalesce(landing_page_experience,        '<field landing_page_experience>'),
                     coalesce(expected_clickthrough_rate,     '<field expected_clickthrough_rate>'),
                     coalesce(search_term_match_type,         '<field search_term_match_type>'),
                     coalesce(search_keyword_status,          '<field search_keyword_status>'),
                     coalesce(clicks,                         '<field clicks>'),
                     coalesce(impressions,                    '<field impressions>'),
                     coalesce(cost,                           '<field cost>'),
                     coalesce(ctr,                            '<field ctr>'),
                     coalesce(avg_cpc,                        '<field avg_cpc>'),
                     coalesce(avg_position,                   '<field avg_position>'),
                     coalesce(conversions,                    '<field conversions>'),
                     coalesce(cost_divided_by_conv,           '<field cost_divided_by_conv>'),
                     coalesce(conv_rate,                      '<field conv_rate>'),
                     coalesce(view_through_conv,              '<field view_through_conv>'),
                     coalesce(all_conv,                       '<field all_conv>'),
                     coalesce(cross_device_conv,              '<field cross_device_conv>'),
                     coalesce(all_conv_rate,                  '<field all_conv_rate>')
         -- ------------------------------------
                 )
             )
         ) hash_sha512

