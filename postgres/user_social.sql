--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE user_social(
	id                     		 uuid NOT NULL,
	fb_id                     	 character varying(100),
	fb_token			 character varying(256),
	fb_email			 character varying(256),
	fb_name			 character varying(100),
	tw_id                     	 character varying(100),
	tw_token			 character varying(256),
	tw_displayname	 character varying(100),
	tw_username		 character varying(100),
	g_id                     	 character varying(100),
	g_token			 character varying(256),
	g_email			 character varying(256),
	g_name			 character varying(100),
	  -- Keys
	  CONSTRAINT user_social_pkey PRIMARY KEY (id),
	  CONSTRAINT user_social_user_account_fkey FOREIGN KEY (id)
REFERENCES user_account (id) MATCH SIMPLE
ON DELETE CASCADE ON UPDATE CASCADE );
