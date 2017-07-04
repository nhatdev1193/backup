--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_21D670_WHITELIST_RULES" OWNER TO sin;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_21D670_WHITELIST_RULES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO sin;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY "AO_21D670_WHITELIST_RULES"."ID";


--
-- Name: AO_21F425_MESSAGE_AO; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_21F425_MESSAGE_AO" (
    "CONTENT" text NOT NULL,
    "ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_21F425_MESSAGE_AO" OWNER TO sin;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_21F425_MESSAGE_MAPPING_AO" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" character varying(255) NOT NULL,
    "USER_HASH" character varying(255) NOT NULL
);


ALTER TABLE "AO_21F425_MESSAGE_MAPPING_AO" OWNER TO sin;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_21F425_MESSAGE_MAPPING_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNER TO sin;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNED BY "AO_21F425_MESSAGE_MAPPING_AO"."ID";


--
-- Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_21F425_USER_PROPERTY_AO" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "USER" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
);


ALTER TABLE "AO_21F425_USER_PROPERTY_AO" OWNER TO sin;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_21F425_USER_PROPERTY_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_21F425_USER_PROPERTY_AO_ID_seq" OWNER TO sin;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_21F425_USER_PROPERTY_AO_ID_seq" OWNED BY "AO_21F425_USER_PROPERTY_AO"."ID";


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE "AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO sin;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO sin;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY "AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_3B1893_LOOP_DETECTION; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_3B1893_LOOP_DETECTION" (
    "COUNTER" integer DEFAULT 0 NOT NULL,
    "EXPIRES_AT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "SENDER_EMAIL" text NOT NULL
);


ALTER TABLE "AO_3B1893_LOOP_DETECTION" OWNER TO sin;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_3B1893_LOOP_DETECTION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_3B1893_LOOP_DETECTION_ID_seq" OWNER TO sin;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_3B1893_LOOP_DETECTION_ID_seq" OWNED BY "AO_3B1893_LOOP_DETECTION"."ID";


--
-- Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_4AEACD_WEBHOOK_DAO" (
    "ENABLED" boolean,
    "ENCODED_EVENTS" text,
    "FILTER" text,
    "ID" integer NOT NULL,
    "JQL" character varying(255),
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255) NOT NULL,
    "NAME" text NOT NULL,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL,
    "PARAMETERS" text,
    "EXCLUDE_ISSUE_DETAILS" boolean
);


ALTER TABLE "AO_4AEACD_WEBHOOK_DAO" OWNER TO sin;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_4AEACD_WEBHOOK_DAO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNER TO sin;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNED BY "AO_4AEACD_WEBHOOK_DAO"."ID";


--
-- Name: AO_550953_SHORTCUT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_550953_SHORTCUT" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PROJECT_ID" bigint,
    "SHORTCUT_URL" text,
    "URL" character varying(255),
    "ICON" character varying(255)
);


ALTER TABLE "AO_550953_SHORTCUT" OWNER TO sin;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_550953_SHORTCUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_550953_SHORTCUT_ID_seq" OWNER TO sin;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_550953_SHORTCUT_ID_seq" OWNED BY "AO_550953_SHORTCUT"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE "AO_563AEE_ACTIVITY_ENTITY" OWNER TO sin;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO sin;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY "AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_563AEE_ACTOR_ENTITY" OWNER TO sin;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_563AEE_ACTOR_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO sin;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY "AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE "AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO sin;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO sin;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY "AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE "AO_563AEE_OBJECT_ENTITY" OWNER TO sin;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_563AEE_OBJECT_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO sin;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY "AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE "AO_563AEE_TARGET_ENTITY" OWNER TO sin;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_563AEE_TARGET_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO sin;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY "AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_575BF5_PROCESSED_COMMITS" (
    "COMMIT_HASH" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "METADATA_HASH" character varying(255)
);


ALTER TABLE "AO_575BF5_PROCESSED_COMMITS" OWNER TO sin;

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_575BF5_PROCESSED_COMMITS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNER TO sin;

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNED BY "AO_575BF5_PROCESSED_COMMITS"."ID";


--
-- Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_575BF5_PROVIDER_ISSUE" (
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "STALE_AFTER" bigint
);


ALTER TABLE "AO_575BF5_PROVIDER_ISSUE" OWNER TO sin;

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_575BF5_PROVIDER_ISSUE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNER TO sin;

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNED BY "AO_575BF5_PROVIDER_ISSUE"."ID";


--
-- Name: AO_587B34_GLANCE_CONFIG; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_587B34_GLANCE_CONFIG" (
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "STATE" character varying(255),
    "SYNC_NEEDED" boolean,
    "APPLICATION_USER_KEY" character varying(255),
    "NAME" character varying(255),
    "JQL" character varying(255)
);


ALTER TABLE "AO_587B34_GLANCE_CONFIG" OWNER TO sin;

--
-- Name: AO_587B34_PROJECT_CONFIG; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_587B34_PROJECT_CONFIG" (
    "CONFIGURATION_GROUP_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "NAME_UNIQUE_CONSTRAINT" character varying(255) NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0 NOT NULL,
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "VALUE" character varying(255)
);


ALTER TABLE "AO_587B34_PROJECT_CONFIG" OWNER TO sin;

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_587B34_PROJECT_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_587B34_PROJECT_CONFIG_ID_seq" OWNER TO sin;

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_587B34_PROJECT_CONFIG_ID_seq" OWNED BY "AO_587B34_PROJECT_CONFIG"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO sin;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO sin;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY "AO_5FB9D7_AOHIP_CHAT_LINK"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
);


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO sin;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO sin;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY "AO_5FB9D7_AOHIP_CHAT_USER"."ID";


--
-- Name: AO_60DB71_AUDITENTRY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_AUDITENTRY" (
    "CATEGORY" character varying(255) NOT NULL,
    "DATA" text NOT NULL,
    "ENTITY_CLASS" character varying(255) NOT NULL,
    "ENTITY_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "TIME" bigint,
    "USER" character varying(255)
);


ALTER TABLE "AO_60DB71_AUDITENTRY" OWNER TO sin;

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_AUDITENTRY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_AUDITENTRY_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_AUDITENTRY_ID_seq" OWNED BY "AO_60DB71_AUDITENTRY"."ID";


--
-- Name: AO_60DB71_BOARDADMINS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_BOARDADMINS" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_BOARDADMINS" OWNER TO sin;

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_BOARDADMINS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_BOARDADMINS_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_BOARDADMINS_ID_seq" OWNED BY "AO_60DB71_BOARDADMINS"."ID";


--
-- Name: AO_60DB71_CARDCOLOR; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_CARDCOLOR" (
    "COLOR" character varying(255),
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "STRATEGY" character varying(255),
    "VAL" character varying(255)
);


ALTER TABLE "AO_60DB71_CARDCOLOR" OWNER TO sin;

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_CARDCOLOR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_CARDCOLOR_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_CARDCOLOR_ID_seq" OWNED BY "AO_60DB71_CARDCOLOR"."ID";


--
-- Name: AO_60DB71_CARDLAYOUT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_CARDLAYOUT" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "MODE_NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_CARDLAYOUT" OWNER TO sin;

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_CARDLAYOUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_CARDLAYOUT_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_CARDLAYOUT_ID_seq" OWNED BY "AO_60DB71_CARDLAYOUT"."ID";


--
-- Name: AO_60DB71_COLUMN; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_COLUMN" (
    "ID" bigint NOT NULL,
    "MAXIM" double precision,
    "MINIM" double precision,
    "NAME" character varying(255),
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_COLUMN" OWNER TO sin;

--
-- Name: AO_60DB71_COLUMNSTATUS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_COLUMNSTATUS" (
    "COLUMN_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "STATUS_ID" character varying(255)
);


ALTER TABLE "AO_60DB71_COLUMNSTATUS" OWNER TO sin;

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_COLUMNSTATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_COLUMNSTATUS_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_COLUMNSTATUS_ID_seq" OWNED BY "AO_60DB71_COLUMNSTATUS"."ID";


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_COLUMN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_COLUMN_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_COLUMN_ID_seq" OWNED BY "AO_60DB71_COLUMN"."ID";


--
-- Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_DETAILVIEWFIELD" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_DETAILVIEWFIELD" OWNER TO sin;

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_DETAILVIEWFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNED BY "AO_60DB71_DETAILVIEWFIELD"."ID";


--
-- Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_ESTIMATESTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_ESTIMATESTATISTIC" OWNER TO sin;

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_ESTIMATESTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNED BY "AO_60DB71_ESTIMATESTATISTIC"."ID";


--
-- Name: AO_60DB71_ISSUERANKING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_ISSUERANKING" (
    "CUSTOM_FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "NEXT_ID" bigint
);


ALTER TABLE "AO_60DB71_ISSUERANKING" OWNER TO sin;

--
-- Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_ISSUERANKINGLOG" (
    "CUSTOM_FIELD_ID" bigint,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint,
    "LOG_TYPE" character varying(255),
    "NEW_NEXT_ID" bigint,
    "NEW_PREVIOUS_ID" bigint,
    "OLD_NEXT_ID" bigint,
    "OLD_PREVIOUS_ID" bigint,
    "SANITY_CHECKED" character varying(255)
);


ALTER TABLE "AO_60DB71_ISSUERANKINGLOG" OWNER TO sin;

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_ISSUERANKINGLOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNED BY "AO_60DB71_ISSUERANKINGLOG"."ID";


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_ISSUERANKING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_ISSUERANKING_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_ISSUERANKING_ID_seq" OWNED BY "AO_60DB71_ISSUERANKING"."ID";


--
-- Name: AO_60DB71_LEXORANK; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_LEXORANK" (
    "BUCKET" integer DEFAULT 0,
    "FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "LOCK_HASH" character varying(255),
    "LOCK_TIME" bigint,
    "RANK" character varying(255) NOT NULL,
    "TYPE" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_60DB71_LEXORANK" OWNER TO sin;

--
-- Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_LEXORANKBALANCER" (
    "DISABLE_RANK_OPERATIONS" boolean NOT NULL,
    "FIELD_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "REBALANCE_TIME" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_LEXORANKBALANCER" OWNER TO sin;

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_LEXORANKBALANCER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_LEXORANKBALANCER_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_LEXORANKBALANCER_ID_seq" OWNED BY "AO_60DB71_LEXORANKBALANCER"."ID";


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_LEXORANK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_LEXORANK_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_LEXORANK_ID_seq" OWNED BY "AO_60DB71_LEXORANK"."ID";


--
-- Name: AO_60DB71_NONWORKINGDAY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_NONWORKINGDAY" (
    "ID" bigint NOT NULL,
    "ISO8601_DATE" character varying(255) NOT NULL,
    "WORKING_DAYS_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_NONWORKINGDAY" OWNER TO sin;

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_NONWORKINGDAY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_NONWORKINGDAY_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_NONWORKINGDAY_ID_seq" OWNED BY "AO_60DB71_NONWORKINGDAY"."ID";


--
-- Name: AO_60DB71_QUICKFILTER; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_QUICKFILTER" (
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_QUICKFILTER" OWNER TO sin;

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_QUICKFILTER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_QUICKFILTER_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_QUICKFILTER_ID_seq" OWNED BY "AO_60DB71_QUICKFILTER"."ID";


--
-- Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_RANKABLEOBJECT" (
    "ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_RANKABLEOBJECT" OWNER TO sin;

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_RANKABLEOBJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_RANKABLEOBJECT_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_RANKABLEOBJECT_ID_seq" OWNED BY "AO_60DB71_RANKABLEOBJECT"."ID";


--
-- Name: AO_60DB71_RAPIDVIEW; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_RAPIDVIEW" (
    "CARD_COLOR_STRATEGY" character varying(255),
    "ID" bigint NOT NULL,
    "KAN_PLAN_ENABLED" boolean,
    "NAME" character varying(255) NOT NULL,
    "OWNER_USER_NAME" character varying(255) NOT NULL,
    "SAVED_FILTER_ID" bigint NOT NULL,
    "SHOW_DAYS_IN_COLUMN" boolean,
    "SPRINTS_ENABLED" boolean,
    "SWIMLANE_STRATEGY" character varying(255)
);


ALTER TABLE "AO_60DB71_RAPIDVIEW" OWNER TO sin;

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_RAPIDVIEW_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_RAPIDVIEW_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_RAPIDVIEW_ID_seq" OWNED BY "AO_60DB71_RAPIDVIEW"."ID";


--
-- Name: AO_60DB71_SPRINT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_SPRINT" (
    "CLOSED" boolean NOT NULL,
    "COMPLETE_DATE" bigint,
    "END_DATE" bigint,
    "GOAL" text,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint,
    "SEQUENCE" bigint,
    "STARTED" boolean,
    "START_DATE" bigint
);


ALTER TABLE "AO_60DB71_SPRINT" OWNER TO sin;

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_SPRINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_SPRINT_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_SPRINT_ID_seq" OWNED BY "AO_60DB71_SPRINT"."ID";


--
-- Name: AO_60DB71_STATSFIELD; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_STATSFIELD" (
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_STATSFIELD" OWNER TO sin;

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_STATSFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_STATSFIELD_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_STATSFIELD_ID_seq" OWNED BY "AO_60DB71_STATSFIELD"."ID";


--
-- Name: AO_60DB71_SUBQUERY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_SUBQUERY" (
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint,
    "SECTION" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_SUBQUERY" OWNER TO sin;

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_SUBQUERY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_SUBQUERY_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_SUBQUERY_ID_seq" OWNED BY "AO_60DB71_SUBQUERY"."ID";


--
-- Name: AO_60DB71_SWIMLANE; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_SWIMLANE" (
    "DEFAULT_LANE" boolean NOT NULL,
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_SWIMLANE" OWNER TO sin;

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_SWIMLANE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_SWIMLANE_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_SWIMLANE_ID_seq" OWNED BY "AO_60DB71_SWIMLANE"."ID";


--
-- Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_TRACKINGSTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_TRACKINGSTATISTIC" OWNER TO sin;

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_TRACKINGSTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNED BY "AO_60DB71_TRACKINGSTATISTIC"."ID";


--
-- Name: AO_60DB71_VERSION; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_VERSION" (
    "ID" bigint NOT NULL,
    "START_DATE" bigint,
    "VERSION_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_VERSION" OWNER TO sin;

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_VERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_VERSION_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_VERSION_ID_seq" OWNED BY "AO_60DB71_VERSION"."ID";


--
-- Name: AO_60DB71_WORKINGDAYS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_60DB71_WORKINGDAYS" (
    "FRIDAY" boolean NOT NULL,
    "ID" bigint NOT NULL,
    "MONDAY" boolean NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "SATURDAY" boolean NOT NULL,
    "SUNDAY" boolean NOT NULL,
    "THURSDAY" boolean NOT NULL,
    "TIMEZONE" character varying(255) NOT NULL,
    "TUESDAY" boolean NOT NULL,
    "WEDNESDAY" boolean NOT NULL
);


ALTER TABLE "AO_60DB71_WORKINGDAYS" OWNER TO sin;

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_60DB71_WORKINGDAYS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_WORKINGDAYS_ID_seq" OWNER TO sin;

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_60DB71_WORKINGDAYS_ID_seq" OWNED BY "AO_60DB71_WORKINGDAYS"."ID";


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_88263F_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" character varying(255),
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" character varying(450),
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_HEALTH_CHECK_STATUS" OWNER TO sin;

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNER TO sin;

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNED BY "AO_88263F_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_88263F_PROPERTIES; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_88263F_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_PROPERTIES" OWNER TO sin;

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_88263F_PROPERTIES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_PROPERTIES_ID_seq" OWNER TO sin;

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_88263F_PROPERTIES_ID_seq" OWNED BY "AO_88263F_PROPERTIES"."ID";


--
-- Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_88263F_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_READ_NOTIFICATIONS" OWNER TO sin;

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_88263F_READ_NOTIFICATIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNER TO sin;

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNED BY "AO_88263F_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_97EDAB_USERINVITATION; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_97EDAB_USERINVITATION" (
    "APPLICATION_KEYS" character varying(255),
    "EMAIL_ADDRESS" character varying(255),
    "EXPIRY" timestamp without time zone,
    "ID" integer NOT NULL,
    "REDEEMED" boolean,
    "SENDER_USERNAME" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE "AO_97EDAB_USERINVITATION" OWNER TO sin;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_97EDAB_USERINVITATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_97EDAB_USERINVITATION_ID_seq" OWNER TO sin;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_97EDAB_USERINVITATION_ID_seq" OWNED BY "AO_97EDAB_USERINVITATION"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO sin;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO sin;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY "AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_A44657_HEALTH_CHECK_ENTITY" (
    "ID" integer NOT NULL
);


ALTER TABLE "AO_A44657_HEALTH_CHECK_ENTITY" OWNER TO sin;

--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_A44657_HEALTH_CHECK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_A44657_HEALTH_CHECK_ENTITY_ID_seq" OWNER TO sin;

--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_A44657_HEALTH_CHECK_ENTITY_ID_seq" OWNED BY "AO_A44657_HEALTH_CHECK_ENTITY"."ID";


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_B9A0F0_APPLIED_TEMPLATE" (
    "ID" integer NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0,
    "PROJECT_TEMPLATE_MODULE_KEY" character varying(255),
    "PROJECT_TEMPLATE_WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE "AO_B9A0F0_APPLIED_TEMPLATE" OWNER TO sin;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNER TO sin;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNED BY "AO_B9A0F0_APPLIED_TEMPLATE"."ID";


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_CFF990_AOTRANSITION_FAILURE" (
    "ERROR_MESSAGES" text,
    "FAILURE_TIME" timestamp without time zone,
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0,
    "LOG_REFERRAL_HASH" character varying(255),
    "TRANSITION_ID" bigint DEFAULT 0,
    "TRIGGER_ID" bigint DEFAULT 0,
    "USER_KEY" character varying(255),
    "WORKFLOW_ID" character varying(255)
);


ALTER TABLE "AO_CFF990_AOTRANSITION_FAILURE" OWNER TO sin;

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_CFF990_AOTRANSITION_FAILURE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNER TO sin;

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNED BY "AO_CFF990_AOTRANSITION_FAILURE"."ID";


--
-- Name: AO_E8B6CC_BRANCH; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_BRANCH" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_BRANCH" OWNER TO sin;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_BRANCH_HEAD_MAPPING" (
    "BRANCH_NAME" character varying(255),
    "HEAD" character varying(255),
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_BRANCH_HEAD_MAPPING" OWNER TO sin;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_BRANCH_HEAD_MAPPING"."ID";


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_BRANCH_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_BRANCH_ID_seq" OWNED BY "AO_E8B6CC_BRANCH"."ID";


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_CHANGESET_MAPPING" (
    "AUTHOR" character varying(255),
    "AUTHOR_EMAIL" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "FILE_COUNT" integer DEFAULT 0,
    "FILE_DETAILS_JSON" text,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "PROJECT_KEY" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "SMARTCOMMIT_AVAILABLE" boolean,
    "VERSION" integer
);


ALTER TABLE "AO_E8B6CC_CHANGESET_MAPPING" OWNER TO sin;

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_CHANGESET_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_CHANGESET_MAPPING"."ID";


--
-- Name: AO_E8B6CC_COMMIT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_COMMIT" (
    "AUTHOR" character varying(255),
    "AUTHOR_AVATAR_URL" character varying(255),
    "DATE" timestamp without time zone NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "MERGE" boolean,
    "MESSAGE" text,
    "NODE" character varying(255),
    "RAW_AUTHOR" character varying(255)
);


ALTER TABLE "AO_E8B6CC_COMMIT" OWNER TO sin;

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_COMMIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_COMMIT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_COMMIT_ID_seq" OWNED BY "AO_E8B6CC_COMMIT"."ID";


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_GIT_HUB_EVENT" (
    "CREATED_AT" timestamp without time zone NOT NULL,
    "GIT_HUB_ID" character varying(255) DEFAULT '0'::character varying NOT NULL,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer NOT NULL,
    "SAVE_POINT" boolean
);


ALTER TABLE "AO_E8B6CC_GIT_HUB_EVENT" OWNER TO sin;

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_GIT_HUB_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNED BY "AO_E8B6CC_GIT_HUB_EVENT"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_ISSUE_MAPPING" (
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "NODE" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_ISSUE_MAPPING_V2" (
    "AUTHOR" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "VERSION" integer
);


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING_V2" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_ISSUE_TO_BRANCH" (
    "BRANCH_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ISSUE_TO_BRANCH" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_TO_BRANCH"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_ISSUE_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ISSUE_TO_CHANGESET" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_MESSAGE; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_MESSAGE" (
    "ADDRESS" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "PAYLOAD" text NOT NULL,
    "PAYLOAD_TYPE" character varying(255) NOT NULL,
    "PRIORITY" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_E8B6CC_MESSAGE" OWNER TO sin;

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_MESSAGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_MESSAGE_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_MESSAGE_ID_seq" OWNED BY "AO_E8B6CC_MESSAGE"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_MESSAGE_QUEUE_ITEM" (
    "ID" integer NOT NULL,
    "LAST_FAILED" timestamp without time zone,
    "MESSAGE_ID" integer NOT NULL,
    "QUEUE" character varying(255) NOT NULL,
    "RETRIES_COUNT" integer DEFAULT 0 NOT NULL,
    "STATE" character varying(255) NOT NULL,
    "STATE_INFO" character varying(255)
);


ALTER TABLE "AO_E8B6CC_MESSAGE_QUEUE_ITEM" OWNER TO sin;

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNED BY "AO_E8B6CC_MESSAGE_QUEUE_ITEM"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_MESSAGE_TAG" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" integer,
    "TAG" character varying(255)
);


ALTER TABLE "AO_E8B6CC_MESSAGE_TAG" OWNER TO sin;

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_MESSAGE_TAG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNED BY "AO_E8B6CC_MESSAGE_TAG"."ID";


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_ORGANIZATION_MAPPING" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "APPROVAL_STATE" character varying(255),
    "AUTOLINK_NEW_REPOS" boolean,
    "DEFAULT_GROUPS_SLUGS" character varying(255),
    "DVCS_TYPE" character varying(255),
    "HOST_URL" character varying(255),
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "OAUTH_KEY" character varying(255),
    "OAUTH_SECRET" character varying(255),
    "PRINCIPAL_ID" character varying(255),
    "SMARTCOMMITS_FOR_NEW_REPOS" boolean
);


ALTER TABLE "AO_E8B6CC_ORGANIZATION_MAPPING" OWNER TO sin;

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_ORGANIZATION_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_ORG_TO_PROJECT" (
    "ID" integer NOT NULL,
    "ORGANIZATION_ID" integer,
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ORG_TO_PROJECT" OWNER TO sin;

--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_ORG_TO_PROJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ORG_TO_PROJECT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_ORG_TO_PROJECT_ID_seq" OWNED BY "AO_E8B6CC_ORG_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_PROJECT_MAPPING" (
    "ID" integer NOT NULL,
    "PASSWORD" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING" OWNER TO sin;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_PROJECT_MAPPING"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_PROJECT_MAPPING_V2" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "ID" integer NOT NULL,
    "LAST_COMMIT_DATE" timestamp without time zone,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_NAME" character varying(255),
    "REPOSITORY_TYPE" character varying(255),
    "REPOSITORY_URL" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING_V2" OWNER TO sin;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNED BY "AO_E8B6CC_PROJECT_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_PR_ISSUE_KEY" (
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PULL_REQUEST_ID" integer DEFAULT 0
);


ALTER TABLE "AO_E8B6CC_PR_ISSUE_KEY" OWNER TO sin;

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_PR_ISSUE_KEY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNED BY "AO_E8B6CC_PR_ISSUE_KEY"."ID";


--
-- Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_PR_PARTICIPANT" (
    "APPROVED" boolean,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "PULL_REQUEST_ID" integer,
    "ROLE" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PR_PARTICIPANT" OWNER TO sin;

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_PR_PARTICIPANT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNED BY "AO_E8B6CC_PR_PARTICIPANT"."ID";


--
-- Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_PR_TO_COMMIT" (
    "COMMIT_ID" integer NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "REQUEST_ID" integer NOT NULL
);


ALTER TABLE "AO_E8B6CC_PR_TO_COMMIT" OWNER TO sin;

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_PR_TO_COMMIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNED BY "AO_E8B6CC_PR_TO_COMMIT"."ID";


--
-- Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_PULL_REQUEST" (
    "AUTHOR" character varying(255),
    "COMMENT_COUNT" integer DEFAULT 0,
    "CREATED_ON" timestamp without time zone,
    "DESTINATION_BRANCH" character varying(255),
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "EXECUTED_BY" character varying(255),
    "ID" integer NOT NULL,
    "LAST_STATUS" character varying(255),
    "NAME" character varying(255),
    "REMOTE_ID" bigint,
    "SOURCE_BRANCH" character varying(255),
    "SOURCE_REPO" character varying(255),
    "TO_REPOSITORY_ID" integer DEFAULT 0,
    "UPDATED_ON" timestamp without time zone,
    "URL" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PULL_REQUEST" OWNER TO sin;

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_PULL_REQUEST_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PULL_REQUEST_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_PULL_REQUEST_ID_seq" OWNED BY "AO_E8B6CC_PULL_REQUEST"."ID";


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_REPOSITORY_MAPPING" (
    "ACTIVITY_LAST_SYNC" timestamp without time zone,
    "DELETED" boolean,
    "FORK" boolean,
    "FORK_OF_NAME" character varying(255),
    "FORK_OF_OWNER" character varying(255),
    "FORK_OF_SLUG" character varying(255),
    "ID" integer NOT NULL,
    "LAST_CHANGESET_NODE" character varying(255),
    "LAST_COMMIT_DATE" timestamp without time zone,
    "LINKED" boolean,
    "LOGO" text,
    "NAME" character varying(255),
    "ORGANIZATION_ID" integer DEFAULT 0,
    "SLUG" character varying(255),
    "SMARTCOMMITS_ENABLED" boolean,
    "UPDATE_LINK_AUTHORISED" boolean
);


ALTER TABLE "AO_E8B6CC_REPOSITORY_MAPPING" OWNER TO sin;

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_REPOSITORY_MAPPING"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_REPO_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_REPO_TO_CHANGESET" OWNER TO sin;

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNED BY "AO_E8B6CC_REPO_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_REPO_TO_PROJECT" (
    "ID" integer NOT NULL,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_REPO_TO_PROJECT" OWNER TO sin;

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_REPO_TO_PROJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNED BY "AO_E8B6CC_REPO_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_SYNC_AUDIT_LOG" (
    "END_DATE" timestamp without time zone,
    "EXC_TRACE" text,
    "FIRST_REQUEST_DATE" timestamp without time zone,
    "FLIGHT_TIME_MS" integer DEFAULT 0,
    "ID" integer NOT NULL,
    "NUM_REQUESTS" integer DEFAULT 0,
    "REPO_ID" integer DEFAULT 0,
    "START_DATE" timestamp without time zone,
    "SYNC_STATUS" character varying(255),
    "SYNC_TYPE" character varying(255),
    "TOTAL_ERRORS" integer DEFAULT 0
);


ALTER TABLE "AO_E8B6CC_SYNC_AUDIT_LOG" OWNER TO sin;

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNED BY "AO_E8B6CC_SYNC_AUDIT_LOG"."ID";


--
-- Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_E8B6CC_SYNC_EVENT" (
    "EVENT_CLASS" text NOT NULL,
    "EVENT_DATE" timestamp without time zone NOT NULL,
    "EVENT_JSON" text NOT NULL,
    "ID" integer NOT NULL,
    "REPO_ID" integer DEFAULT 0 NOT NULL,
    "SCHEDULED_SYNC" boolean
);


ALTER TABLE "AO_E8B6CC_SYNC_EVENT" OWNER TO sin;

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_E8B6CC_SYNC_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_SYNC_EVENT_ID_seq" OWNER TO sin;

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_E8B6CC_SYNC_EVENT_ID_seq" OWNED BY "AO_E8B6CC_SYNC_EVENT"."ID";


--
-- Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE "AO_ED669C_SEEN_ASSERTIONS" (
    "ASSERTION_ID" character varying(255) NOT NULL,
    "EXPIRY_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE "AO_ED669C_SEEN_ASSERTIONS" OWNER TO sin;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: sin
--

CREATE SEQUENCE "AO_ED669C_SEEN_ASSERTIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNER TO sin;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sin
--

ALTER SEQUENCE "AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNED BY "AO_ED669C_SEEN_ASSERTIONS"."ID";


--
-- Name: app_user; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE app_user (
    id numeric(18,0) NOT NULL,
    user_key character varying(255),
    lower_user_name character varying(255)
);


ALTER TABLE app_user OWNER TO sin;

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE audit_changed_value (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    name character varying(255),
    delta_from text,
    delta_to text
);


ALTER TABLE audit_changed_value OWNER TO sin;

--
-- Name: audit_item; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE audit_item (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255)
);


ALTER TABLE audit_item OWNER TO sin;

--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE audit_log (
    id numeric(18,0) NOT NULL,
    remote_address character varying(60),
    created timestamp with time zone,
    author_key character varying(255),
    summary character varying(255),
    category character varying(255),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255),
    author_type numeric(9,0),
    event_source_name character varying(255),
    description character varying(255),
    long_description text,
    search_field text
);


ALTER TABLE audit_log OWNER TO sin;

--
-- Name: avatar; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE avatar (
    id numeric(18,0) NOT NULL,
    filename character varying(255),
    contenttype character varying(255),
    avatartype character varying(60),
    owner character varying(255),
    systemavatar numeric(9,0)
);


ALTER TABLE avatar OWNER TO sin;

--
-- Name: board; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE board (
    id numeric(18,0) NOT NULL,
    jql text
);


ALTER TABLE board OWNER TO sin;

--
-- Name: boardproject; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE boardproject (
    board_id numeric(18,0) NOT NULL,
    project_id numeric(18,0) NOT NULL
);


ALTER TABLE boardproject OWNER TO sin;

--
-- Name: changegroup; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE changegroup (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    created timestamp with time zone
);


ALTER TABLE changegroup OWNER TO sin;

--
-- Name: changeitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE changeitem (
    id numeric(18,0) NOT NULL,
    groupid numeric(18,0),
    fieldtype character varying(255),
    field character varying(255),
    oldvalue text,
    oldstring text,
    newvalue text,
    newstring text
);


ALTER TABLE changeitem OWNER TO sin;

--
-- Name: clusteredjob; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE clusteredjob (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    job_runner_key character varying(255),
    sched_type character(1),
    interval_millis numeric(18,0),
    first_run numeric(18,0),
    cron_expression character varying(255),
    time_zone character varying(60),
    next_run numeric(18,0),
    version numeric(18,0),
    parameters bytea
);


ALTER TABLE clusteredjob OWNER TO sin;

--
-- Name: clusterlockstatus; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE clusterlockstatus (
    id numeric(18,0) NOT NULL,
    lock_name character varying(255),
    locked_by_node character varying(60),
    update_time numeric(18,0)
);


ALTER TABLE clusterlockstatus OWNER TO sin;

--
-- Name: clustermessage; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE clustermessage (
    id numeric(18,0) NOT NULL,
    source_node character varying(60),
    destination_node character varying(60),
    claimed_by_node character varying(60),
    message character varying(255),
    message_time timestamp with time zone
);


ALTER TABLE clustermessage OWNER TO sin;

--
-- Name: clusternode; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE clusternode (
    node_id character varying(60) NOT NULL,
    node_state character varying(60),
    "timestamp" numeric(18,0),
    ip character varying(60),
    cache_listener_port numeric(18,0),
    node_build_number numeric(18,0),
    node_version character varying(60)
);


ALTER TABLE clusternode OWNER TO sin;

--
-- Name: clusternodeheartbeat; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE clusternodeheartbeat (
    node_id character varying(60) NOT NULL,
    heartbeat_time numeric(18,0),
    database_time numeric(18,0)
);


ALTER TABLE clusternodeheartbeat OWNER TO sin;

--
-- Name: clusterupgradestate; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE clusterupgradestate (
    id numeric(18,0) NOT NULL,
    database_time numeric(18,0),
    cluster_build_number numeric(18,0),
    cluster_version character varying(60),
    state character varying(60),
    order_number numeric(18,0)
);


ALTER TABLE clusterupgradestate OWNER TO sin;

--
-- Name: columnlayout; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE columnlayout (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    searchrequest numeric(18,0)
);


ALTER TABLE columnlayout OWNER TO sin;

--
-- Name: columnlayoutitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE columnlayoutitem (
    id numeric(18,0) NOT NULL,
    columnlayout numeric(18,0),
    fieldidentifier character varying(255),
    horizontalposition numeric(18,0)
);


ALTER TABLE columnlayoutitem OWNER TO sin;

--
-- Name: component; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE component (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    cname character varying(255),
    description text,
    url character varying(255),
    lead character varying(255),
    assigneetype numeric(18,0)
);


ALTER TABLE component OWNER TO sin;

--
-- Name: configurationcontext; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE configurationcontext (
    id numeric(18,0) NOT NULL,
    projectcategory numeric(18,0),
    project numeric(18,0),
    customfield character varying(255),
    fieldconfigscheme numeric(18,0)
);


ALTER TABLE configurationcontext OWNER TO sin;

--
-- Name: customfield; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE customfield (
    id numeric(18,0) NOT NULL,
    cfkey character varying(255),
    customfieldtypekey character varying(255),
    customfieldsearcherkey character varying(255),
    cfname character varying(255),
    description text,
    defaultvalue character varying(255),
    fieldtype numeric(18,0),
    project numeric(18,0),
    issuetype character varying(255)
);


ALTER TABLE customfield OWNER TO sin;

--
-- Name: customfieldoption; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE customfieldoption (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    parentoptionid numeric(18,0),
    sequence numeric(18,0),
    customvalue character varying(255),
    optiontype character varying(60),
    disabled character varying(60)
);


ALTER TABLE customfieldoption OWNER TO sin;

--
-- Name: customfieldvalue; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE customfieldvalue (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    customfield numeric(18,0),
    parentkey character varying(255),
    stringvalue character varying(255),
    numbervalue double precision,
    textvalue text,
    datevalue timestamp with time zone,
    valuetype character varying(255)
);


ALTER TABLE customfieldvalue OWNER TO sin;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_application (
    id numeric(18,0) NOT NULL,
    application_name character varying(255),
    lower_application_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    application_type character varying(255),
    credential character varying(255)
);


ALTER TABLE cwd_application OWNER TO sin;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_application_address (
    application_id numeric(18,0) NOT NULL,
    remote_address character varying(255) NOT NULL,
    encoded_address_binary character varying(255),
    remote_address_mask numeric(9,0)
);


ALTER TABLE cwd_application_address OWNER TO sin;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_directory (
    id numeric(18,0) NOT NULL,
    directory_name character varying(255),
    lower_directory_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    impl_class character varying(255),
    lower_impl_class character varying(255),
    directory_type character varying(60),
    directory_position numeric(18,0)
);


ALTER TABLE cwd_directory OWNER TO sin;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_directory_attribute (
    directory_id numeric(18,0) NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255)
);


ALTER TABLE cwd_directory_attribute OWNER TO sin;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_directory_operation (
    directory_id numeric(18,0) NOT NULL,
    operation_type character varying(60) NOT NULL
);


ALTER TABLE cwd_directory_operation OWNER TO sin;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_group (
    id numeric(18,0) NOT NULL,
    group_name character varying(255),
    lower_group_name character varying(255),
    active numeric(9,0),
    local numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    description character varying(255),
    lower_description character varying(255),
    group_type character varying(60),
    directory_id numeric(18,0)
);


ALTER TABLE cwd_group OWNER TO sin;

--
-- Name: cwd_group_attributes; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_group_attributes (
    id numeric(18,0) NOT NULL,
    group_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE cwd_group_attributes OWNER TO sin;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_membership (
    id numeric(18,0) NOT NULL,
    parent_id numeric(18,0),
    child_id numeric(18,0),
    membership_type character varying(60),
    group_type character varying(60),
    parent_name character varying(255),
    lower_parent_name character varying(255),
    child_name character varying(255),
    lower_child_name character varying(255),
    directory_id numeric(18,0)
);


ALTER TABLE cwd_membership OWNER TO sin;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_user (
    id numeric(18,0) NOT NULL,
    directory_id numeric(18,0),
    user_name character varying(255),
    lower_user_name character varying(255),
    active numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    credential character varying(255),
    deleted_externally numeric(9,0),
    external_id character varying(255)
);


ALTER TABLE cwd_user OWNER TO sin;

--
-- Name: cwd_user_attributes; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE cwd_user_attributes (
    id numeric(18,0) NOT NULL,
    user_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE cwd_user_attributes OWNER TO sin;

--
-- Name: deadletter; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE deadletter (
    id numeric(18,0) NOT NULL,
    message_id character varying(255),
    last_seen numeric(18,0),
    mail_server_id numeric(18,0),
    folder_name character varying(255)
);


ALTER TABLE deadletter OWNER TO sin;

--
-- Name: draftworkflowscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE draftworkflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    workflow_scheme_id numeric(18,0),
    last_modified_date timestamp with time zone,
    last_modified_user character varying(255)
);


ALTER TABLE draftworkflowscheme OWNER TO sin;

--
-- Name: draftworkflowschemeentity; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE draftworkflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE draftworkflowschemeentity OWNER TO sin;

--
-- Name: entity_property; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE entity_property (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    json_value text
);


ALTER TABLE entity_property OWNER TO sin;

--
-- Name: entity_property_index_document; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE entity_property_index_document (
    id numeric(18,0) NOT NULL,
    plugin_key character varying(255),
    module_key character varying(255),
    entity_key character varying(255),
    updated timestamp with time zone,
    document text
);


ALTER TABLE entity_property_index_document OWNER TO sin;

--
-- Name: entity_translation; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE entity_translation (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    locale character varying(60),
    trans_name character varying(255),
    trans_desc character varying(255)
);


ALTER TABLE entity_translation OWNER TO sin;

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE external_entities (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    entitytype character varying(255)
);


ALTER TABLE external_entities OWNER TO sin;

--
-- Name: externalgadget; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE externalgadget (
    id numeric(18,0) NOT NULL,
    gadget_xml text
);


ALTER TABLE externalgadget OWNER TO sin;

--
-- Name: favouriteassociations; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE favouriteassociations (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    entitytype character varying(60),
    entityid numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE favouriteassociations OWNER TO sin;

--
-- Name: feature; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE feature (
    id numeric(18,0) NOT NULL,
    feature_name character varying(255),
    feature_type character varying(10),
    user_key character varying(255)
);


ALTER TABLE feature OWNER TO sin;

--
-- Name: fieldconfigscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldconfigscheme (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE fieldconfigscheme OWNER TO sin;

--
-- Name: fieldconfigschemeissuetype; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldconfigschemeissuetype (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    fieldconfigscheme numeric(18,0),
    fieldconfiguration numeric(18,0)
);


ALTER TABLE fieldconfigschemeissuetype OWNER TO sin;

--
-- Name: fieldconfiguration; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldconfiguration (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE fieldconfiguration OWNER TO sin;

--
-- Name: fieldlayout; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldlayout (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    layout_type character varying(255),
    layoutscheme numeric(18,0)
);


ALTER TABLE fieldlayout OWNER TO sin;

--
-- Name: fieldlayoutitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldlayout numeric(18,0),
    fieldidentifier character varying(255),
    description text,
    verticalposition numeric(18,0),
    ishidden character varying(60),
    isrequired character varying(60),
    renderertype character varying(255)
);


ALTER TABLE fieldlayoutitem OWNER TO sin;

--
-- Name: fieldlayoutscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldlayoutscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE fieldlayoutscheme OWNER TO sin;

--
-- Name: fieldlayoutschemeassociation; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldlayoutschemeassociation (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    project numeric(18,0),
    fieldlayoutscheme numeric(18,0)
);


ALTER TABLE fieldlayoutschemeassociation OWNER TO sin;

--
-- Name: fieldlayoutschemeentity; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldlayoutschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    issuetype character varying(255),
    fieldlayout numeric(18,0)
);


ALTER TABLE fieldlayoutschemeentity OWNER TO sin;

--
-- Name: fieldscreen; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldscreen (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE fieldscreen OWNER TO sin;

--
-- Name: fieldscreenlayoutitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldscreenlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldidentifier character varying(255),
    sequence numeric(18,0),
    fieldscreentab numeric(18,0)
);


ALTER TABLE fieldscreenlayoutitem OWNER TO sin;

--
-- Name: fieldscreenscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldscreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE fieldscreenscheme OWNER TO sin;

--
-- Name: fieldscreenschemeitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldscreenschemeitem (
    id numeric(18,0) NOT NULL,
    operation numeric(18,0),
    fieldscreen numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE fieldscreenschemeitem OWNER TO sin;

--
-- Name: fieldscreentab; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fieldscreentab (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fieldscreen numeric(18,0)
);


ALTER TABLE fieldscreentab OWNER TO sin;

--
-- Name: fileattachment; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE fileattachment (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    mimetype character varying(255),
    filename character varying(255),
    created timestamp with time zone,
    filesize numeric(18,0),
    author character varying(255),
    zip numeric(9,0),
    thumbnailable numeric(9,0)
);


ALTER TABLE fileattachment OWNER TO sin;

--
-- Name: filtersubscription; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE filtersubscription (
    id numeric(18,0) NOT NULL,
    filter_i_d numeric(18,0),
    username character varying(60),
    groupname character varying(60),
    last_run timestamp with time zone,
    email_on_empty character varying(10)
);


ALTER TABLE filtersubscription OWNER TO sin;

--
-- Name: gadgetuserpreference; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE gadgetuserpreference (
    id numeric(18,0) NOT NULL,
    portletconfiguration numeric(18,0),
    userprefkey character varying(255),
    userprefvalue text
);


ALTER TABLE gadgetuserpreference OWNER TO sin;

--
-- Name: genericconfiguration; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE genericconfiguration (
    id numeric(18,0) NOT NULL,
    datatype character varying(60),
    datakey character varying(60),
    xmlvalue text
);


ALTER TABLE genericconfiguration OWNER TO sin;

--
-- Name: globalpermissionentry; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE globalpermissionentry (
    id numeric(18,0) NOT NULL,
    permission character varying(255),
    group_id character varying(255)
);


ALTER TABLE globalpermissionentry OWNER TO sin;

--
-- Name: groupbase; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE groupbase (
    id numeric(18,0) NOT NULL,
    groupname character varying(255)
);


ALTER TABLE groupbase OWNER TO sin;

--
-- Name: issue_field_option; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issue_field_option (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    field_key character varying(255),
    option_value character varying(255),
    properties text
);


ALTER TABLE issue_field_option OWNER TO sin;

--
-- Name: issue_field_option_scope; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issue_field_option_scope (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    entity_id character varying(255),
    scope_type character varying(255)
);


ALTER TABLE issue_field_option_scope OWNER TO sin;

--
-- Name: issuelink; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuelink (
    id numeric(18,0) NOT NULL,
    linktype numeric(18,0),
    source numeric(18,0),
    destination numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE issuelink OWNER TO sin;

--
-- Name: issuelinktype; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuelinktype (
    id numeric(18,0) NOT NULL,
    linkname character varying(255),
    inward character varying(255),
    outward character varying(255),
    pstyle character varying(60)
);


ALTER TABLE issuelinktype OWNER TO sin;

--
-- Name: issuesecurityscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuesecurityscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    defaultlevel numeric(18,0)
);


ALTER TABLE issuesecurityscheme OWNER TO sin;

--
-- Name: issuestatus; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuestatus (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    statuscategory numeric(18,0)
);


ALTER TABLE issuestatus OWNER TO sin;

--
-- Name: issuetype; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuetype (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    pstyle character varying(60),
    description text,
    iconurl character varying(255),
    avatar numeric(18,0)
);


ALTER TABLE issuetype OWNER TO sin;

--
-- Name: issuetypescreenscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuetypescreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE issuetypescreenscheme OWNER TO sin;

--
-- Name: issuetypescreenschemeentity; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE issuetypescreenschemeentity (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    scheme numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE issuetypescreenschemeentity OWNER TO sin;

--
-- Name: jiraaction; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiraaction (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    actiontype character varying(255),
    actionlevel character varying(255),
    rolelevel numeric(18,0),
    actionbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    actionnum numeric(18,0)
);


ALTER TABLE jiraaction OWNER TO sin;

--
-- Name: jiradraftworkflows; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiradraftworkflows (
    id numeric(18,0) NOT NULL,
    parentname character varying(255),
    descriptor text
);


ALTER TABLE jiradraftworkflows OWNER TO sin;

--
-- Name: jiraeventtype; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiraeventtype (
    id numeric(18,0) NOT NULL,
    template_id numeric(18,0),
    name character varying(255),
    description text,
    event_type character varying(60)
);


ALTER TABLE jiraeventtype OWNER TO sin;

--
-- Name: jiraissue; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiraissue (
    id numeric(18,0) NOT NULL,
    pkey character varying(255),
    issuenum numeric(18,0),
    project numeric(18,0),
    reporter character varying(255),
    assignee character varying(255),
    creator character varying(255),
    issuetype character varying(255),
    summary character varying(255),
    description text,
    environment text,
    priority character varying(255),
    resolution character varying(255),
    issuestatus character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    duedate timestamp with time zone,
    resolutiondate timestamp with time zone,
    votes numeric(18,0),
    watches numeric(18,0),
    timeoriginalestimate numeric(18,0),
    timeestimate numeric(18,0),
    timespent numeric(18,0),
    workflow_id numeric(18,0),
    security numeric(18,0),
    fixfor numeric(18,0),
    component numeric(18,0)
);


ALTER TABLE jiraissue OWNER TO sin;

--
-- Name: jiraperms; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiraperms (
    id numeric(18,0) NOT NULL,
    permtype numeric(18,0),
    projectid numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE jiraperms OWNER TO sin;

--
-- Name: jiraworkflows; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiraworkflows (
    id numeric(18,0) NOT NULL,
    workflowname character varying(255),
    creatorname character varying(255),
    descriptor text,
    islocked character varying(60)
);


ALTER TABLE jiraworkflows OWNER TO sin;

--
-- Name: jiraworkflowstatuses; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jiraworkflowstatuses (
    id numeric(18,0) NOT NULL,
    status character varying(255),
    parentname character varying(255)
);


ALTER TABLE jiraworkflowstatuses OWNER TO sin;

--
-- Name: jquartz_blob_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_blob_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE jquartz_blob_triggers OWNER TO sin;

--
-- Name: jquartz_calendars; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_calendars (
    sched_name character varying(120),
    calendar_name character varying(200) NOT NULL,
    calendar bytea
);


ALTER TABLE jquartz_calendars OWNER TO sin;

--
-- Name: jquartz_cron_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_cron_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120),
    time_zone_id character varying(80)
);


ALTER TABLE jquartz_cron_triggers OWNER TO sin;

--
-- Name: jquartz_fired_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_fired_triggers (
    sched_name character varying(120),
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200),
    trigger_group character varying(200),
    is_volatile boolean,
    instance_name character varying(200),
    fired_time numeric(18,0),
    sched_time numeric(18,0),
    priority numeric(9,0),
    state character varying(16),
    job_name character varying(200),
    job_group character varying(200),
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean
);


ALTER TABLE jquartz_fired_triggers OWNER TO sin;

--
-- Name: jquartz_job_details; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_job_details (
    sched_name character varying(120),
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250),
    is_durable boolean,
    is_volatile boolean,
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean,
    job_data bytea
);


ALTER TABLE jquartz_job_details OWNER TO sin;

--
-- Name: jquartz_job_listeners; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_job_listeners (
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    job_listener character varying(200) NOT NULL
);


ALTER TABLE jquartz_job_listeners OWNER TO sin;

--
-- Name: jquartz_locks; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_locks (
    sched_name character varying(120),
    lock_name character varying(40) NOT NULL
);


ALTER TABLE jquartz_locks OWNER TO sin;

--
-- Name: jquartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_paused_trigger_grps (
    sched_name character varying(120),
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE jquartz_paused_trigger_grps OWNER TO sin;

--
-- Name: jquartz_scheduler_state; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_scheduler_state (
    sched_name character varying(120),
    instance_name character varying(200) NOT NULL,
    last_checkin_time numeric(18,0),
    checkin_interval numeric(18,0)
);


ALTER TABLE jquartz_scheduler_state OWNER TO sin;

--
-- Name: jquartz_simple_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_simple_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count numeric(18,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(18,0)
);


ALTER TABLE jquartz_simple_triggers OWNER TO sin;

--
-- Name: jquartz_simprop_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_simprop_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 numeric(9,0),
    int_prop_2 numeric(9,0),
    long_prop_1 numeric(18,0),
    long_prop_2 numeric(18,0),
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
);


ALTER TABLE jquartz_simprop_triggers OWNER TO sin;

--
-- Name: jquartz_trigger_listeners; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_trigger_listeners (
    trigger_name character varying(200),
    trigger_group character varying(200) NOT NULL,
    trigger_listener character varying(200) NOT NULL
);


ALTER TABLE jquartz_trigger_listeners OWNER TO sin;

--
-- Name: jquartz_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE jquartz_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_volatile boolean,
    description character varying(250),
    next_fire_time numeric(18,0),
    prev_fire_time numeric(18,0),
    priority numeric(9,0),
    trigger_state character varying(16),
    trigger_type character varying(8),
    start_time numeric(18,0),
    end_time numeric(18,0),
    calendar_name character varying(200),
    misfire_instr numeric(4,0),
    job_data bytea
);


ALTER TABLE jquartz_triggers OWNER TO sin;

--
-- Name: label; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE label (
    id numeric(18,0) NOT NULL,
    fieldid numeric(18,0),
    issue numeric(18,0),
    label character varying(255)
);


ALTER TABLE label OWNER TO sin;

--
-- Name: licenserolesdefault; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE licenserolesdefault (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255)
);


ALTER TABLE licenserolesdefault OWNER TO sin;

--
-- Name: licenserolesgroup; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE licenserolesgroup (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255),
    group_id character varying(255),
    primary_group character(1)
);


ALTER TABLE licenserolesgroup OWNER TO sin;

--
-- Name: listenerconfig; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE listenerconfig (
    id numeric(18,0) NOT NULL,
    clazz character varying(255),
    listenername character varying(255)
);


ALTER TABLE listenerconfig OWNER TO sin;

--
-- Name: mailserver; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE mailserver (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    mailfrom character varying(255),
    prefix character varying(60),
    smtp_port character varying(60),
    protocol character varying(60),
    server_type character varying(60),
    servername character varying(255),
    jndilocation character varying(255),
    mailusername character varying(255),
    mailpassword character varying(255),
    istlsrequired character varying(60),
    timeout numeric(18,0),
    socks_port character varying(60),
    socks_host character varying(60)
);


ALTER TABLE mailserver OWNER TO sin;

--
-- Name: managedconfigurationitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE managedconfigurationitem (
    id numeric(18,0) NOT NULL,
    item_id character varying(255),
    item_type character varying(255),
    managed character varying(10),
    access_level character varying(255),
    source character varying(255),
    description_key character varying(255)
);


ALTER TABLE managedconfigurationitem OWNER TO sin;

--
-- Name: membershipbase; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE membershipbase (
    id numeric(18,0) NOT NULL,
    user_name character varying(255),
    group_name character varying(255)
);


ALTER TABLE membershipbase OWNER TO sin;

--
-- Name: moved_issue_key; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE moved_issue_key (
    id numeric(18,0) NOT NULL,
    old_issue_key character varying(255),
    issue_id numeric(18,0)
);


ALTER TABLE moved_issue_key OWNER TO sin;

--
-- Name: nodeassociation; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE nodeassociation (
    source_node_id numeric(18,0) NOT NULL,
    source_node_entity character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0)
);


ALTER TABLE nodeassociation OWNER TO sin;

--
-- Name: nodeindexcounter; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE nodeindexcounter (
    id numeric(18,0) NOT NULL,
    node_id character varying(60),
    sending_node_id character varying(60),
    index_operation_id numeric(18,0)
);


ALTER TABLE nodeindexcounter OWNER TO sin;

--
-- Name: notification; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE notification (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    event character varying(60),
    event_type_id numeric(18,0),
    template_id numeric(18,0),
    notif_type character varying(60),
    notif_parameter character varying(60)
);


ALTER TABLE notification OWNER TO sin;

--
-- Name: notificationinstance; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE notificationinstance (
    id numeric(18,0) NOT NULL,
    notificationtype character varying(60),
    source numeric(18,0),
    emailaddress character varying(255),
    messageid character varying(255)
);


ALTER TABLE notificationinstance OWNER TO sin;

--
-- Name: notificationscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE notificationscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE notificationscheme OWNER TO sin;

--
-- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE oauthconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumername character varying(255),
    consumer_key character varying(255),
    consumerservice character varying(255),
    public_key text,
    private_key text,
    description text,
    callback text,
    signature_method character varying(60),
    shared_secret text
);


ALTER TABLE oauthconsumer OWNER TO sin;

--
-- Name: oauthconsumertoken; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE oauthconsumertoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token_key character varying(255),
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255)
);


ALTER TABLE oauthconsumertoken OWNER TO sin;

--
-- Name: oauthspconsumer; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE oauthspconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumer_key character varying(255),
    consumername character varying(255),
    public_key text,
    description text,
    callback text,
    two_l_o_allowed character varying(60),
    executing_two_l_o_user character varying(255),
    two_l_o_impersonation_allowed character varying(60),
    three_l_o_allowed character varying(60)
);


ALTER TABLE oauthspconsumer OWNER TO sin;

--
-- Name: oauthsptoken; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE oauthsptoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255),
    username character varying(255),
    ttl numeric(18,0),
    spauth character varying(60),
    callback text,
    spverifier character varying(255),
    spversion character varying(60),
    session_handle character varying(255),
    session_creation_time timestamp with time zone,
    session_last_renewal_time timestamp with time zone,
    session_time_to_live timestamp with time zone
);


ALTER TABLE oauthsptoken OWNER TO sin;

--
-- Name: optionconfiguration; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE optionconfiguration (
    id numeric(18,0) NOT NULL,
    fieldid character varying(60),
    optionid character varying(60),
    fieldconfig numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE optionconfiguration OWNER TO sin;

--
-- Name: os_currentstep; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE os_currentstep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(60),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(60)
);


ALTER TABLE os_currentstep OWNER TO sin;

--
-- Name: os_currentstep_prev; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE os_currentstep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE os_currentstep_prev OWNER TO sin;

--
-- Name: os_historystep; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE os_historystep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(60),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(60)
);


ALTER TABLE os_historystep OWNER TO sin;

--
-- Name: os_historystep_prev; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE os_historystep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE os_historystep_prev OWNER TO sin;

--
-- Name: os_wfentry; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE os_wfentry (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    initialized numeric(9,0),
    state numeric(9,0)
);


ALTER TABLE os_wfentry OWNER TO sin;

--
-- Name: permissionscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE permissionscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE permissionscheme OWNER TO sin;

--
-- Name: pluginstate; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE pluginstate (
    pluginkey character varying(255) NOT NULL,
    pluginenabled character varying(60)
);


ALTER TABLE pluginstate OWNER TO sin;

--
-- Name: pluginversion; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE pluginversion (
    id numeric(18,0) NOT NULL,
    pluginname character varying(255),
    pluginkey character varying(255),
    pluginversion character varying(255),
    created timestamp with time zone
);


ALTER TABLE pluginversion OWNER TO sin;

--
-- Name: portalpage; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE portalpage (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    pagename character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fav_count numeric(18,0),
    layout character varying(255),
    ppversion numeric(18,0)
);


ALTER TABLE portalpage OWNER TO sin;

--
-- Name: portletconfiguration; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE portletconfiguration (
    id numeric(18,0) NOT NULL,
    portalpage numeric(18,0),
    portlet_id character varying(255),
    column_number numeric(9,0),
    positionseq numeric(9,0),
    gadget_xml text,
    color character varying(255),
    dashboard_module_complete_key text
);


ALTER TABLE portletconfiguration OWNER TO sin;

--
-- Name: priority; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE priority (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    status_color character varying(60)
);


ALTER TABLE priority OWNER TO sin;

--
-- Name: productlicense; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE productlicense (
    id numeric(18,0) NOT NULL,
    license text
);


ALTER TABLE productlicense OWNER TO sin;

--
-- Name: project; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE project (
    id numeric(18,0) NOT NULL,
    pname character varying(255),
    url character varying(255),
    lead character varying(255),
    description text,
    pkey character varying(255),
    pcounter numeric(18,0),
    assigneetype numeric(18,0),
    avatar numeric(18,0),
    originalkey character varying(255),
    projecttype character varying(255)
);


ALTER TABLE project OWNER TO sin;

--
-- Name: project_key; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE project_key (
    id numeric(18,0) NOT NULL,
    project_id numeric(18,0),
    project_key character varying(255)
);


ALTER TABLE project_key OWNER TO sin;

--
-- Name: projectcategory; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE projectcategory (
    id numeric(18,0) NOT NULL,
    cname character varying(255),
    description text
);


ALTER TABLE projectcategory OWNER TO sin;

--
-- Name: projectchangedtime; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE projectchangedtime (
    project_id numeric(18,0) NOT NULL,
    issue_changed_time timestamp with time zone
);


ALTER TABLE projectchangedtime OWNER TO sin;

--
-- Name: projectrole; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE projectrole (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE projectrole OWNER TO sin;

--
-- Name: projectroleactor; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE projectroleactor (
    id numeric(18,0) NOT NULL,
    pid numeric(18,0),
    projectroleid numeric(18,0),
    roletype character varying(255),
    roletypeparameter character varying(255)
);


ALTER TABLE projectroleactor OWNER TO sin;

--
-- Name: projectversion; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE projectversion (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    vname character varying(255),
    description text,
    sequence numeric(18,0),
    released character varying(10),
    archived character varying(10),
    url character varying(255),
    startdate timestamp with time zone,
    releasedate timestamp with time zone
);


ALTER TABLE projectversion OWNER TO sin;

--
-- Name: propertydata; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertydata (
    id numeric(18,0) NOT NULL,
    propertyvalue oid
);


ALTER TABLE propertydata OWNER TO sin;

--
-- Name: propertydate; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertydate (
    id numeric(18,0) NOT NULL,
    propertyvalue timestamp with time zone
);


ALTER TABLE propertydate OWNER TO sin;

--
-- Name: propertydecimal; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertydecimal (
    id numeric(18,0) NOT NULL,
    propertyvalue double precision
);


ALTER TABLE propertydecimal OWNER TO sin;

--
-- Name: propertyentry; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertyentry (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    propertytype numeric(9,0)
);


ALTER TABLE propertyentry OWNER TO sin;

--
-- Name: propertynumber; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertynumber (
    id numeric(18,0) NOT NULL,
    propertyvalue numeric(18,0)
);


ALTER TABLE propertynumber OWNER TO sin;

--
-- Name: propertystring; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertystring (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE propertystring OWNER TO sin;

--
-- Name: propertytext; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE propertytext (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE propertytext OWNER TO sin;

--
-- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_calendars (
    id numeric(18,0),
    calendar_name character varying(255) NOT NULL,
    calendar text
);


ALTER TABLE qrtz_calendars OWNER TO sin;

--
-- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_cron_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    cronexperssion character varying(255)
);


ALTER TABLE qrtz_cron_triggers OWNER TO sin;

--
-- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_fired_triggers (
    id numeric(18,0),
    entry_id character varying(255) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255),
    fired_time timestamp with time zone,
    trigger_state character varying(255)
);


ALTER TABLE qrtz_fired_triggers OWNER TO sin;

--
-- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_job_details (
    id numeric(18,0) NOT NULL,
    job_name character varying(255),
    job_group character varying(255),
    class_name character varying(255),
    is_durable character varying(60),
    is_stateful character varying(60),
    requests_recovery character varying(60),
    job_data character varying(255)
);


ALTER TABLE qrtz_job_details OWNER TO sin;

--
-- Name: qrtz_job_listeners; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_job_listeners (
    id numeric(18,0) NOT NULL,
    job numeric(18,0),
    job_listener character varying(255)
);


ALTER TABLE qrtz_job_listeners OWNER TO sin;

--
-- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_simple_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    repeat_count numeric(9,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(9,0)
);


ALTER TABLE qrtz_simple_triggers OWNER TO sin;

--
-- Name: qrtz_trigger_listeners; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_trigger_listeners (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255)
);


ALTER TABLE qrtz_trigger_listeners OWNER TO sin;

--
-- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE qrtz_triggers (
    id numeric(18,0) NOT NULL,
    trigger_name character varying(255),
    trigger_group character varying(255),
    job numeric(18,0),
    next_fire timestamp with time zone,
    trigger_state character varying(255),
    trigger_type character varying(60),
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    calendar_name character varying(255),
    misfire_instr numeric(9,0)
);


ALTER TABLE qrtz_triggers OWNER TO sin;

--
-- Name: reindex_component; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE reindex_component (
    id numeric(18,0) NOT NULL,
    request_id numeric(18,0),
    affected_index character varying(60),
    entity_type character varying(60)
);


ALTER TABLE reindex_component OWNER TO sin;

--
-- Name: reindex_request; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE reindex_request (
    id numeric(18,0) NOT NULL,
    type character varying(60),
    request_time timestamp with time zone,
    start_time timestamp with time zone,
    completion_time timestamp with time zone,
    status character varying(60),
    execution_node_id character varying(60),
    query text
);


ALTER TABLE reindex_request OWNER TO sin;

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE remembermetoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    username character varying(255)
);


ALTER TABLE remembermetoken OWNER TO sin;

--
-- Name: remotelink; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE remotelink (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    globalid character varying(255),
    title character varying(255),
    summary text,
    url text,
    iconurl text,
    icontitle text,
    relationship character varying(255),
    resolved character(1),
    statusname character varying(255),
    statusdescription text,
    statusiconurl text,
    statusicontitle text,
    statusiconlink text,
    statuscategorykey character varying(255),
    statuscategorycolorname character varying(255),
    applicationtype character varying(255),
    applicationname character varying(255)
);


ALTER TABLE remotelink OWNER TO sin;

--
-- Name: replicatedindexoperation; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE replicatedindexoperation (
    id numeric(18,0) NOT NULL,
    index_time timestamp with time zone,
    node_id character varying(60),
    affected_index character varying(60),
    entity_type character varying(60),
    affected_ids text,
    operation character varying(60),
    filename character varying(255)
);


ALTER TABLE replicatedindexoperation OWNER TO sin;

--
-- Name: resolution; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE resolution (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255)
);


ALTER TABLE resolution OWNER TO sin;

--
-- Name: rundetails; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE rundetails (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    start_time timestamp with time zone,
    run_duration numeric(18,0),
    run_outcome character(1),
    info_message character varying(255)
);


ALTER TABLE rundetails OWNER TO sin;

--
-- Name: schemeissuesecurities; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE schemeissuesecurities (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    security numeric(18,0),
    sec_type character varying(255),
    sec_parameter character varying(255)
);


ALTER TABLE schemeissuesecurities OWNER TO sin;

--
-- Name: schemeissuesecuritylevels; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE schemeissuesecuritylevels (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    scheme numeric(18,0)
);


ALTER TABLE schemeissuesecuritylevels OWNER TO sin;

--
-- Name: schemepermissions; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE schemepermissions (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    permission numeric(18,0),
    perm_type character varying(255),
    perm_parameter character varying(255),
    permission_key character varying(255)
);


ALTER TABLE schemepermissions OWNER TO sin;

--
-- Name: searchrequest; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE searchrequest (
    id numeric(18,0) NOT NULL,
    filtername character varying(255),
    authorname character varying(255),
    description text,
    username character varying(255),
    groupname character varying(255),
    projectid numeric(18,0),
    reqcontent text,
    fav_count numeric(18,0),
    filtername_lower character varying(255)
);


ALTER TABLE searchrequest OWNER TO sin;

--
-- Name: sequence_value_item; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE sequence_value_item (
    seq_name character varying(60) NOT NULL,
    seq_id numeric(18,0)
);


ALTER TABLE sequence_value_item OWNER TO sin;

--
-- Name: serviceconfig; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE serviceconfig (
    id numeric(18,0) NOT NULL,
    delaytime numeric(18,0),
    clazz character varying(255),
    servicename character varying(255),
    cron_expression character varying(255)
);


ALTER TABLE serviceconfig OWNER TO sin;

--
-- Name: sharepermissions; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE sharepermissions (
    id numeric(18,0) NOT NULL,
    entityid numeric(18,0),
    entitytype character varying(60),
    sharetype character varying(10),
    param1 character varying(255),
    param2 character varying(60)
);


ALTER TABLE sharepermissions OWNER TO sin;

--
-- Name: tempattachmentsmonitor; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE tempattachmentsmonitor (
    temporary_attachment_id character varying(255) NOT NULL,
    form_token character varying(255),
    file_name character varying(255),
    content_type character varying(255),
    file_size numeric(18,0),
    created_time numeric(18,0)
);


ALTER TABLE tempattachmentsmonitor OWNER TO sin;

--
-- Name: trackback_ping; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE trackback_ping (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    url character varying(255),
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    created timestamp with time zone
);


ALTER TABLE trackback_ping OWNER TO sin;

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE trustedapp (
    id numeric(18,0) NOT NULL,
    application_id character varying(255),
    name character varying(255),
    public_key text,
    ip_match text,
    url_match text,
    timeout numeric(18,0),
    created timestamp with time zone,
    created_by character varying(255),
    updated timestamp with time zone,
    updated_by character varying(255)
);


ALTER TABLE trustedapp OWNER TO sin;

--
-- Name: upgradehistory; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE upgradehistory (
    id numeric(18,0),
    upgradeclass character varying(255) NOT NULL,
    targetbuild character varying(255),
    status character varying(255),
    downgradetaskrequired character(1)
);


ALTER TABLE upgradehistory OWNER TO sin;

--
-- Name: upgradetaskhistory; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE upgradetaskhistory (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10)
);


ALTER TABLE upgradetaskhistory OWNER TO sin;

--
-- Name: upgradetaskhistoryauditlog; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE upgradetaskhistoryauditlog (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10),
    timeperformed timestamp with time zone,
    action character varying(10)
);


ALTER TABLE upgradetaskhistoryauditlog OWNER TO sin;

--
-- Name: upgradeversionhistory; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE upgradeversionhistory (
    id numeric(18,0),
    timeperformed timestamp with time zone,
    targetbuild character varying(255) NOT NULL,
    targetversion character varying(255)
);


ALTER TABLE upgradeversionhistory OWNER TO sin;

--
-- Name: userassociation; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE userassociation (
    source_name character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0),
    created timestamp with time zone
);


ALTER TABLE userassociation OWNER TO sin;

--
-- Name: userbase; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE userbase (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    password_hash character varying(255)
);


ALTER TABLE userbase OWNER TO sin;

--
-- Name: userhistoryitem; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE userhistoryitem (
    id numeric(18,0) NOT NULL,
    entitytype character varying(10),
    entityid character varying(60),
    username character varying(255),
    lastviewed numeric(18,0),
    data text
);


ALTER TABLE userhistoryitem OWNER TO sin;

--
-- Name: userpickerfilter; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE userpickerfilter (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    enabled character varying(60)
);


ALTER TABLE userpickerfilter OWNER TO sin;

--
-- Name: userpickerfiltergroup; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE userpickerfiltergroup (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE userpickerfiltergroup OWNER TO sin;

--
-- Name: userpickerfilterrole; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE userpickerfilterrole (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    projectroleid numeric(18,0)
);


ALTER TABLE userpickerfilterrole OWNER TO sin;

--
-- Name: versioncontrol; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE versioncontrol (
    id numeric(18,0) NOT NULL,
    vcsname character varying(255),
    vcsdescription character varying(255),
    vcstype character varying(255)
);


ALTER TABLE versioncontrol OWNER TO sin;

--
-- Name: votehistory; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE votehistory (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    votes numeric(18,0),
    "timestamp" timestamp with time zone
);


ALTER TABLE votehistory OWNER TO sin;

--
-- Name: workflowscheme; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE workflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE workflowscheme OWNER TO sin;

--
-- Name: workflowschemeentity; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE workflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE workflowschemeentity OWNER TO sin;

--
-- Name: worklog; Type: TABLE; Schema: public; Owner: sin
--

CREATE TABLE worklog (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    grouplevel character varying(255),
    rolelevel numeric(18,0),
    worklogbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    startdate timestamp with time zone,
    timeworked numeric(18,0)
);


ALTER TABLE worklog OWNER TO sin;

--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21F425_MESSAGE_MAPPING_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_21F425_MESSAGE_MAPPING_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21F425_USER_PROPERTY_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_21F425_USER_PROPERTY_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_3B1893_LOOP_DETECTION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_3B1893_LOOP_DETECTION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_4AEACD_WEBHOOK_DAO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_4AEACD_WEBHOOK_DAO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_550953_SHORTCUT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_550953_SHORTCUT_ID_seq"'::regclass);


--
-- Name: ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('"AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_575BF5_PROCESSED_COMMITS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_575BF5_PROCESSED_COMMITS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_575BF5_PROVIDER_ISSUE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_575BF5_PROVIDER_ISSUE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_587B34_PROJECT_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_587B34_PROJECT_CONFIG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_AUDITENTRY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_AUDITENTRY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_BOARDADMINS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_BOARDADMINS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_CARDCOLOR" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_CARDCOLOR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_CARDLAYOUT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_CARDLAYOUT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_COLUMN" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_COLUMN_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_COLUMNSTATUS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_COLUMNSTATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_DETAILVIEWFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_DETAILVIEWFIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ESTIMATESTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_ESTIMATESTATISTIC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_ISSUERANKING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKINGLOG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_ISSUERANKINGLOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_LEXORANK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_LEXORANK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_LEXORANKBALANCER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_LEXORANKBALANCER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_NONWORKINGDAY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_NONWORKINGDAY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_QUICKFILTER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_QUICKFILTER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_RANKABLEOBJECT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_RANKABLEOBJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_RAPIDVIEW" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_RAPIDVIEW_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SPRINT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_SPRINT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_STATSFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_STATSFIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SUBQUERY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_SUBQUERY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SWIMLANE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_SWIMLANE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_TRACKINGSTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_TRACKINGSTATISTIC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_VERSION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_VERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_WORKINGDAYS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_WORKINGDAYS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_88263F_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_88263F_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_PROPERTIES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_88263F_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_97EDAB_USERINVITATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_97EDAB_USERINVITATION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_A44657_HEALTH_CHECK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_A44657_HEALTH_CHECK_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_B9A0F0_APPLIED_TEMPLATE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_CFF990_AOTRANSITION_FAILURE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_CFF990_AOTRANSITION_FAILURE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_BRANCH_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH_HEAD_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_CHANGESET_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_CHANGESET_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_COMMIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_GIT_HUB_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_GIT_HUB_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_MESSAGE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_QUEUE_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_TAG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_MESSAGE_TAG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ORGANIZATION_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ORG_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ORG_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PROJECT_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_ISSUE_KEY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PR_ISSUE_KEY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_PARTICIPANT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PR_PARTICIPANT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PR_TO_COMMIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PULL_REQUEST" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PULL_REQUEST_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPOSITORY_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_REPO_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_AUDIT_LOG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_SYNC_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_ED669C_SEEN_ASSERTIONS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_ED669C_SEEN_ASSERTIONS_ID_seq"'::regclass);


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE") FROM stdin;
f	http://www.atlassian.com/*	1	WILDCARD_EXPRESSION
\.


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_21D670_WHITELIST_RULES_ID_seq"', 1, true);


--
-- Data for Name: AO_21F425_MESSAGE_AO; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_21F425_MESSAGE_AO" ("CONTENT", "ID") FROM stdin;
\.


--
-- Data for Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_21F425_MESSAGE_MAPPING_AO" ("ID", "MESSAGE_ID", "USER_HASH") FROM stdin;
\.


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_21F425_MESSAGE_MAPPING_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_21F425_USER_PROPERTY_AO" ("ID", "KEY", "USER", "VALUE") FROM stdin;
\.


--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_21F425_USER_PROPERTY_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_3B1893_LOOP_DETECTION; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_3B1893_LOOP_DETECTION" ("COUNTER", "EXPIRES_AT", "ID", "SENDER_EMAIL") FROM stdin;
\.


--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_3B1893_LOOP_DETECTION_ID_seq"', 1, false);


--
-- Data for Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_4AEACD_WEBHOOK_DAO" ("ENABLED", "ENCODED_EVENTS", "FILTER", "ID", "JQL", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "REGISTRATION_METHOD", "URL", "PARAMETERS", "EXCLUDE_ISSUE_DETAILS") FROM stdin;
\.


--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_4AEACD_WEBHOOK_DAO_ID_seq"', 1, false);


--
-- Data for Name: AO_550953_SHORTCUT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_550953_SHORTCUT" ("ID", "NAME", "PROJECT_ID", "SHORTCUT_URL", "URL", "ICON") FROM stdin;
1	Project management ideas	10000	https://docs.atlassian.com/jira/jcore-docs-073/Project+management	\N	
2	Working in a project	10000	https://docs.atlassian.com/jira/jcore-docs-073/Working+in+a+project	\N	
\.


--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_550953_SHORTCUT_ID_seq"', 2, true);


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_575BF5_PROCESSED_COMMITS" ("COMMIT_HASH", "ID", "METADATA_HASH") FROM stdin;
\.


--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_575BF5_PROCESSED_COMMITS_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_575BF5_PROVIDER_ISSUE" ("ID", "ISSUE_ID", "PROVIDER_SOURCE_ID", "STALE_AFTER") FROM stdin;
\.


--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_575BF5_PROVIDER_ISSUE_ID_seq"', 1, false);


--
-- Data for Name: AO_587B34_GLANCE_CONFIG; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_587B34_GLANCE_CONFIG" ("ROOM_ID", "STATE", "SYNC_NEEDED", "APPLICATION_USER_KEY", "NAME", "JQL") FROM stdin;
\.


--
-- Data for Name: AO_587B34_PROJECT_CONFIG; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_587B34_PROJECT_CONFIG" ("CONFIGURATION_GROUP_ID", "ID", "NAME", "NAME_UNIQUE_CONSTRAINT", "PROJECT_ID", "ROOM_ID", "VALUE") FROM stdin;
\.


--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_587B34_PROJECT_CONFIG_ID_seq"', 1, false);


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
\.


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
\.


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_AUDITENTRY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_AUDITENTRY" ("CATEGORY", "DATA", "ENTITY_CLASS", "ENTITY_ID", "ID", "TIME", "USER") FROM stdin;
\.


--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_AUDITENTRY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_BOARDADMINS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_BOARDADMINS" ("ID", "KEY", "RAPID_VIEW_ID", "TYPE") FROM stdin;
1	admin	1	USER
\.


--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_BOARDADMINS_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_CARDCOLOR; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_CARDCOLOR" ("COLOR", "ID", "POS", "RAPID_VIEW_ID", "STRATEGY", "VAL") FROM stdin;
\.


--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_CARDCOLOR_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_CARDLAYOUT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_CARDLAYOUT" ("FIELD_ID", "ID", "MODE_NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_CARDLAYOUT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_COLUMN; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_COLUMN" ("ID", "MAXIM", "MINIM", "NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
4	\N	\N	gh.workflow.preset.todo	0	1
5	\N	\N	gh.workflow.preset.inprogress	1	1
6	\N	\N	gh.workflow.preset.done	2	1
\.


--
-- Data for Name: AO_60DB71_COLUMNSTATUS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_COLUMNSTATUS" ("COLUMN_ID", "ID", "POS", "STATUS_ID") FROM stdin;
4	4	0	10000
5	5	0	3
6	6	0	10001
\.


--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_COLUMNSTATUS_ID_seq"', 6, true);


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_COLUMN_ID_seq"', 6, true);


--
-- Data for Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_DETAILVIEWFIELD" ("FIELD_ID", "ID", "POS", "RAPID_VIEW_ID") FROM stdin;
status	1	0	1
priority	2	1	1
components	3	2	1
labels	4	3	1
versions	5	4	1
fixVersions	6	5	1
issuelinks	7	6	1
reporter	8	7	1
assignee	9	8	1
created	10	9	1
updated	11	10	1
customfield_10000	12	11	1
\.


--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_DETAILVIEWFIELD_ID_seq"', 12, true);


--
-- Data for Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_ESTIMATESTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
customfield_10006	1	1	field
\.


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_ESTIMATESTATISTIC_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_ISSUERANKING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_ISSUERANKING" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "NEXT_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_ISSUERANKINGLOG" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "LOG_TYPE", "NEW_NEXT_ID", "NEW_PREVIOUS_ID", "OLD_NEXT_ID", "OLD_PREVIOUS_ID", "SANITY_CHECKED") FROM stdin;
\.


--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_ISSUERANKINGLOG_ID_seq"', 1, false);


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_ISSUERANKING_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_LEXORANK; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_LEXORANK" ("BUCKET", "FIELD_ID", "ID", "ISSUE_ID", "LOCK_HASH", "LOCK_TIME", "RANK", "TYPE") FROM stdin;
0	10005	8	9223372036854775807	\N	\N	0|zzzzzz:	2
0	10005	10	10001	\N	\N	0|hzzzzz:	1
0	10005	9	10000	\N	\N	0|i00007:	1
0	10005	7	-9223372036854775808	\N	\N	0|000000:	0
\.


--
-- Data for Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_LEXORANKBALANCER" ("DISABLE_RANK_OPERATIONS", "FIELD_ID", "ID", "REBALANCE_TIME") FROM stdin;
\.


--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_LEXORANKBALANCER_ID_seq"', 1, false);


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_LEXORANK_ID_seq"', 10, true);


--
-- Data for Name: AO_60DB71_NONWORKINGDAY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_NONWORKINGDAY" ("ID", "ISO8601_DATE", "WORKING_DAYS_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_NONWORKINGDAY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_QUICKFILTER; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_QUICKFILTER" ("DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
gh.rapid.quickfilters.only.my.issues.desc	1	assignee = currentUser()	gh.rapid.quickfilters.only.my.issues	0	\N	1
gh.rapid.quickfilters.recently.updated.desc	2	updatedDate >= -1d	gh.rapid.quickfilters.recently.updated	1	\N	1
\.


--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_QUICKFILTER_ID_seq"', 2, true);


--
-- Data for Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_RANKABLEOBJECT" ("ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_RANKABLEOBJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_RAPIDVIEW; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_RAPIDVIEW" ("CARD_COLOR_STRATEGY", "ID", "KAN_PLAN_ENABLED", "NAME", "OWNER_USER_NAME", "SAVED_FILTER_ID", "SHOW_DAYS_IN_COLUMN", "SPRINTS_ENABLED", "SWIMLANE_STRATEGY") FROM stdin;
none	1	f	VMAA board	admin	10003	f	t	parentChild
\.


--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_RAPIDVIEW_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_SPRINT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_SPRINT" ("CLOSED", "COMPLETE_DATE", "END_DATE", "GOAL", "ID", "NAME", "RAPID_VIEW_ID", "SEQUENCE", "STARTED", "START_DATE") FROM stdin;
f	\N	1499877360000	\N	1	VMAA Sprint 1	1	\N	t	1498667786572
\.


--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_SPRINT_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_STATSFIELD; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_STATSFIELD" ("ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
1	1	none
\.


--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_STATSFIELD_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_SUBQUERY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_SUBQUERY" ("ID", "LONG_QUERY", "QUERY", "RAPID_VIEW_ID", "SECTION") FROM stdin;
\.


--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_SUBQUERY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_SWIMLANE; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_SWIMLANE" ("DEFAULT_LANE", "DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
t		1		gh.rapid.swimlane.default.name	0	\N	1
\.


--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_SWIMLANE_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_TRACKINGSTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\N	1	1	none
\.


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_TRACKINGSTATISTIC_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_VERSION; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_VERSION" ("ID", "START_DATE", "VERSION_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_VERSION_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_WORKINGDAYS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_60DB71_WORKINGDAYS" ("FRIDAY", "ID", "MONDAY", "RAPID_VIEW_ID", "SATURDAY", "SUNDAY", "THURSDAY", "TIMEZONE", "TUESDAY", "WEDNESDAY") FROM stdin;
t	1	t	1	f	f	t	defaultTimeZoneId	t	t
\.


--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_60DB71_WORKINGDAYS_ID_seq"', 1, true);


--
-- Data for Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_88263F_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
\.


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"', 1, false);


--
-- Data for Name: AO_88263F_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_88263F_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1498667321074
\.


--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_88263F_PROPERTIES_ID_seq"', 1, true);


--
-- Data for Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_88263F_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_88263F_READ_NOTIFICATIONS_ID_seq"', 1, false);


--
-- Data for Name: AO_97EDAB_USERINVITATION; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_97EDAB_USERINVITATION" ("APPLICATION_KEYS", "EMAIL_ADDRESS", "EXPIRY", "ID", "REDEEMED", "SENDER_USERNAME", "TOKEN") FROM stdin;
\.


--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_97EDAB_USERINVITATION_ID_seq"', 1, false);


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_A44657_HEALTH_CHECK_ENTITY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_A44657_HEALTH_CHECK_ENTITY" ("ID") FROM stdin;
\.


--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_A44657_HEALTH_CHECK_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_B9A0F0_APPLIED_TEMPLATE" ("ID", "PROJECT_ID", "PROJECT_TEMPLATE_MODULE_KEY", "PROJECT_TEMPLATE_WEB_ITEM_KEY") FROM stdin;
1	10000	com.atlassian.jira-core-project-templates:jira-core-project-management	com.atlassian.jira-core-project-templates:jira-core-project-management
2	10001	com.pyxis.greenhopper.jira:gh-scrum-template	com.pyxis.greenhopper.jira:gh-scrum-template
\.


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"', 2, true);


--
-- Data for Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_CFF990_AOTRANSITION_FAILURE" ("ERROR_MESSAGES", "FAILURE_TIME", "ID", "ISSUE_ID", "LOG_REFERRAL_HASH", "TRANSITION_ID", "TRIGGER_ID", "USER_KEY", "WORKFLOW_ID") FROM stdin;
\.


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_CFF990_AOTRANSITION_FAILURE_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_BRANCH; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_BRANCH" ("ID", "NAME", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_BRANCH_HEAD_MAPPING" ("BRANCH_NAME", "HEAD", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_BRANCH_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_CHANGESET_MAPPING" ("AUTHOR", "AUTHOR_EMAIL", "BRANCH", "DATE", "FILES_DATA", "FILE_COUNT", "FILE_DETAILS_JSON", "ID", "ISSUE_KEY", "MESSAGE", "NODE", "PARENTS_DATA", "PROJECT_KEY", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "SMARTCOMMIT_AVAILABLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_CHANGESET_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_COMMIT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_COMMIT" ("AUTHOR", "AUTHOR_AVATAR_URL", "DATE", "DOMAIN_ID", "ID", "MERGE", "MESSAGE", "NODE", "RAW_AUTHOR") FROM stdin;
\.


--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_COMMIT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_GIT_HUB_EVENT" ("CREATED_AT", "GIT_HUB_ID", "ID", "REPOSITORY_ID", "SAVE_POINT") FROM stdin;
\.


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_GIT_HUB_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_ISSUE_MAPPING" ("ID", "ISSUE_ID", "NODE", "PROJECT_KEY", "REPOSITORY_URI") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_ISSUE_MAPPING_V2" ("AUTHOR", "BRANCH", "DATE", "FILES_DATA", "ID", "ISSUE_ID", "MESSAGE", "NODE", "PARENTS_DATA", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "VERSION") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_ISSUE_TO_BRANCH" ("BRANCH_ID", "ID", "ISSUE_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_ISSUE_TO_CHANGESET" ("CHANGESET_ID", "ID", "ISSUE_KEY", "PROJECT_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_MESSAGE" ("ADDRESS", "ID", "PAYLOAD", "PAYLOAD_TYPE", "PRIORITY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_MESSAGE_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_MESSAGE_QUEUE_ITEM" ("ID", "LAST_FAILED", "MESSAGE_ID", "QUEUE", "RETRIES_COUNT", "STATE", "STATE_INFO") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_MESSAGE_TAG" ("ID", "MESSAGE_ID", "TAG") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_MESSAGE_TAG_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_ORGANIZATION_MAPPING" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "APPROVAL_STATE", "AUTOLINK_NEW_REPOS", "DEFAULT_GROUPS_SLUGS", "DVCS_TYPE", "HOST_URL", "ID", "NAME", "OAUTH_KEY", "OAUTH_SECRET", "PRINCIPAL_ID", "SMARTCOMMITS_FOR_NEW_REPOS") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ORG_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_ORG_TO_PROJECT" ("ID", "ORGANIZATION_ID", "PROJECT_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_ORG_TO_PROJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_PROJECT_MAPPING" ("ID", "PASSWORD", "PROJECT_KEY", "REPOSITORY_URI", "USERNAME") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_PROJECT_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_PROJECT_MAPPING_V2" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "ID", "LAST_COMMIT_DATE", "PROJECT_KEY", "REPOSITORY_NAME", "REPOSITORY_TYPE", "REPOSITORY_URL") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_PR_ISSUE_KEY" ("DOMAIN_ID", "ID", "ISSUE_KEY", "PULL_REQUEST_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_PR_ISSUE_KEY_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_PR_PARTICIPANT" ("APPROVED", "DOMAIN_ID", "ID", "PULL_REQUEST_ID", "ROLE", "USERNAME") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_PR_PARTICIPANT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_PR_TO_COMMIT" ("COMMIT_ID", "DOMAIN_ID", "ID", "REQUEST_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_PR_TO_COMMIT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_PULL_REQUEST" ("AUTHOR", "COMMENT_COUNT", "CREATED_ON", "DESTINATION_BRANCH", "DOMAIN_ID", "EXECUTED_BY", "ID", "LAST_STATUS", "NAME", "REMOTE_ID", "SOURCE_BRANCH", "SOURCE_REPO", "TO_REPOSITORY_ID", "UPDATED_ON", "URL") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_PULL_REQUEST_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_REPOSITORY_MAPPING" ("ACTIVITY_LAST_SYNC", "DELETED", "FORK", "FORK_OF_NAME", "FORK_OF_OWNER", "FORK_OF_SLUG", "ID", "LAST_CHANGESET_NODE", "LAST_COMMIT_DATE", "LINKED", "LOGO", "NAME", "ORGANIZATION_ID", "SLUG", "SMARTCOMMITS_ENABLED", "UPDATE_LINK_AUTHORISED") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_REPO_TO_CHANGESET" ("CHANGESET_ID", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_REPO_TO_PROJECT" ("ID", "PROJECT_KEY", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_REPO_TO_PROJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_SYNC_AUDIT_LOG" ("END_DATE", "EXC_TRACE", "FIRST_REQUEST_DATE", "FLIGHT_TIME_MS", "ID", "NUM_REQUESTS", "REPO_ID", "START_DATE", "SYNC_STATUS", "SYNC_TYPE", "TOTAL_ERRORS") FROM stdin;
\.


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_E8B6CC_SYNC_EVENT" ("EVENT_CLASS", "EVENT_DATE", "EVENT_JSON", "ID", "REPO_ID", "SCHEDULED_SYNC") FROM stdin;
\.


--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_E8B6CC_SYNC_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY "AO_ED669C_SEEN_ASSERTIONS" ("ASSERTION_ID", "EXPIRY_TIMESTAMP", "ID") FROM stdin;
\.


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: sin
--

SELECT pg_catalog.setval('"AO_ED669C_SEEN_ASSERTIONS_ID_seq"', 1, false);


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY app_user (id, user_key, lower_user_name) FROM stdin;
10000	admin	admin
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY audit_changed_value (id, log_id, name, delta_from, delta_to) FROM stdin;
10000	10001	Permission		Bulk Change
10001	10001	Group		jira-software-users
10002	10002	Permission		Create Shared Objects
10003	10002	Group		jira-software-users
10004	10003	Permission		Manage Group Filter Subscriptions
10005	10003	Group		jira-software-users
10006	10004	Permission		Browse Users
10007	10004	Group		jira-software-users
10008	10005	Organisation	\N	Dinosys
10009	10005	Date Purchased	\N	28/Jun/17
10010	10005	License Type	\N	JIRA Software (Server): Evaluation
10011	10005	Server ID	\N	BUXU-LL47-7AST-H561
10012	10005	Support Entitlement Number (SEN)	\N	SEN-L9937166
10013	10005	User Limit	\N	Unlimited
10014	10005	jira-software	\N	-1
10015	10006	Username	\N	admin
10016	10006	Full name	\N	Nguyen Dinh Minh Nhat
10017	10006	Email	\N	nhat.nguyen@dinosys.vn
10018	10006	Active / Inactive	\N	Active
10019	10008	Permission		Bulk Change
10020	10008	Group		jira-administrators
10021	10009	Permission		Create Shared Objects
10022	10009	Group		jira-administrators
10023	10010	Permission		Browse Users
10024	10010	Group		jira-administrators
10025	10011	Permission		Manage Group Filter Subscriptions
10026	10011	Group		jira-administrators
10100	10100	Name	\N	VMA: Project Management Workflow
10101	10100	Description	\N	
10102	10100	Status	\N	To Do
10103	10100	Status	\N	In Progress
10104	10100	Status	\N	Done
10105	10100	Transition	\N	Create (To Do)
10106	10100	Transition	\N	Start Progress (To Do -> In Progress)
10107	10100	Transition	\N	Done (To Do -> Done)
10108	10100	Transition	\N	Stop Progress (In Progress -> To Do)
10109	10100	Transition	\N	Done (In Progress -> Done)
10110	10100	Transition	\N	Reopen (Done -> To Do)
10111	10100	Transition	\N	Reopen and start progress (Done -> In Progress)
10112	10101	Name	\N	VMA: Project Management Workflow Scheme
10113	10101	Description	\N	
10114	10104	Name	\N	VMA
10115	10104	Key	\N	VMA
10116	10104	Description	\N	
10117	10104	URL	\N	
10118	10104	Project Lead	\N	admin
10119	10104	Default Assignee	\N	Unassigned
10120	10105	Permission		Manage Sprints
10121	10105	Type		Project Role
10122	10105	Value		Administrators
10123	10106	Permission	Manage Sprints	
10124	10106	Type	Project Role	
10125	10106	Value	Administrators	
10126	10107	Permission		Manage Sprints
10127	10107	Type		Project Role
10128	10107	Value		Administrators
10129	10108	Name	\N	Epic Link
10130	10108	Description	\N	Choose an epic to assign this issue to.
10131	10108	Type	\N	Epic Link Relationship
10132	10109	Name	\N	Epic Status
10133	10109	Description	\N	Epic Status field for JIRA Software use only.
10134	10109	Type	\N	Status of Epic
10135	10110	Name	\N	Epic Name
10136	10110	Description	\N	Provide a short name to identify this epic.
10137	10110	Type	\N	Name of Epic
10138	10111	Name	\N	Epic Colour
10139	10111	Description	\N	Epic Colour field for JIRA Software use only.
10140	10111	Type	\N	Colour of Epic
10141	10112	Name	\N	Sprint
10142	10112	Description	\N	JIRA Software sprint field
10143	10112	Type	\N	JIRA Sprint Field
10144	10113	Name	\N	Rank
10145	10113	Description	\N	Global rank field for JIRA Software use only.
10146	10113	Type	\N	Global Rank
10147	10114	Name	\N	Story Points
10148	10114	Description	\N	Measurement of complexity and/or size of a requirement.
10149	10114	Type	\N	Number Field
10150	10115	Name	\N	Software Simplified Workflow for Project VMAA
10151	10115	Description	\N	Generated by JIRA Software version 7.3.0-DAILY20170523023608. This workflow is managed internally by JIRA Software. Do not manually modify this workflow.
10152	10115	Status	\N	To Do
10153	10115	Status	\N	In Progress
10154	10115	Status	\N	Done
10155	10115	Transition	\N	Create (To Do)
10156	10115	Transition	\N	To Do (To Do)
10157	10115	Transition	\N	In Progress (In Progress)
10158	10115	Transition	\N	Done (Done)
10159	10116	Name	\N	VMAA: Software Simplified Workflow Scheme
10160	10116	Description	\N	Generated by JIRA Software version 7.3.0-DAILY20170523023608. This workflow scheme is managed internally by JIRA Software. Do not manually modify this workflow scheme.
10161	10118	Name	\N	Default software scheme
10162	10118	Description	\N	Default scheme for Software projects.
10163	10119	Permission		Browse Projects
10164	10119	Type		Application access
10165	10120	Permission		Create Issues
10166	10120	Type		Application access
10167	10121	Permission		Edit Issues
10168	10121	Type		Application access
10169	10122	Permission		Assign Issues
10170	10122	Type		Application access
10171	10123	Permission		Resolve Issues
10172	10123	Type		Application access
10173	10124	Permission		Add Comments
10174	10124	Type		Application access
10175	10125	Permission		Delete Issues
10176	10125	Type		Project Role
10177	10125	Value		Administrators
10178	10126	Permission		Assignable User
10179	10126	Type		Application access
10180	10127	Permission		Close Issues
10181	10127	Type		Application access
10182	10128	Permission		Create Attachments
10183	10128	Type		Application access
10184	10129	Permission		Work On Issues
10185	10129	Type		Application access
10186	10130	Permission		Link Issues
10187	10130	Type		Application access
10188	10131	Permission		Administer Projects
10189	10131	Type		Project Role
10190	10131	Value		Administrators
10191	10132	Permission		Move Issues
10192	10132	Type		Application access
10193	10133	Permission		Schedule Issues
10194	10133	Type		Application access
10195	10134	Permission		Modify Reporter
10196	10134	Type		Project Role
10197	10134	Value		Administrators
10198	10135	Permission		View Voters and Watchers
10199	10135	Type		Application access
10200	10136	Permission		Manage Watchers
10201	10136	Type		Project Role
10202	10136	Value		Administrators
10203	10137	Permission		Edit All Comments
10204	10137	Type		Project Role
10205	10137	Value		Administrators
10206	10138	Permission		Edit Own Comments
10207	10138	Type		Application access
10208	10139	Permission		Delete All Comments
10209	10139	Type		Project Role
10210	10139	Value		Administrators
10211	10140	Permission		Delete Own Comments
10212	10140	Type		Application access
10213	10141	Permission		Delete All Attachments
10214	10141	Type		Project Role
10215	10141	Value		Administrators
10216	10142	Permission		Delete Own Attachments
10217	10142	Type		Application access
10218	10143	Permission		Edit Own Worklogs
10219	10143	Type		Application access
10220	10144	Permission		Edit All Worklogs
10221	10144	Type		Project Role
10222	10144	Value		Administrators
10223	10145	Permission		Delete Own Worklogs
10224	10145	Type		Application access
10225	10146	Permission		Delete All Worklogs
10226	10146	Type		Project Role
10227	10146	Value		Administrators
10228	10147	Permission		View Read-Only Workflow
10229	10147	Type		Application access
10230	10148	Permission		Transition Issues
10231	10148	Type		Application access
10232	10149	Permission		View Development Tools
10233	10149	Type		Application access
10234	10150	Permission		Manage Sprints
10235	10150	Type		Application access
10236	10153	Name	\N	VMAA
10237	10153	Key	\N	VMAA
10238	10153	Description	\N	
10239	10153	URL	\N	
10240	10153	Project Lead	\N	admin
10241	10153	Default Assignee	\N	Unassigned
10242	10157	Name	\N	Copy of Software Simplified Workflow for Project VMAA
10243	10157	Description	\N	Generated by JIRA Software version 7.3.0-DAILY20170523023608. This workflow is managed internally by JIRA Software. Do not manually modify this workflow. (This copy was automatically generated from a draft, when workflow 'Software Simplified Workflow for Project VMAA' was made inactive.)
10244	10157	Status	\N	To Do
10245	10157	Status	\N	In Progress
10246	10157	Status	\N	Done
10247	10157	Transition	\N	Create (To Do)
10248	10157	Transition	\N	To Do (To Do)
10249	10157	Transition	\N	In Progress (In Progress)
10250	10157	Transition	\N	Done (Done)
\.


--
-- Data for Name: audit_item; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY audit_item (id, log_id, object_type, object_id, object_name, object_parent_id, object_parent_name) FROM stdin;
10000	10007	USER	admin	admin	1	JIRA Internal Directory
10001	10012	USER	admin	admin	1	JIRA Internal Directory
10100	10102	SCHEME	10100	VMA: Project Management Workflow Scheme	\N	\N
10101	10104	USER	admin	admin	1	JIRA Internal Directory
10102	10117	SCHEME	10101	VMAA: Software Simplified Workflow Scheme	\N	\N
10103	10151	SCHEME	0	Default Permission Scheme	\N	\N
10104	10152	SCHEME	10000	Default software scheme	\N	\N
10105	10153	USER	admin	admin	1	JIRA Internal Directory
10106	10154	SCHEME	0	Default Permission Scheme	\N	\N
10107	10156	SCHEME	10000	Default software scheme	\N	\N
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY audit_log (id, remote_address, created, author_key, summary, category, object_type, object_id, object_name, object_parent_id, object_parent_name, author_type, event_source_name, description, long_description, search_field) FROM stdin;
10000	172.17.0.1	2017-06-28 23:26:02.466+07	\N	Group created	group management	GROUP	\N	jira-software-users	1	JIRA Internal Directory	0		\N		172.17.0.1 group created management jira-software-users jira internal directory
10001	172.17.0.1	2017-06-28 23:26:02.658+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions bulk change jira-software-users
10002	172.17.0.1	2017-06-28 23:26:02.701+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions create shared objects jira-software-users
10003	172.17.0.1	2017-06-28 23:26:02.726+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions manage group filter subscriptions jira-software-users
10004	172.17.0.1	2017-06-28 23:26:02.751+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions browse users jira-software-users
10005	172.17.0.1	2017-06-28 23:26:02.819+07	\N	New license added	system	LICENSE	0	SEN-L9937166	0	License SEN	0		\N		172.17.0.1 new license added system sen-l9937166 sen dinosys 28/jun/17 jira software (server): evaluation buxu-ll47-7ast-h561 unlimited -1
10006	172.17.0.1	2017-06-28 23:27:22.623+07	\N	User created	user management	USER	admin	admin	1	JIRA Internal Directory	0		\N		172.17.0.1 user created management admin jira internal directory nguyen dinh minh nhat nhat.nguyen@dinosys.vn active
10007	172.17.0.1	2017-06-28 23:27:22.695+07	\N	User added to group	group management	GROUP	\N	jira-administrators	1	JIRA Internal Directory	0		\N		172.17.0.1 user added to group management jira-administrators jira internal directory admin
10008	172.17.0.1	2017-06-28 23:27:22.817+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions bulk change jira-administrators
10009	172.17.0.1	2017-06-28 23:27:22.834+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions create shared objects jira-administrators
10010	172.17.0.1	2017-06-28 23:27:22.85+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions browse users jira-administrators
10011	172.17.0.1	2017-06-28 23:27:22.866+07	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions manage group filter subscriptions jira-administrators
10012	172.17.0.1	2017-06-28 23:27:22.882+07	\N	User added to group	group management	GROUP	\N	jira-software-users	1	JIRA Internal Directory	0		\N		172.17.0.1 user added to group management jira-software-users jira internal directory admin
10100	172.17.0.1	2017-06-28 23:28:38.663+07	admin	Workflow created	workflows	WORKFLOW	VMA: Project Management Workflow	VMA: Project Management Workflow	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow created workflows vma: project management to do in progress done create (to do) start -> progress) done) stop (in reopen (done and
10101	172.17.0.1	2017-06-28 23:28:38.727+07	admin	Workflow scheme created	workflows	SCHEME	10100	VMA: Project Management Workflow Scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow scheme created workflows vma: project management
10102	172.17.0.1	2017-06-28 23:28:38.793+07	admin	Workflow scheme added to project	workflows	PROJECT	10000	VMA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow scheme added to project workflows vma vma: management
10103	172.17.0.1	2017-06-28 23:28:40.398+07	admin	Workflow updated	workflows	WORKFLOW	VMA: Project Management Workflow	VMA: Project Management Workflow	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow updated workflows vma: project management
10104	172.17.0.1	2017-06-28 23:28:41.141+07	admin	Project created	projects	PROJECT	10000	VMA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 project created projects vma jira internal directory unassigned
10105	\N	2017-06-28 23:31:01.307+07	admin	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	1		\N		admin nguyen dinh minh nhat permission scheme updated permissions default manage sprints project role administrators
10106	\N	2017-06-28 23:31:01.377+07	admin	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	1		\N		admin nguyen dinh minh nhat permission scheme updated permissions default manage sprints project role administrators
10107	\N	2017-06-28 23:31:01.394+07	admin	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	1		\N		admin nguyen dinh minh nhat permission scheme updated permissions default manage sprints project role administrators
10108	\N	2017-06-28 23:31:02.219+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10000	Epic Link	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields epic link choose an to assign this issue to. relationship
10109	\N	2017-06-28 23:31:03.226+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10001	Epic Status	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields epic status for jira software use only. of
10110	\N	2017-06-28 23:31:04.305+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10002	Epic Name	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields epic name provide a short to identify this epic. of
10111	\N	2017-06-28 23:31:06.226+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10003	Epic Colour	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields epic colour for jira software use only. of
10112	\N	2017-06-28 23:31:07.742+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10004	Sprint	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields sprint jira software
10113	\N	2017-06-28 23:31:09.083+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10005	Rank	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields rank global for jira software use only.
10114	\N	2017-06-28 23:31:14.018+07	admin	Custom field created	fields	CUSTOM_FIELD	customfield_10006	Story Points	\N	\N	1		\N		admin nguyen dinh minh nhat custom field created fields story points measurement of complexity and/or size a requirement. number
10115	172.17.0.1	2017-06-28 23:32:50.504+07	admin	Workflow created	workflows	WORKFLOW	Software Simplified Workflow for Project VMAA	Software Simplified Workflow for Project VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow created workflows software simplified for project vmaa generated by jira version 7.3.0-daily20170523023608. this is managed internally software. do not manually modify workflow. to in progress done create (to do) (in progress) (done)
10116	172.17.0.1	2017-06-28 23:32:50.544+07	admin	Workflow scheme created	workflows	SCHEME	10101	VMAA: Software Simplified Workflow Scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow scheme created workflows vmaa: software simplified generated by jira version 7.3.0-daily20170523023608. this is managed internally software. do not manually modify scheme.
10117	172.17.0.1	2017-06-28 23:32:50.568+07	admin	Workflow scheme added to project	workflows	PROJECT	10001	VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 workflow scheme added to project workflows vmaa vmaa: software simplified
10118	172.17.0.1	2017-06-28 23:32:51.518+07	admin	Permission scheme created	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme created permissions default software for projects.
10119	172.17.0.1	2017-06-28 23:32:51.542+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software browse projects application access
10120	172.17.0.1	2017-06-28 23:32:51.559+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software create issues application access
10121	172.17.0.1	2017-06-28 23:32:51.576+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software edit issues application access
10122	172.17.0.1	2017-06-28 23:32:51.591+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software assign issues application access
10123	172.17.0.1	2017-06-28 23:32:51.609+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software resolve issues application access
10124	172.17.0.1	2017-06-28 23:32:51.625+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software add comments application access
10125	172.17.0.1	2017-06-28 23:32:51.644+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete issues project role administrators
10126	172.17.0.1	2017-06-28 23:32:51.669+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software assignable user application access
10127	172.17.0.1	2017-06-28 23:32:51.694+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software close issues application access
10128	172.17.0.1	2017-06-28 23:32:51.72+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software create attachments application access
10129	172.17.0.1	2017-06-28 23:32:51.744+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software work on issues application access
10130	172.17.0.1	2017-06-28 23:32:51.77+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software link issues application access
10131	172.17.0.1	2017-06-28 23:32:51.795+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software administer projects project role administrators
10132	172.17.0.1	2017-06-28 23:32:51.82+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software move issues application access
10133	172.17.0.1	2017-06-28 23:32:51.844+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software schedule issues application access
10134	172.17.0.1	2017-06-28 23:32:51.868+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software modify reporter project role administrators
10135	172.17.0.1	2017-06-28 23:32:51.892+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software view voters and watchers application access
10136	172.17.0.1	2017-06-28 23:32:51.922+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software manage watchers project role administrators
10137	172.17.0.1	2017-06-28 23:32:51.946+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software edit all comments project role administrators
10138	172.17.0.1	2017-06-28 23:32:51.962+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software edit own comments application access
10139	172.17.0.1	2017-06-28 23:32:51.98+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete all comments project role administrators
10140	172.17.0.1	2017-06-28 23:32:51.995+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete own comments application access
10141	172.17.0.1	2017-06-28 23:32:52.012+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete all attachments project role administrators
10142	172.17.0.1	2017-06-28 23:32:52.028+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete own attachments application access
10143	172.17.0.1	2017-06-28 23:32:52.048+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software edit own worklogs application access
10144	172.17.0.1	2017-06-28 23:32:52.074+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software edit all worklogs project role administrators
10145	172.17.0.1	2017-06-28 23:32:52.098+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete own worklogs application access
10146	172.17.0.1	2017-06-28 23:32:52.123+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software delete all worklogs project role administrators
10147	172.17.0.1	2017-06-28 23:32:52.148+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software view read-only workflow application access
10148	172.17.0.1	2017-06-28 23:32:52.171+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software transition issues application access
10149	172.17.0.1	2017-06-28 23:32:52.198+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software view development tools application access
10150	172.17.0.1	2017-06-28 23:32:52.227+07	admin	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme updated permissions default software manage sprints application access
10151	172.17.0.1	2017-06-28 23:32:52.289+07	admin	Permission scheme removed from project	permissions	PROJECT	10001	VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme removed from project permissions vmaa default
10152	172.17.0.1	2017-06-28 23:32:52.333+07	admin	Permission scheme added to project	permissions	PROJECT	10001	VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 permission scheme added to project permissions vmaa default software
10153	172.17.0.1	2017-06-28 23:32:52.364+07	admin	Project created	projects	PROJECT	10001	VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat 172.17.0.1 project created projects vmaa jira internal directory unassigned
10154	\N	2017-06-29 00:01:55.251+07	admin	Permission scheme removed from project	permissions	PROJECT	10000	VMA	\N	\N	1		\N		admin nguyen dinh minh nhat permission scheme removed from project permissions vma default
10155	\N	2017-06-29 00:01:55.634+07	admin	Project deleted	projects	PROJECT	10000	VMA	\N	\N	1		\N		admin nguyen dinh minh nhat project deleted projects vma
10156	\N	2017-06-29 00:02:06.884+07	admin	Permission scheme removed from project	permissions	PROJECT	10001	VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat permission scheme removed from project permissions vmaa default software
10157	\N	2017-06-29 00:02:07.205+07	admin	Workflow created	workflows	WORKFLOW	Copy of Software Simplified Workflow for Project VMAA	Copy of Software Simplified Workflow for Project VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat workflow created workflows copy of software simplified for project vmaa generated by jira version 7.3.0-daily20170523023608. this is managed internally software. do not manually modify workflow. (this was automatically from a draft, when 'software vmaa' made inactive.) to in progress done create (to do) (in progress) (done)
10158	\N	2017-06-29 00:02:07.235+07	admin	Project deleted	projects	PROJECT	10001	VMAA	\N	\N	1		\N		admin nguyen dinh minh nhat project deleted projects vmaa
\.


--
-- Data for Name: avatar; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY avatar (id, filename, contenttype, avatartype, owner, systemavatar) FROM stdin;
10000	codegeist.png	image/png	project	\N	1
10001	bird.svg	image/svg+xml	project	\N	1
10002	jm_black.png	image/png	project	\N	1
10003	jm_brown.png	image/png	project	\N	1
10321	development_task.svg	image/svg+xml	issuetype	\N	1
10004	jm_orange.png	image/png	project	\N	1
10322	feedback.svg	image/svg+xml	issuetype	\N	1
10005	jm_red.png	image/png	project	\N	1
10323	request_access.svg	image/svg+xml	issuetype	\N	1
10324	default.svg	image/svg+xml	project	\N	1
10006	jm_white.png	image/png	project	\N	1
10007	jm_yellow.png	image/png	project	\N	1
10008	monster.png	image/png	project	\N	1
10325	code.svg	image/svg+xml	project	\N	1
10009	nature.svg	image/svg+xml	project	\N	1
10326	coffee.svg	image/svg+xml	project	\N	1
10010	koala.svg	image/svg+xml	project	\N	1
10327	design.svg	image/svg+xml	project	\N	1
10011	rocket.svg	image/svg+xml	project	\N	1
10328	drill.svg	image/svg+xml	project	\N	1
10100	Avatar-1.png	image/png	user	\N	1
10329	food.svg	image/svg+xml	project	\N	1
10101	Avatar-2.png	image/png	user	\N	1
10330	notes.svg	image/svg+xml	project	\N	1
10102	Avatar-3.png	image/png	user	\N	1
10103	Avatar-4.png	image/png	user	\N	1
10331	red-flag.svg	image/svg+xml	project	\N	1
10332	science.svg	image/svg+xml	project	\N	1
10104	Avatar-5.png	image/png	user	\N	1
10333	support.svg	image/svg+xml	project	\N	1
10105	Avatar-6.png	image/png	user	\N	1
10106	Avatar-7.png	image/png	user	\N	1
10334	bull.svg	image/svg+xml	user	\N	1
10107	Avatar-8.png	image/png	user	\N	1
10335	cat.svg	image/svg+xml	user	\N	1
10108	Avatar-9.png	image/png	user	\N	1
10336	dog.svg	image/svg+xml	user	\N	1
10109	Avatar-10.png	image/png	user	\N	1
10337	female_1.svg	image/svg+xml	user	\N	1
10110	Avatar-11.png	image/png	user	\N	1
10338	female_2.svg	image/svg+xml	user	\N	1
10111	Avatar-12.png	image/png	user	\N	1
10339	female_3.svg	image/svg+xml	user	\N	1
10112	Avatar-13.png	image/png	user	\N	1
10340	female_4.svg	image/svg+xml	user	\N	1
10113	Avatar-14.png	image/png	user	\N	1
10114	Avatar-15.png	image/png	user	\N	1
10115	Avatar-16.png	image/png	user	\N	1
10116	Avatar-17.png	image/png	user	\N	1
10117	Avatar-18.png	image/png	user	\N	1
10118	Avatar-19.png	image/png	user	\N	1
10119	Avatar-20.png	image/png	user	\N	1
10120	Avatar-21.png	image/png	user	\N	1
10121	Avatar-22.png	image/png	user	\N	1
10122	Avatar-default.svg	image/svg+xml	user	\N	1
10123	Avatar-unknown.png	image/png	user	\N	1
10200	cloud.svg	image/svg+xml	project	\N	1
10341	ghost.svg	image/svg+xml	user	\N	1
10342	male_1.svg	image/svg+xml	user	\N	1
10201	spanner.svg	image/svg+xml	project	\N	1
10202	cd.svg	image/svg+xml	project	\N	1
10203	money.svg	image/svg+xml	project	\N	1
10204	mouse-hand.svg	image/svg+xml	project	\N	1
10205	yeti.svg	image/svg+xml	project	\N	1
10206	power.svg	image/svg+xml	project	\N	1
10207	refresh.svg	image/svg+xml	project	\N	1
10208	phone.svg	image/svg+xml	project	\N	1
10209	settings.svg	image/svg+xml	project	\N	1
10210	storm.svg	image/svg+xml	project	\N	1
10211	plane.svg	image/svg+xml	project	\N	1
10300	genericissue.svg	image/svg+xml	issuetype	\N	1
10303	bug.svg	image/svg+xml	issuetype	\N	1
10304	defect.svg	image/svg+xml	issuetype	\N	1
10306	documentation.svg	image/svg+xml	issuetype	\N	1
10307	epic.svg	image/svg+xml	issuetype	\N	1
10308	exclamation.svg	image/svg+xml	issuetype	\N	1
10309	design_task.svg	image/svg+xml	issuetype	\N	1
10310	improvement.svg	image/svg+xml	issuetype	\N	1
10311	newfeature.svg	image/svg+xml	issuetype	\N	1
10312	remove_feature.svg	image/svg+xml	issuetype	\N	1
10313	requirement.svg	image/svg+xml	issuetype	\N	1
10314	sales.svg	image/svg+xml	issuetype	\N	1
10315	story.svg	image/svg+xml	issuetype	\N	1
10316	subtask.svg	image/svg+xml	issuetype	\N	1
10318	task.svg	image/svg+xml	issuetype	\N	1
10320	question.svg	image/svg+xml	issuetype	\N	1
10343	male_2.svg	image/svg+xml	user	\N	1
10344	male_3.svg	image/svg+xml	user	\N	1
10345	male_4.svg	image/svg+xml	user	\N	1
10346	male_5.svg	image/svg+xml	user	\N	1
10347	male_6.svg	image/svg+xml	user	\N	1
10348	male_8.svg	image/svg+xml	user	\N	1
10349	owl.svg	image/svg+xml	user	\N	1
10350	pirate.svg	image/svg+xml	user	\N	1
10351	robot.svg	image/svg+xml	user	\N	1
10352	vampire.svg	image/svg+xml	user	\N	1
\.


--
-- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY board (id, jql) FROM stdin;
\.


--
-- Data for Name: boardproject; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY boardproject (board_id, project_id) FROM stdin;
\.


--
-- Data for Name: changegroup; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY changegroup (id, issueid, author, created) FROM stdin;
\.


--
-- Data for Name: changeitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY changeitem (id, groupid, fieldtype, field, oldvalue, oldstring, newvalue, newstring) FROM stdin;
\.


--
-- Data for Name: clusteredjob; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY clusteredjob (id, job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
10001	com.atlassian.jira.service.JiraService:10002	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 0 0 * * ?	\N	1498694400000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002712
10101	analytics-collection	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	C	\N	\N	0 0 23 * * ?	\N	1498690800000	1	\N
10102	assertionId-cleanup	com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService	I	3600000	1498670797513	\N	\N	1498670797513	1	\N
10103	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	I	3600000	1498670805668	\N	\N	1498670805668	1	\N
10104	com.atlassian.jira.service.JiraService:10001	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 5 4/12 * * ?	\N	1498709100000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002711
10205	CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job	CompatibilityPluginScheduler.JobRunnerKey.LocalPluginLicenseNotificationJob-job-handler	I	86400000	1498667258497	\N	\N	1498753658505	2	\N
10206	CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job	CompatibilityPluginScheduler.JobRunnerKey.PluginRequestCheckJob-job-handler	I	3600000	1498667258514	\N	\N	1498670858530	2	\N
10207	CompatibilityPluginScheduler.JobId.PluginUpdateCheckJob-job	CompatibilityPluginScheduler.JobRunnerKey.PluginUpdateCheckJob-job-handler	I	86400000	1498698464285	\N	\N	1498698464285	1	\N
10208	CompatibilityPluginScheduler.JobId.InstanceTopologyJob-job	CompatibilityPluginScheduler.JobRunnerKey.InstanceTopologyJob-job-handler	I	86400000	1498701634041	\N	\N	1498701634041	1	\N
10213	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler	I	3600000	1498670236288	\N	\N	1498673836288	2	\N
10212	94d85fcd-6319-4913-a8c6-bcf58b55e15b	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1498667458979	\N	\N	1498670339661	49	\N
10214	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.greenhopper.service.lexorank.balance.LexoRankBalancePluginJob	I	60000	1498667473318	\N	\N	1498670353328	49	\N
10211	data-provider-cleanup	com.atlassian.jira.plugin.devstatus.provider.DataProviderCleanupJob	I	1800000	1498667454139	\N	\N	1498671054149	3	\N
\.


--
-- Data for Name: clusterlockstatus; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY clusterlockstatus (id, lock_name, locked_by_node, update_time) FROM stdin;
\.


--
-- Data for Name: clustermessage; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY clustermessage (id, source_node, destination_node, claimed_by_node, message, message_time) FROM stdin;
\.


--
-- Data for Name: clusternode; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY clusternode (node_id, node_state, "timestamp", ip, cache_listener_port, node_build_number, node_version) FROM stdin;
\.


--
-- Data for Name: clusternodeheartbeat; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY clusternodeheartbeat (node_id, heartbeat_time, database_time) FROM stdin;
\.


--
-- Data for Name: clusterupgradestate; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY clusterupgradestate (id, database_time, cluster_build_number, cluster_version, state, order_number) FROM stdin;
\.


--
-- Data for Name: columnlayout; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY columnlayout (id, username, searchrequest) FROM stdin;
\.


--
-- Data for Name: columnlayoutitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY columnlayoutitem (id, columnlayout, fieldidentifier, horizontalposition) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY component (id, project, cname, description, url, lead, assigneetype) FROM stdin;
\.


--
-- Data for Name: configurationcontext; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY configurationcontext (id, projectcategory, project, customfield, fieldconfigscheme) FROM stdin;
10000	\N	\N	issuetype	10000
10101	\N	\N	customfield_10000	10101
10102	\N	\N	customfield_10004	10102
10103	\N	\N	customfield_10005	10103
10104	\N	\N	customfield_10002	10104
10105	\N	\N	customfield_10001	10105
10106	\N	\N	customfield_10003	10106
10107	\N	\N	customfield_10006	10107
\.


--
-- Data for Name: customfield; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY customfield (id, cfkey, customfieldtypekey, customfieldsearcherkey, cfname, description, defaultvalue, fieldtype, project, issuetype) FROM stdin;
10000	\N	com.pyxis.greenhopper.jira:gh-epic-link	com.pyxis.greenhopper.jira:gh-epic-link-searcher	Epic Link	Choose an epic to assign this issue to.	\N	\N	\N	\N
10001	\N	com.pyxis.greenhopper.jira:gh-epic-status	com.pyxis.greenhopper.jira:gh-epic-status-searcher	Epic Status	Epic Status field for JIRA Software use only.	\N	\N	\N	\N
10002	\N	com.pyxis.greenhopper.jira:gh-epic-label	com.pyxis.greenhopper.jira:gh-epic-label-searcher	Epic Name	Provide a short name to identify this epic.	\N	\N	\N	\N
10003	\N	com.pyxis.greenhopper.jira:gh-epic-color	com.pyxis.greenhopper.jira:gh-epic-color-searcher	Epic Colour	Epic Colour field for JIRA Software use only.	\N	\N	\N	\N
10004	\N	com.pyxis.greenhopper.jira:gh-sprint	com.pyxis.greenhopper.jira:gh-sprint-searcher	Sprint	JIRA Software sprint field	\N	\N	\N	\N
10005	\N	com.pyxis.greenhopper.jira:gh-lexo-rank	com.pyxis.greenhopper.jira:gh-lexo-rank-searcher	Rank	Global rank field for JIRA Software use only.	\N	\N	\N	\N
10006	\N	com.atlassian.jira.plugin.system.customfieldtypes:float	com.atlassian.jira.plugin.system.customfieldtypes:exactnumber	Story Points	Measurement of complexity and/or size of a requirement.	\N	\N	\N	\N
\.


--
-- Data for Name: customfieldoption; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY customfieldoption (id, customfield, customfieldconfig, parentoptionid, sequence, customvalue, optiontype, disabled) FROM stdin;
10000	10001	10105	\N	0	To Do	\N	N
10001	10001	10105	\N	1	In Progress	\N	N
10002	10001	10105	\N	2	Done	\N	N
\.


--
-- Data for Name: customfieldvalue; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY customfieldvalue (id, issue, customfield, parentkey, stringvalue, numbervalue, textvalue, datevalue, valuetype) FROM stdin;
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
1	crowd-embedded	crowd-embedded	2013-02-28 18:57:51.302+07	2013-02-28 18:57:51.302+07	1		CROWD	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_application_address (application_id, remote_address, encoded_address_binary, remote_address_mask) FROM stdin;
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type, directory_position) FROM stdin;
1	JIRA Internal Directory	jira internal directory	2013-02-28 18:57:51.308+07	2013-02-28 18:57:51.308+07	1	JIRA default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	0
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
1	user_encryption_method	atlassian-security
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_directory_operation (directory_id, operation_type) FROM stdin;
1	CREATE_GROUP
1	CREATE_ROLE
1	CREATE_USER
1	DELETE_GROUP
1	DELETE_ROLE
1	DELETE_USER
1	UPDATE_GROUP
1	UPDATE_GROUP_ATTRIBUTE
1	UPDATE_ROLE
1	UPDATE_ROLE_ATTRIBUTE
1	UPDATE_USER
1	UPDATE_USER_ATTRIBUTE
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, lower_description, group_type, directory_id) FROM stdin;
10000	jira-administrators	jira-administrators	1	0	2013-02-28 18:57:51.326+07	2013-02-28 18:57:51.326+07		\N	GROUP	1
10010	jira-software-users	jira-software-users	1	0	2017-06-28 23:26:02.381+07	2017-06-28 23:26:02.381+07	\N	\N	GROUP	1
\.


--
-- Data for Name: cwd_group_attributes; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_group_attributes (id, group_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
10000	10000	10000	GROUP_USER	\N	jira-administrators	jira-administrators	admin	admin	1
10001	10010	10000	GROUP_USER	\N	jira-software-users	jira-software-users	admin	admin	1
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_user (id, directory_id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, credential, deleted_externally, external_id) FROM stdin;
10000	1	admin	admin	1	2017-06-28 23:27:22.378+07	2017-06-28 23:27:22.378+07	Nguyen	nguyen	Dinh Minh Nhat	dinh minh nhat	Nguyen Dinh Minh Nhat	nguyen dinh minh nhat	nhat.nguyen@dinosys.vn	nhat.nguyen@dinosys.vn	{PKCS5S2}kUU68fz87cabRhDLVQ33VxWbXMbAI14xXbtU4B37NCbEk7Xj3uLwjT1vQ5/wcU+b	\N	a0ae8a63-2d0d-4224-ab91-889a6e21b658
\.


--
-- Data for Name: cwd_user_attributes; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY cwd_user_attributes (id, user_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
10000	10000	1	requiresPasswordChange	false	false
10001	10000	1	invalidPasswordAttempts	0	0
10002	10000	1	passwordLastChanged	1498667242558	1498667242558
10003	10000	1	password.reset.request.expiry	1498753642642	1498753642642
10004	10000	1	password.reset.request.token	be0fc3d225da365833d4cd4cc5d25c55168897fb	be0fc3d225da365833d4cd4cc5d25c55168897fb
10100	10000	1	login.currentFailedCount	0	0
10103	10000	1	lastAuthenticated	1498668163771	1498668163771
10101	10000	1	login.lastLoginMillis	1498668163817	1498668163817
10104	10000	1	login.previousLoginMillis	1498667914926	1498667914926
10102	10000	1	login.count	5	5
\.


--
-- Data for Name: deadletter; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY deadletter (id, message_id, last_seen, mail_server_id, folder_name) FROM stdin;
\.


--
-- Data for Name: draftworkflowscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY draftworkflowscheme (id, name, description, workflow_scheme_id, last_modified_date, last_modified_user) FROM stdin;
\.


--
-- Data for Name: draftworkflowschemeentity; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY draftworkflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
\.


--
-- Data for Name: entity_property; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY entity_property (id, entity_name, entity_id, property_key, created, updated, json_value) FROM stdin;
10002	UserProperty	10000	lastViewedVignette	2017-06-28 23:36:01.732+07	2017-06-28 23:36:13.518+07	{"id":"priority"}
\.


--
-- Data for Name: entity_property_index_document; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY entity_property_index_document (id, plugin_key, module_key, entity_key, updated, document) FROM stdin;
10000	com.atlassian.jira.plugins.jira-development-integration-plugin	jira-issue-fusion-jql	IssueProperty	2017-06-28 23:31:31.082+07	<?xml version="1.0" encoding="UTF-8"?>\n<index-document-configuration entity-key="IssueProperty"><key property-key="development"><extract path="failingbuilds" type="NUMBER"/><extract path="openprs" type="NUMBER"/><extract path="prs" type="NUMBER"/><extract path="reviews" type="NUMBER"/><extract path="openreviews" type="NUMBER"/><extract path="commits" type="NUMBER"/></key></index-document-configuration>
\.


--
-- Data for Name: entity_translation; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY entity_translation (id, entity_name, entity_id, locale, trans_name, trans_desc) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY external_entities (id, name, entitytype) FROM stdin;
\.


--
-- Data for Name: externalgadget; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY externalgadget (id, gadget_xml) FROM stdin;
\.


--
-- Data for Name: favouriteassociations; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY favouriteassociations (id, username, entitytype, entityid, sequence) FROM stdin;
\.


--
-- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY feature (id, feature_name, feature_type, user_key) FROM stdin;
10001	com.atlassian.jira.projects.issuenavigator	site	
10000	com.atlassian.jira.projects.ProjectCentricNavigation.Switch	site	
\.


--
-- Data for Name: fieldconfigscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldconfigscheme (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Issue Type Scheme	Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.	issuetype	\N
10100	VMA: Project Management Issue Type Scheme	\N	issuetype	\N
10101	Default Configuration Scheme for Epic Link	Default configuration scheme generated by JIRA	customfield_10000	\N
10102	Default Configuration Scheme for Sprint	Default configuration scheme generated by JIRA	customfield_10004	\N
10103	Default Configuration Scheme for Rank	Default configuration scheme generated by JIRA	customfield_10005	\N
10104	Default Configuration Scheme for Epic Name	Default configuration scheme generated by JIRA	customfield_10002	\N
10105	Default Configuration Scheme for Epic Status	Default configuration scheme generated by JIRA	customfield_10001	\N
10106	Default Configuration Scheme for Epic Colour	Default configuration scheme generated by JIRA	customfield_10003	\N
10107	Default Configuration Scheme for Story Points	Default configuration scheme generated by JIRA	customfield_10006	\N
10108	VMAA: Scrum Issue Type Scheme	\N	issuetype	\N
\.


--
-- Data for Name: fieldconfigschemeissuetype; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldconfigschemeissuetype (id, issuetype, fieldconfigscheme, fieldconfiguration) FROM stdin;
10100	\N	10000	10000
10201	\N	10100	10100
10202	\N	10101	10101
10203	\N	10102	10102
10204	\N	10103	10103
10205	10002	10104	10104
10206	10002	10105	10105
10207	10002	10106	10106
10208	10003	10107	10107
10209	10002	10107	10107
10212	\N	10108	10108
\.


--
-- Data for Name: fieldconfiguration; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldconfiguration (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
10100	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
10101	Default Configuration for Epic Link	Default configuration generated by JIRA	customfield_10000	\N
10102	Default Configuration for Sprint	Default configuration generated by JIRA	customfield_10004	\N
10103	Default Configuration for Rank	Default configuration generated by JIRA	customfield_10005	\N
10104	Default Configuration for Epic Name	Default configuration generated by JIRA	customfield_10002	\N
10105	Default Configuration for Epic Status	Default configuration generated by JIRA	customfield_10001	\N
10106	Default Configuration for Epic Colour	Default configuration generated by JIRA	customfield_10003	\N
10107	Default Configuration for Story Points	Default configuration generated by JIRA	customfield_10006	\N
10108	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
\.


--
-- Data for Name: fieldlayout; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldlayout (id, name, description, layout_type, layoutscheme) FROM stdin;
10000	Default Field Configuration	The default field configuration	default	\N
\.


--
-- Data for Name: fieldlayoutitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldlayoutitem (id, fieldlayout, fieldidentifier, description, verticalposition, ishidden, isrequired, renderertype) FROM stdin;
10119	10000	summary	\N	\N	false	true	jira-text-renderer
10120	10000	issuetype	\N	\N	false	true	jira-text-renderer
10121	10000	security	\N	\N	false	false	jira-text-renderer
10122	10000	priority	\N	\N	false	false	jira-text-renderer
10123	10000	duedate	\N	\N	false	false	jira-text-renderer
10124	10000	components	\N	\N	false	false	frother-control-renderer
10125	10000	versions	\N	\N	false	false	frother-control-renderer
10126	10000	fixVersions	\N	\N	false	false	frother-control-renderer
10127	10000	assignee	\N	\N	false	false	jira-text-renderer
10128	10000	reporter	\N	\N	false	true	jira-text-renderer
10129	10000	environment	For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).	\N	false	false	atlassian-wiki-renderer
10130	10000	description	\N	\N	false	false	atlassian-wiki-renderer
10131	10000	timetracking	An estimate of how much work remains until this issue will be resolved.<br>The format of this is ' *w *d *h *m ' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>	\N	false	false	jira-text-renderer
10132	10000	resolution	\N	\N	false	false	jira-text-renderer
10133	10000	attachment	\N	\N	false	false	jira-text-renderer
10134	10000	comment	\N	\N	false	false	atlassian-wiki-renderer
10135	10000	labels	\N	\N	false	false	jira-text-renderer
10136	10000	worklog	Allows work to be logged whilst creating, editing or transitioning issues.	\N	false	false	atlassian-wiki-renderer
10137	10000	issuelinks	\N	\N	false	false	jira-text-renderer
10138	10000	customfield_10000	Choose an epic to assign this issue to.	\N	false	false	jira-text-renderer
10139	10000	customfield_10001	Epic Status field for JIRA Software use only.	\N	false	false	jira-text-renderer
10140	10000	customfield_10002	Provide a short name to identify this epic.	\N	false	true	jira-text-renderer
\.


--
-- Data for Name: fieldlayoutscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldlayoutscheme (id, name, description) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeassociation; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldlayoutschemeassociation (id, issuetype, project, fieldlayoutscheme) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeentity; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldlayoutschemeentity (id, scheme, issuetype, fieldlayout) FROM stdin;
\.


--
-- Data for Name: fieldscreen; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldscreen (id, name, description) FROM stdin;
1	Default Screen	Allows to update all system fields.
2	Workflow Screen	This screen is used in the workflow and enables you to assign issues
3	Resolve Issue Screen	Allows to set resolution, change fix versions and assign an issue.
10000	VMA: Project Management Create Issue Screen	
10001	VMA: Project Management Edit/View Issue Screen	
10002	VMA: Project Management Resolve Issue Screen	
10003	VMAA: Scrum Default Issue Screen	
10004	VMAA: Scrum Bug Screen	
\.


--
-- Data for Name: fieldscreenlayoutitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldscreenlayoutitem (id, fieldidentifier, sequence, fieldscreentab) FROM stdin;
10000	summary	0	10000
10001	issuetype	1	10000
10002	security	2	10000
10003	priority	3	10000
10004	duedate	4	10000
10005	components	5	10000
10006	versions	6	10000
10007	fixVersions	7	10000
10008	assignee	8	10000
10009	reporter	9	10000
10010	environment	10	10000
10011	description	11	10000
10012	timetracking	12	10000
10013	attachment	13	10000
10014	assignee	0	10001
10015	resolution	0	10002
10016	fixVersions	1	10002
10017	assignee	2	10002
10018	worklog	3	10002
10100	labels	14	10000
10200	summary	0	10100
10201	issuetype	1	10100
10202	reporter	2	10100
10203	security	3	10100
10204	attachment	4	10100
10205	duedate	5	10100
10206	description	6	10100
10207	assignee	7	10100
10208	priority	8	10100
10209	labels	9	10100
10210	timetracking	10	10100
10211	summary	0	10101
10212	issuetype	1	10101
10213	reporter	2	10101
10214	components	3	10101
10215	attachment	4	10101
10216	duedate	5	10101
10217	description	6	10101
10218	assignee	7	10101
10219	priority	8	10101
10220	labels	9	10101
10221	timetracking	10	10101
10222	summary	0	10102
10223	issuetype	1	10102
10224	reporter	2	10102
10225	issuelinks	3	10102
10226	resolution	4	10102
10239	summary	0	10104
10240	issuetype	1	10104
10241	reporter	2	10104
10242	components	3	10104
10243	description	4	10104
10244	fixVersions	5	10104
10245	priority	6	10104
10246	labels	7	10104
10247	security	8	10104
10248	environment	9	10104
10249	attachment	10	10104
10250	versions	11	10104
10251	issuelinks	12	10104
10252	assignee	13	10104
10253	customfield_10002	0	10103
10227	summary	1	10103
10228	issuetype	2	10103
10229	reporter	3	10103
10230	components	4	10103
10231	description	5	10103
10232	fixVersions	6	10103
10233	priority	7	10103
10234	labels	8	10103
10235	security	9	10103
10236	attachment	10	10103
10237	issuelinks	11	10103
10238	assignee	12	10103
10254	customfield_10000	13	10103
10255	customfield_10000	14	10104
10256	customfield_10004	14	10103
10257	customfield_10004	15	10104
\.


--
-- Data for Name: fieldscreenscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldscreenscheme (id, name, description) FROM stdin;
1	Default Screen Scheme	Default Screen Scheme
10000	VMA: Project Management Screen Scheme	
10001	VMAA: Scrum Default Screen Scheme	
10002	VMAA: Scrum Bug Screen Scheme	
\.


--
-- Data for Name: fieldscreenschemeitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldscreenschemeitem (id, operation, fieldscreen, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10001	10000
10101	0	10000	10000
10102	\N	10003	10001
10103	\N	10004	10002
\.


--
-- Data for Name: fieldscreentab; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fieldscreentab (id, name, description, sequence, fieldscreen) FROM stdin;
10000	Field Tab	\N	0	1
10001	Field Tab	\N	0	2
10002	Field Tab	\N	0	3
10100	Field Tab	\N	0	10000
10101	Field Tab	\N	0	10001
10102	Field Tab	\N	0	10002
10103	Field Tab	\N	0	10003
10104	Field Tab	\N	0	10004
\.


--
-- Data for Name: fileattachment; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY fileattachment (id, issueid, mimetype, filename, created, filesize, author, zip, thumbnailable) FROM stdin;
\.


--
-- Data for Name: filtersubscription; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY filtersubscription (id, filter_i_d, username, groupname, last_run, email_on_empty) FROM stdin;
\.


--
-- Data for Name: gadgetuserpreference; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY gadgetuserpreference (id, portletconfiguration, userprefkey, userprefvalue) FROM stdin;
10000	10002	isConfigured	true
10001	10003	keys	__all_projects__
10002	10003	isConfigured	true
10003	10003	title	Your Company JIRA
10004	10003	numofentries	5
\.


--
-- Data for Name: genericconfiguration; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY genericconfiguration (id, datatype, datakey, xmlvalue) FROM stdin;
10000	DefaultValue	10000	<string>1</string>
10100	DefaultValue	10100	<string>10000</string>
10101	DefaultValue	10108	<string>10003</string>
10102	DefaultValue	10105	<long>10000</long>
\.


--
-- Data for Name: globalpermissionentry; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY globalpermissionentry (id, permission, group_id) FROM stdin;
10000	ADMINISTER	jira-administrators
10006	SYSTEM_ADMIN	jira-administrators
10100	BULK_CHANGE	jira-software-users
10101	CREATE_SHARED_OBJECTS	jira-software-users
10102	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-software-users
10103	USER_PICKER	jira-software-users
10104	BULK_CHANGE	jira-administrators
10105	CREATE_SHARED_OBJECTS	jira-administrators
10106	USER_PICKER	jira-administrators
10107	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-administrators
\.


--
-- Data for Name: groupbase; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY groupbase (id, groupname) FROM stdin;
\.


--
-- Data for Name: issue_field_option; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issue_field_option (id, option_id, field_key, option_value, properties) FROM stdin;
\.


--
-- Data for Name: issue_field_option_scope; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issue_field_option_scope (id, option_id, entity_id, scope_type) FROM stdin;
\.


--
-- Data for Name: issuelink; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuelink (id, linktype, source, destination, sequence) FROM stdin;
\.


--
-- Data for Name: issuelinktype; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuelinktype (id, linkname, inward, outward, pstyle) FROM stdin;
10100	jira_subtask_link	jira_subtask_inward	jira_subtask_outward	jira_subtask
10000	Blocks	is blocked by	blocks	\N
10001	Cloners	is cloned by	clones	\N
10002	Duplicate	is duplicated by	duplicates	\N
10003	Relates	relates to	relates to	\N
10200	Epic-Story Link	has Epic	is Epic of	jira_gh_epic_story
\.


--
-- Data for Name: issuesecurityscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuesecurityscheme (id, name, description, defaultlevel) FROM stdin;
\.


--
-- Data for Name: issuestatus; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuestatus (id, sequence, pname, description, iconurl, statuscategory) FROM stdin;
1	1	Open	The issue is open and ready for the assignee to start work on it.	/images/icons/statuses/open.png	2
3	3	In Progress	This issue is being actively worked on at the moment by the assignee.	/images/icons/statuses/inprogress.png	4
4	4	Reopened	This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.	/images/icons/statuses/reopened.png	2
5	5	Resolved	A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.	/images/icons/statuses/resolved.png	3
6	6	Closed	The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.	/images/icons/statuses/closed.png	3
10000	7	To Do	\N	/images/icons/status_generic.gif	2
10001	8	Done	\N	/images/icons/status_generic.gif	3
10002	9	Code Review	\N	/images/icons/statuses/generic.png	2
\.


--
-- Data for Name: issuetype; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuetype (id, sequence, pname, pstyle, description, iconurl, avatar) FROM stdin;
10000	\N	Task		A task that needs to be done.	\N	10318
10001	\N	Sub-task	jira_subtask	The sub-task of the issue	\N	10316
10002	\N	Epic	\N	Created by JIRA Software - do not edit or delete. Issue type for a big user story that needs to be broken down.	/images/icons/issuetypes/epic.svg	\N
10003	\N	Story	\N	Created by JIRA Software - do not edit or delete. Issue type for a user story.	/images/icons/issuetypes/story.svg	\N
10004	\N	Bug		A problem which impairs or prevents the functions of the product.	\N	10303
\.


--
-- Data for Name: issuetypescreenscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuetypescreenscheme (id, name, description) FROM stdin;
1	Default Issue Type Screen Scheme	The default issue type screen scheme
10000	VMA: Project Management Issue Type Screen Scheme	
10001	VMAA: Scrum Issue Type Screen Scheme	
\.


--
-- Data for Name: issuetypescreenschemeentity; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY issuetypescreenschemeentity (id, issuetype, scheme, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10000	10000
10101	\N	10001	10001
10102	10004	10001	10002
\.


--
-- Data for Name: jiraaction; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiraaction (id, issueid, author, actiontype, actionlevel, rolelevel, actionbody, created, updateauthor, updated, actionnum) FROM stdin;
\.


--
-- Data for Name: jiradraftworkflows; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiradraftworkflows (id, parentname, descriptor) FROM stdin;
\.


--
-- Data for Name: jiraeventtype; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiraeventtype (id, template_id, name, description, event_type) FROM stdin;
1	\N	Issue Created	This is the 'issue created' event.	jira.system.event.type
2	\N	Issue Updated	This is the 'issue updated' event.	jira.system.event.type
3	\N	Issue Assigned	This is the 'issue assigned' event.	jira.system.event.type
4	\N	Issue Resolved	This is the 'issue resolved' event.	jira.system.event.type
5	\N	Issue Closed	This is the 'issue closed' event.	jira.system.event.type
6	\N	Issue Commented	This is the 'issue commented' event.	jira.system.event.type
7	\N	Issue Reopened	This is the 'issue reopened' event.	jira.system.event.type
8	\N	Issue Deleted	This is the 'issue deleted' event.	jira.system.event.type
9	\N	Issue Moved	This is the 'issue moved' event.	jira.system.event.type
10	\N	Work Logged On Issue	This is the 'work logged on issue' event.	jira.system.event.type
11	\N	Work Started On Issue	This is the 'work started on issue' event.	jira.system.event.type
12	\N	Work Stopped On Issue	This is the 'work stopped on issue' event.	jira.system.event.type
13	\N	Generic Event	This is the 'generic event' event.	jira.system.event.type
14	\N	Issue Comment Edited	This is the 'issue comment edited' event.	jira.system.event.type
15	\N	Issue Worklog Updated	This is the 'issue worklog updated' event.	jira.system.event.type
16	\N	Issue Worklog Deleted	This is the 'issue worklog deleted' event.	jira.system.event.type
17	\N	Issue Comment Deleted	This is the 'issue comment deleted' event.	jira.system.event.type
\.


--
-- Data for Name: jiraissue; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiraissue (id, pkey, issuenum, project, reporter, assignee, creator, issuetype, summary, description, environment, priority, resolution, issuestatus, created, updated, duedate, resolutiondate, votes, watches, timeoriginalestimate, timeestimate, timespent, workflow_id, security, fixfor, component) FROM stdin;
\.


--
-- Data for Name: jiraperms; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiraperms (id, permtype, projectid, groupname) FROM stdin;
\.


--
-- Data for Name: jiraworkflows; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiraworkflows (id, workflowname, creatorname, descriptor, islocked) FROM stdin;
10000	classic default workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">The classic JIRA default workflow</meta>\n  <initial-actions>\n    <action id="1" name="Create Issue">\n      <meta name="opsbar-sequence">0</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name="permission">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="Finished" status="Open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id="2" name="Close Issue" view="resolveissue">\n      <meta name="opsbar-sequence">60</meta>\n      <meta name="jira.i18n.submit">closeissue.close</meta>\n      <meta name="jira.i18n.description">closeissue.desc</meta>\n      <meta name="jira.i18n.title">closeissue.title</meta>\n      <restrict-to>\n        <conditions type="AND">\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Closed" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="3" name="Reopen Issue" view="commentassign">\n      <meta name="opsbar-sequence">80</meta>\n      <meta name="jira.i18n.submit">issue.operations.reopen.issue</meta>\n      <meta name="jira.i18n.description">issue.operations.reopen.description</meta>\n      <meta name="jira.i18n.title">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Reopened" step="5">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="4" name="Start Progress">\n      <meta name="opsbar-sequence">20</meta>\n      <meta name="jira.i18n.title">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Underway" step="3">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="5" name="Resolve Issue" view="resolveissue">\n      <meta name="opsbar-sequence">40</meta>\n      <meta name="jira.i18n.submit">resolveissue.resolve</meta>\n      <meta name="jira.i18n.description">resolveissue.desc.line1</meta>\n      <meta name="jira.i18n.title">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Resolved" step="4">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id="1" name="Open">\n      <meta name="jira.status.id">1</meta>\n      <actions>\n<common-action id="4" />\n<common-action id="5" />\n<common-action id="2" />\n      </actions>\n    </step>\n    <step id="3" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n        <action id="301" name="Stop Progress">\n          <meta name="opsbar-sequence">20</meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Assigned" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="field.name">resolution</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="4" name="Resolved">\n      <meta name="jira.status.id">5</meta>\n      <actions>\n<common-action id="3" />\n        <action id="701" name="Close Issue" view="commentassign">\n          <meta name="opsbar-sequence">60</meta>\n          <meta name="jira.i18n.submit">closeissue.close</meta>\n          <meta name="jira.i18n.description">closeissue.desc</meta>\n          <meta name="jira.i18n.title">closeissue.title</meta>\n          <meta name="jira.description">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name="permission">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Closed" step="6">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="5" name="Reopened">\n      <meta name="jira.status.id">4</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n<common-action id="4" />\n      </actions>\n    </step>\n    <step id="6" name="Closed">\n      <meta name="jira.status.id">6</meta>\n      <meta name="jira.issue.editable">false</meta>\n      <actions>\n<common-action id="3" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
10100	VMA: Project Management Workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description"></meta>\n  <meta name="jira.update.author.key">admin</meta>\n  <meta name="jira.updated.date">1498667320382</meta>\n  <initial-actions>\n    <action id="1" name="Create">\n      <meta name="jira.i18n.submit">common.forms.create</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="permission">Create Issue</arg>\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="null" status="open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">1</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <steps>\n    <step id="1" name="To Do">\n      <meta name="jira.status.id">10000</meta>\n      <actions>\n        <action id="11" name="Start Progress">\n          <meta name="jira.i18n.submit">startprogress.title</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">startprogress.title</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="2">\n              <post-functions>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="21" name="Done">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="3">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value">10000</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="2" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n        <action id="31" name="Stop Progress">\n          <meta name="jira.i18n.submit">stopprogress.title</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="41" name="Done">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="3">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value">10000</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="3" name="Done">\n      <meta name="jira.status.id">10001</meta>\n      <actions>\n        <action id="51" name="Reopen">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopen.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopen.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="61" name="Reopen and start progress">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="2">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
10101	Software Simplified Workflow for Project VMAA	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">Generated by JIRA Software version 7.3.0-DAILY20170523023608. This workflow is managed internally by JIRA Software. Do not manually modify this workflow.</meta>\n  <meta name="jira.update.author.key">admin</meta>\n  <meta name="jira.updated.date">1498667570484</meta>\n  <meta name="jira.update.author.name">admin</meta>\n  <meta name="gh.version">7.3.0-DAILY20170523023608</meta>\n  <initial-actions>\n    <action id="1" name="Create">\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="permission">Create Issue</arg>\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="null" status="To Do" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">1</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <global-actions>\n    <action id="11" name="To Do">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.todo</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="21" name="In Progress">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.inprogress</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="31" name="Done">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.done</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="11">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value">10000</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </global-actions>\n  <steps>\n    <step id="1" name="To Do">\n      <meta name="jira.status.id">10000</meta>\n    </step>\n    <step id="6" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n    </step>\n    <step id="11" name="Done">\n      <meta name="jira.status.id">10001</meta>\n    </step>\n  </steps>\n</workflow>\n	\N
10102	Copy of Software Simplified Workflow for Project VMAA	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">Generated by JIRA Software version 7.3.0-DAILY20170523023608. This workflow is managed internally by JIRA Software. Do not manually modify this workflow. (This copy was automatically generated from a draft, when workflow 'Software Simplified Workflow for Project VMAA' was made inactive.)</meta>\n  <meta name="jira.update.author.key">admin</meta>\n  <meta name="jira.updated.date">1498669327199</meta>\n  <meta name="jira.update.author.name">admin</meta>\n  <meta name="gh.version">7.3.0-DAILY20170523023608</meta>\n  <initial-actions>\n    <action id="1" name="Create">\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="permission">Create Issue</arg>\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="null" status="To Do" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">1</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <global-actions>\n    <action id="11" name="To Do">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.todo</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="21" name="In Progress">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.inprogress</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="31" name="Done">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.done</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="11">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value">10000</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </global-actions>\n  <steps>\n    <step id="1" name="To Do">\n      <meta name="jira.status.id">10000</meta>\n    </step>\n    <step id="6" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n    </step>\n    <step id="11" name="Done">\n      <meta name="jira.status.id">10001</meta>\n    </step>\n  </steps>\n</workflow>\n	\N
\.


--
-- Data for Name: jiraworkflowstatuses; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jiraworkflowstatuses (id, status, parentname) FROM stdin;
\.


--
-- Data for Name: jquartz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: jquartz_calendars; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: jquartz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
\.


--
-- Data for Name: jquartz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, is_volatile, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_stateful, is_nonconcurrent, is_update_data, requests_recovery) FROM stdin;
\.


--
-- Data for Name: jquartz_job_details; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_volatile, is_stateful, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: jquartz_job_listeners; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_job_listeners (job_name, job_group, job_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_locks; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_locks (sched_name, lock_name) FROM stdin;
\N	TRIGGER_ACCESS
\N	JOB_ACCESS
\N	CALENDAR_ACCESS
\N	STATE_ACCESS
\N	MISFIRE_ACCESS
\.


--
-- Data for Name: jquartz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: jquartz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: jquartz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: jquartz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: jquartz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_trigger_listeners (trigger_name, trigger_group, trigger_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY jquartz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, is_volatile, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY label (id, fieldid, issue, label) FROM stdin;
\.


--
-- Data for Name: licenserolesdefault; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY licenserolesdefault (id, license_role_name) FROM stdin;
10000	jira-software
\.


--
-- Data for Name: licenserolesgroup; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY licenserolesgroup (id, license_role_name, group_id, primary_group) FROM stdin;
10000	jira-software	jira-software-users	Y
10001	jira-software	jira-administrators	N
\.


--
-- Data for Name: listenerconfig; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY listenerconfig (id, clazz, listenername) FROM stdin;
10000	com.atlassian.jira.event.listeners.mail.MailListener	Mail Listener
10001	com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener	Issue Assignment Listener
10200	com.atlassian.jira.event.listeners.search.IssueIndexListener	Issue Index Listener
\.


--
-- Data for Name: mailserver; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY mailserver (id, name, description, mailfrom, prefix, smtp_port, protocol, server_type, servername, jndilocation, mailusername, mailpassword, istlsrequired, timeout, socks_port, socks_host) FROM stdin;
\.


--
-- Data for Name: managedconfigurationitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY managedconfigurationitem (id, item_id, item_type, managed, access_level, source, description_key) FROM stdin;
10000	customfield_10000	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10001	customfield_10001	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10002	customfield_10002	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10003	customfield_10003	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10004	customfield_10004	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10005	customfield_10005	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
\.


--
-- Data for Name: membershipbase; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY membershipbase (id, user_name, group_name) FROM stdin;
\.


--
-- Data for Name: moved_issue_key; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY moved_issue_key (id, old_issue_key, issue_id) FROM stdin;
\.


--
-- Data for Name: nodeassociation; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY nodeassociation (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type, sequence) FROM stdin;
\.


--
-- Data for Name: nodeindexcounter; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY nodeindexcounter (id, node_id, sending_node_id, index_operation_id) FROM stdin;
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY notification (id, scheme, event, event_type_id, template_id, notif_type, notif_parameter) FROM stdin;
10000	10000	\N	1	\N	Current_Assignee	\N
10001	10000	\N	1	\N	Current_Reporter	\N
10002	10000	\N	1	\N	All_Watchers	\N
10003	10000	\N	2	\N	Current_Assignee	\N
10004	10000	\N	2	\N	Current_Reporter	\N
10005	10000	\N	2	\N	All_Watchers	\N
10006	10000	\N	3	\N	Current_Assignee	\N
10007	10000	\N	3	\N	Current_Reporter	\N
10008	10000	\N	3	\N	All_Watchers	\N
10009	10000	\N	4	\N	Current_Assignee	\N
10010	10000	\N	4	\N	Current_Reporter	\N
10011	10000	\N	4	\N	All_Watchers	\N
10012	10000	\N	5	\N	Current_Assignee	\N
10013	10000	\N	5	\N	Current_Reporter	\N
10014	10000	\N	5	\N	All_Watchers	\N
10015	10000	\N	6	\N	Current_Assignee	\N
10016	10000	\N	6	\N	Current_Reporter	\N
10017	10000	\N	6	\N	All_Watchers	\N
10018	10000	\N	7	\N	Current_Assignee	\N
10019	10000	\N	7	\N	Current_Reporter	\N
10020	10000	\N	7	\N	All_Watchers	\N
10021	10000	\N	8	\N	Current_Assignee	\N
10022	10000	\N	8	\N	Current_Reporter	\N
10023	10000	\N	8	\N	All_Watchers	\N
10024	10000	\N	9	\N	Current_Assignee	\N
10025	10000	\N	9	\N	Current_Reporter	\N
10026	10000	\N	9	\N	All_Watchers	\N
10027	10000	\N	10	\N	Current_Assignee	\N
10028	10000	\N	10	\N	Current_Reporter	\N
10029	10000	\N	10	\N	All_Watchers	\N
10030	10000	\N	11	\N	Current_Assignee	\N
10031	10000	\N	11	\N	Current_Reporter	\N
10032	10000	\N	11	\N	All_Watchers	\N
10033	10000	\N	12	\N	Current_Assignee	\N
10034	10000	\N	12	\N	Current_Reporter	\N
10035	10000	\N	12	\N	All_Watchers	\N
10036	10000	\N	13	\N	Current_Assignee	\N
10037	10000	\N	13	\N	Current_Reporter	\N
10038	10000	\N	13	\N	All_Watchers	\N
10100	10000	\N	14	\N	Current_Assignee	\N
10101	10000	\N	14	\N	Current_Reporter	\N
10102	10000	\N	14	\N	All_Watchers	\N
10103	10000	\N	15	\N	Current_Assignee	\N
10104	10000	\N	15	\N	Current_Reporter	\N
10105	10000	\N	15	\N	All_Watchers	\N
10106	10000	\N	16	\N	Current_Assignee	\N
10107	10000	\N	16	\N	Current_Reporter	\N
10108	10000	\N	16	\N	All_Watchers	\N
\.


--
-- Data for Name: notificationinstance; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY notificationinstance (id, notificationtype, source, emailaddress, messageid) FROM stdin;
\.


--
-- Data for Name: notificationscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY notificationscheme (id, name, description) FROM stdin;
10000	Default Notification Scheme	\N
\.


--
-- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY oauthconsumer (id, created, consumername, consumer_key, consumerservice, public_key, private_key, description, callback, signature_method, shared_secret) FROM stdin;
\.


--
-- Data for Name: oauthconsumertoken; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY oauthconsumertoken (id, created, token_key, token, token_secret, token_type, consumer_key) FROM stdin;
\.


--
-- Data for Name: oauthspconsumer; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY oauthspconsumer (id, created, consumer_key, consumername, public_key, description, callback, two_l_o_allowed, executing_two_l_o_user, two_l_o_impersonation_allowed, three_l_o_allowed) FROM stdin;
\.


--
-- Data for Name: oauthsptoken; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY oauthsptoken (id, created, token, token_secret, token_type, consumer_key, username, ttl, spauth, callback, spverifier, spversion, session_handle, session_creation_time, session_last_renewal_time, session_time_to_live) FROM stdin;
\.


--
-- Data for Name: optionconfiguration; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY optionconfiguration (id, fieldid, optionid, fieldconfig, sequence) FROM stdin;
10200	issuetype	10000	10100	0
10201	issuetype	10001	10100	1
10202	issuetype	10002	10000	0
10203	issuetype	10003	10000	1
10208	issuetype	10000	10108	0
10209	issuetype	10001	10108	1
10210	issuetype	10003	10108	2
10211	issuetype	10004	10108	3
10212	issuetype	10002	10108	4
\.


--
-- Data for Name: os_currentstep; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY os_currentstep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_currentstep_prev; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY os_currentstep_prev (id, previous_id) FROM stdin;
10002	10001
10003	10000
\.


--
-- Data for Name: os_historystep; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY os_historystep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_historystep_prev; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY os_historystep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_wfentry; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY os_wfentry (id, name, initialized, state) FROM stdin;
\.


--
-- Data for Name: permissionscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY permissionscheme (id, name, description) FROM stdin;
0	Default Permission Scheme	This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
10000	Default software scheme	Default scheme for Software projects.
\.


--
-- Data for Name: pluginstate; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY pluginstate (pluginkey, pluginenabled) FROM stdin;
\.


--
-- Data for Name: pluginversion; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY pluginversion (id, pluginname, pluginkey, pluginversion, created) FROM stdin;
10000	JIRA Projects Plugin	com.atlassian.jira.jira-projects-plugin	4.3.2	2017-06-28 23:26:45.942+07
10001	Atlassian OAuth Consumer Plugin	com.atlassian.oauth.consumer	2.0.4	2017-06-28 23:26:45.955+07
10002	Atlassian JIRA - Plugins - My JIRA Home	com.atlassian.jira.jira-my-home-plugin	7.3.8	2017-06-28 23:26:45.963+07
10003	Project Creation Plugin SPI for JIRA	com.atlassian.plugins.jira-project-creation	2.0.8	2017-06-28 23:26:45.971+07
10004	Atlassian Embedded Crowd - Administration Plugin	com.atlassian.crowd.embedded.admin	2.3.3	2017-06-28 23:26:45.98+07
10005	Analytics Client Plugin	com.atlassian.analytics.analytics-client	5.3.1	2017-06-28 23:26:45.988+07
10006	jira-help-tips	com.atlassian.plugins.helptips.jira-help-tips	1.5.2	2017-06-28 23:26:45.996+07
10007	Atlassian Navigation Links Plugin	com.atlassian.plugins.atlassian-nav-links-plugin	4.3.0	2017-06-28 23:26:46.005+07
10008	Functional Extensions Scala Inter-Ops	io.atlassian.fugue.scala-4.3.1	4.3.1	2017-06-28 23:26:46.013+07
10009	Apache HttpCore OSGi bundle	org.apache.httpcomponents.httpcore-4.2.4	4.2.4	2017-06-28 23:26:46.021+07
10010	Atlassian JIRA - Plugins - Issue Web Link	com.atlassian.jira.jira-issue-link-web-plugin	7.3.8	2017-06-28 23:26:46.029+07
10011	Atlassian Hipchat Integration Plugin Core	com.atlassian.plugins.base-hipchat-integration-plugin-api	7.8.30	2017-06-28 23:26:46.038+07
10012	Project Role Actors Plugin	com.atlassian.jira.plugin.system.projectroleactors	1.0	2017-06-28 23:26:46.046+07
10013	Atlassian JIRA - Plugins - OAuth Service Provider SPI	com.atlassian.jira.oauth.serviceprovider	7.3.8	2017-06-28 23:26:46.054+07
10014	Apache HttpClient OSGi bundle	org.apache.httpcomponents.httpclient-4.2.5	4.2.5	2017-06-28 23:26:46.062+07
10015	Keyboard Shortcuts Plugin	jira.keyboard.shortcuts	1.0	2017-06-28 23:26:46.071+07
10016	Bitbucket Importer Plugin for JIM	com.atlassian.jira.plugins.jira-importers-bitbucket-plugin	1.0.15	2017-06-28 23:26:46.079+07
10017	Atlassian Remote Event Common Plugin	com.atlassian.plugins.atlassian-remote-event-common-plugin	1.0.9-D20151109T070900	2017-06-28 23:26:46.087+07
10018	JIRA GitHub Issue Importer	com.atlassian.jira.plugins.jira-importers-github-plugin	2.0.11	2017-06-28 23:26:46.095+07
10019	JIRA Password Policy Plugin	com.atlassian.jira.plugins.jira-password-policy-plugin	2.0.2	2017-06-28 23:26:46.104+07
10020	ROME: RSS/Atom syndication and publishing tools	com.springsource.com.sun.syndication-0.9.0	0.9.0	2017-06-28 23:26:46.112+07
10021	JIRA iCalendar Plugin	com.atlassian.jira.extra.jira-ical-feed	1.4.7	2017-06-28 23:26:46.12+07
10022	JIRA Drag and Drop Attachment Plugin	com.atlassian.jira.plugins.jira-dnd-attachment-plugin	4.4.11	2017-06-28 23:26:46.128+07
10023	Atlassian JIRA - Plugins - Post setup announcements plugin	com.atlassian.jira.jira-postsetup-announcements-plugin	7.3.8	2017-06-28 23:26:46.137+07
10024	Streams Inline Actions Plugin	com.atlassian.streams.actions	6.0.17	2017-06-28 23:26:46.145+07
10025	Comment Panel Plugin	com.atlassian.jira.plugin.system.comment-panel	1.0	2017-06-28 23:26:46.153+07
10026	Atlassian Remote Event Consumer Plugin	com.atlassian.plugins.atlassian-remote-event-consumer-plugin	1.0.9-D20151109T070900	2017-06-28 23:26:46.161+07
10027	scala-2.11-provider-plugin	com.atlassian.scala.plugins.scala-2.11-provider-plugin	0.12	2017-06-28 23:26:46.17+07
10028	JIRA Workflow Transition Tabs	com.atlassian.jira.plugin.system.workfloweditor.transition.tabs	1.0	2017-06-28 23:26:46.178+07
10029	Renderer Plugin	com.atlassian.jira.plugin.system.jirarenderers	1.0	2017-06-28 23:26:46.186+07
10030	Atlassian Gadgets OAuth Service Provider Plugin	com.atlassian.gadgets.oauth.serviceprovider	4.2.16	2017-06-28 23:26:46.194+07
10031	JIRA Core Japanese (Japan) Language Pack	tac.jira core.languages.ja_JP	7.3.7.v2r1407-2017-06-05	2017-06-28 23:26:46.203+07
10032	Atlassian JIRA - Plugins - Admin Navigation Component	com.atlassian.jira.jira-admin-navigation-plugin	7.3.8	2017-06-28 23:26:46.211+07
10033	JIRA Core German (Germany) Language Pack	tac.jira core.languages.de_DE	7.3.7.v2r549-2017-06-06	2017-06-28 23:26:46.219+07
10034	Atlassian Plugins - Web Resources - Implementation Plugin	com.atlassian.plugins.atlassian-plugins-webresource-plugin	3.5.39	2017-06-28 23:26:46.228+07
10035	Preset Filters Sections	jira.webfragments.preset.filters	1.0	2017-06-28 23:26:46.236+07
10036	Atlassian JIRA - Plugins - Project Config Plugin	com.atlassian.jira.jira-project-config-plugin	7.3.8	2017-06-28 23:26:46.244+07
10037	Crowd System Password Encoders	crowd.system.passwordencoders	1.0	2017-06-28 23:26:46.252+07
10038	Atlassian UI Plugin	com.atlassian.auiplugin	6.0.0	2017-06-28 23:26:46.26+07
10039	Atlassian JIRA - Plugins - Share Content Component	com.atlassian.jira.jira-share-plugin	7.3.8	2017-06-28 23:26:46.268+07
10040	Atlassian JIRA - Plugins - Remote JIRA Link	com.atlassian.jira.jira-issue-link-remote-jira-plugin	7.3.8	2017-06-28 23:26:46.277+07
10041	Remote Link Aggregator Plugin	com.atlassian.plugins.remote-link-aggregator-plugin	2.0.14	2017-06-28 23:26:46.285+07
10042	Atlassian HealthCheck Common Module	com.atlassian.healthcheck.atlassian-healthcheck	3.0.1	2017-06-28 23:26:46.294+07
10043	Workbox - Common Plugin	com.atlassian.mywork.mywork-common-plugin	5.0.3	2017-06-28 23:26:46.301+07
10044	JIRA Workflow Sharing Plugin	com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin	2.1.4	2017-06-28 23:26:46.31+07
10045	Entity property conditions	system.entity.property.conditions	1.0	2017-06-28 23:26:46.318+07
10046	JQL Functions	jira.jql.function	1.0	2017-06-28 23:26:46.327+07
10047	Atlassian Soy - Plugin	com.atlassian.soy.soy-template-plugin	4.3.0	2017-06-28 23:26:46.334+07
10048	atlassian-failure-cache-plugin	com.atlassian.atlassian-failure-cache-plugin	0.15	2017-06-28 23:26:46.343+07
10049	Atlassian JIRA - Plugins - View Issue Panels	com.atlassian.jira.jira-view-issue-plugin	7.3.8	2017-06-28 23:26:46.353+07
10050	JIRA Footer	jira.footer	1.0	2017-06-28 23:26:46.36+07
10051	Applinks - Plugin - Core	com.atlassian.applinks.applinks-plugin	5.2.6	2017-06-28 23:26:46.368+07
10052	Analytics Whitelist Plugin	com.atlassian.analytics.analytics-whitelist	3.59	2017-06-28 23:26:46.377+07
10053	Atlassian JIRA - Plugins - Invite User	com.atlassian.jira.jira-invite-user-plugin	2.2.1	2017-06-28 23:26:46.384+07
10054	Applinks - Plugin - Basic Authentication	com.atlassian.applinks.applinks-basicauth-plugin	5.2.6	2017-06-28 23:26:46.393+07
10055	User Profile Links	jira.webfragments.user.profile.links	1.0	2017-06-28 23:26:46.401+07
10056	Admin Menu Sections	jira.webfragments.admin	1.0	2017-06-28 23:26:46.409+07
10057	wiki-editor	com.atlassian.jira.plugins.jira-wiki-editor	1.11.14	2017-06-28 23:26:46.417+07
10058	Support Tools Plugin	com.atlassian.support.stp	3.10.7	2017-06-28 23:26:46.425+07
10059	Atlassian OAuth Service Provider SPI	com.atlassian.oauth.atlassian-oauth-service-provider-spi	2.0.4	2017-06-28 23:26:46.433+07
10060	Atlassian Whitelist API Plugin	com.atlassian.plugins.atlassian-whitelist-api-plugin	1.18	2017-06-28 23:26:46.442+07
10061	Top Navigation Bar	jira.top.navigation.bar	1.0	2017-06-28 23:26:46.45+07
10062	Applinks - Plugin - Trusted Apps	com.atlassian.applinks.applinks-trustedapps-plugin	5.2.6	2017-06-28 23:26:46.458+07
10063	Wiki Renderer Macros Plugin	com.atlassian.jira.plugin.system.renderers.wiki.macros	1.0	2017-06-28 23:26:46.466+07
10064	Issue Views Plugin	jira.issueviews	1.0	2017-06-28 23:26:46.475+07
10065	Streams SPI	com.atlassian.streams.streams-spi	6.0.17	2017-06-28 23:26:46.483+07
10066	Applinks - Plugin - CORS	com.atlassian.applinks.applinks-cors-plugin	5.2.6	2017-06-28 23:26:46.491+07
10067	Streams Third Party Provider Plugin	com.atlassian.streams.streams-thirdparty-plugin	6.0.17	2017-06-28 23:26:46.499+07
10068	Atlassian OAuth Service Provider Plugin	com.atlassian.oauth.serviceprovider	2.0.4	2017-06-28 23:26:46.508+07
10069	Atlassian JIRA - Plugins - Common AppLinks Based Issue Link Plugin	com.atlassian.jira.jira-issue-link-applinks-common-plugin	7.3.8	2017-06-28 23:26:46.516+07
10070	Web Resources Plugin	jira.webresources	1.0	2017-06-28 23:26:46.524+07
10071	Embedded Gadgets Plugin	com.atlassian.gadgets.embedded	4.2.16	2017-06-28 23:26:46.532+07
10072	Functional Optics Library	io.atlassian.fugue.optics-4.3.1	4.3.1	2017-06-28 23:26:46.541+07
10073	Atlassian JIRA - Plugins - Core Reports	com.atlassian.jira.jira-core-reports-plugin	7.3.8	2017-06-28 23:26:46.549+07
10074	Streams Plugin	com.atlassian.streams	6.0.17	2017-06-28 23:26:46.557+07
10075	Browse Project Operations Sections	jira.webfragments.browse.project.links	1.0	2017-06-28 23:26:46.565+07
10076	JIRA Issue Collector Plugin	com.atlassian.jira.collector.plugin.jira-issue-collector-plugin	2.0.23	2017-06-28 23:26:46.574+07
10077	JIRA Core Russian (Russia) Language Pack	tac.jira core.languages.ru_RU	7.3.7.v2r2183-2017-06-05	2017-06-28 23:26:46.582+07
10078	Functional Extensions Retry Inter-Ops	io.atlassian.fugue.retry-4.3.1	4.3.1	2017-06-28 23:26:46.59+07
10079	ICU4J	com.atlassian.bundles.icu4j-3.8.0.1	3.8.0.1	2017-06-28 23:26:46.598+07
10080	Streams Core Plugin	com.atlassian.streams.core	6.0.17	2017-06-28 23:26:46.607+07
10081	Atlassian JIRA - Plugins - WebHooks Plugin	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	7.3.8	2017-06-28 23:26:46.615+07
10082	Issue Operations Plugin	com.atlassian.jira.plugin.system.issueoperations	1.0	2017-06-28 23:26:46.623+07
10083	Gadget Directory Plugin	com.atlassian.gadgets.directory	4.2.16	2017-06-28 23:26:46.631+07
10084	Attach Image for JIRA	com.atlassian.plugins.jira-html5-attach-images	4.0.0	2017-06-28 23:26:46.64+07
10085	JIRA Monitoring Plugin	com.atlassian.jira.jira-monitoring-plugin	05.7.0	2017-06-28 23:26:46.648+07
10086	Atlassian Hipchat Integration Plugin	com.atlassian.plugins.base-hipchat-integration-plugin	7.8.30	2017-06-28 23:26:46.657+07
10087	Atlassian JIRA - Plugins - Project Centric Issue Navigator	com.atlassian.jira.jira-projects-issue-navigator	8.2.6	2017-06-28 23:26:46.664+07
10088	jira-importers-plugin	com.atlassian.jira.plugins.jira-importers-plugin	7.1.30	2017-06-28 23:26:46.673+07
10089	Atlassian Plugins - JavaScript libraries	com.atlassian.plugin.jslibs	0.10.0	2017-06-28 23:26:46.681+07
10090	JIRA Time Zone Detection plugin	com.atlassian.jira.jira-tzdetect-plugin	2.3.1	2017-06-28 23:26:46.69+07
10091	HipChat for JIRA	com.atlassian.labs.hipchat.hipchat-for-jira-plugin	7.8.30	2017-06-28 23:26:46.697+07
10092	JSON Library	com.atlassian.bundles.json-20070829.0.0.1	20070829.0.0.1	2017-06-28 23:26:46.705+07
10093	JDOM DOM Processor	com.springsource.org.jdom-1.0.0	1.0.0	2017-06-28 23:26:46.714+07
10094	JIRA Core Chinese (China) Language Pack	tac.jira core.languages.zh_CN	7.3.7.v2r4420-2017-06-08	2017-06-28 23:26:46.722+07
10095	Atlassian JIRA - Plugins - Feedback Plugin	com.atlassian.feedback.jira-feedback-plugin	7.3.8	2017-06-28 23:26:46.73+07
10096	ActiveObjects Plugin - OSGi Bundle	com.atlassian.activeobjects.activeobjects-plugin	1.2.3	2017-06-28 23:26:46.738+07
10097	Atlassian JIRA - Plugins - Header Plugin	com.atlassian.jira.jira-header-plugin	7.3.8	2017-06-28 23:26:46.747+07
10098	Issue Tab Panels Plugin	com.atlassian.jira.plugin.system.issuetabpanels	1.0	2017-06-28 23:26:46.755+07
10099	JIRA Feature Keys	jira.feature.keys	1.0	2017-06-28 23:26:46.763+07
10100	JIRA Streams Inline Actions Plugin	com.atlassian.streams.jira.inlineactions	6.0.17	2017-06-28 23:26:46.771+07
10101	Atlassian JIRA - Plugins - Application Properties	com.atlassian.jira.jira-application-properties-plugin	7.3.8	2017-06-28 23:26:46.788+07
10102	Atlassian JIRA - Plugins - Gadgets Plugin	com.atlassian.jira.gadgets	7.3.8	2017-06-28 23:26:46.796+07
10103	Atlassian JIRA - Plugins - Analytics whitelist	com.atlassian.jira.jira-analytics-whitelist-plugin	7.3.8	2017-06-28 23:26:46.805+07
10104	jira-inline-issue-create-plugin	com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin	1.4.0	2017-06-28 23:26:46.813+07
10105	Workbox - JIRA Provider Plugin	com.atlassian.mywork.mywork-jira-provider-plugin	5.0.3	2017-06-28 23:26:46.821+07
10106	JIRA Core Korean (South Korea) Language Pack	tac.jira core.languages.ko_KR	7.3.7.v2r727-2017-06-05	2017-06-28 23:26:46.829+07
10107	Content Link Resolvers Plugin	com.atlassian.jira.plugin.wiki.contentlinkresolvers	1.0	2017-06-28 23:26:46.838+07
10108	Atlassian Application Manager plugin	com.atlassian.upm.upm-application-plugin	2.21	2017-06-28 23:26:46.846+07
10109	JIRA Core Spanish (Spain) Language Pack	tac.jira core.languages.es_ES	7.3.7.v2r507-2017-06-06	2017-06-28 23:26:46.854+07
10110	JIRA Mobile	com.atlassian.jira.mobile	3.1.2	2017-06-28 23:26:46.862+07
10111	Atlassian JIRA - Plugins - Onboarding	com.atlassian.jira.jira-onboarding-assets-plugin	7.3.8	2017-06-28 23:26:46.871+07
10112	Atlassian JIRA - Admin Helper Plugin	com.atlassian.jira.plugins.jira-admin-helper-plugin	4.1.5	2017-06-28 23:26:46.879+07
10113	Atlassian browser metrics plugin	com.atlassian.plugins.browser.metrics.browser-metrics-plugin	5.0.0	2017-06-28 23:26:46.887+07
10114	Atlassian JIRA - Plugins - Global Issue Navigator	com.atlassian.jira.jira-issue-nav-plugin	8.2.6	2017-06-28 23:26:46.895+07
10115	User Navigation Bar Sections	jira.webfragments.user.navigation.bar	1.0	2017-06-28 23:26:46.903+07
10116	Atlassian JIRA - Plugins - Instance Health Plugin	com.atlassian.jira.plugins.jira-healthcheck-plugin	2.5.3	2017-06-28 23:26:46.912+07
10117	Neko HTML	com.atlassian.bundles.nekohtml-1.9.12.1	1.9.12.1	2017-06-28 23:26:46.92+07
10118	JIRA Global Permissions	jira.system.global.permissions	1.0	2017-06-28 23:26:46.928+07
10119	Atlassian Template Renderer API	com.atlassian.templaterenderer.api	2.0.0	2017-06-28 23:26:46.936+07
10120	Atlassian JIRA - Plugins - File viewer plugin	com.atlassian.jira.jira-fileviewer-plugin	7.2.1	2017-06-28 23:26:46.944+07
10121	Atlassian Pretty URLs Plugin	com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2.1.2	2017-06-28 23:26:46.953+07
10122	JIRA Attachment Archive File Processors	jira.system.attachment.processors	1.0	2017-06-28 23:26:46.961+07
10123	Atlassian JIRA - Plugins - Admin Upgrades	com.atlassian.jira.jira-admin-updates-plugin	7.3.8	2017-06-28 23:26:46.969+07
10124	Atlassian Universal Plugin Manager Plugin	com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2.21	2017-06-28 23:26:46.978+07
10125	SAML for Atlassian Data Center	com.atlassian.plugins.authentication.atlassian-authentication-plugin	2.0.3	2017-06-28 23:26:46.986+07
10126	Atlassian Whitelist UI Plugin	com.atlassian.plugins.atlassian-whitelist-ui-plugin	1.18	2017-06-28 23:26:46.994+07
10127	JIRA Core Portuguese (Brazil) Language Pack	tac.jira core.languages.pt_BR	7.3.7.v2r1663-2017-06-05	2017-06-28 23:26:47.002+07
10128	Redmine Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-redmine-plugin	2.1.6	2017-06-28 23:26:47.011+07
10129	Atlassian JIRA - Plugins - Quick Edit Plugin	com.atlassian.jira.jira-quick-edit-plugin	3.2.0	2017-06-28 23:26:47.019+07
10130	Soy Function Plugin	com.atlassian.jira.plugin.system.soyfunction	1.0	2017-06-28 23:26:47.027+07
10131	Universal Plugin Manager - Role-Based Licensing Implementation Plugin	com.atlassian.upm.role-based-licensing-plugin	2.21	2017-06-28 23:26:47.035+07
10132	JIRA Core Project Templates Plugin	com.atlassian.jira-core-project-templates	6.1.9	2017-06-28 23:26:47.044+07
10133	Atlassian OAuth Admin Plugin	com.atlassian.oauth.admin	2.0.4	2017-06-28 23:26:47.052+07
10134	Atlassian REST - Module Types	com.atlassian.plugins.rest.atlassian-rest-module	3.2.11	2017-06-28 23:26:47.061+07
10135	Crowd REST API	crowd-rest-application-management	1.0	2017-06-28 23:26:47.068+07
10136	jira-issue-nav-components	com.atlassian.jira.jira-issue-nav-components	8.2.6	2017-06-28 23:26:47.077+07
10137	jquery	com.atlassian.plugins.jquery	1.7.2.1	2017-06-28 23:26:47.085+07
10138	JIRA Auditing Plugin	com.atlassian.jira.plugins.jira-auditing-plugin	1.9.2	2017-06-28 23:26:47.093+07
10139	JIRA Remote Link Aggregator Plugin	com.atlassian.plugins.jira-remote-link-aggregator-plugin	2.0.14	2017-06-28 23:26:47.101+07
10140	Streams API	com.atlassian.streams.streams-api	6.0.17	2017-06-28 23:26:47.11+07
10141	Atlassian HTTP Client, Apache HTTP components impl	com.atlassian.httpclient.atlassian-httpclient-plugin	0.23.3	2017-06-28 23:26:47.118+07
10142	Asana Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-asana-plugin	1.0.5	2017-06-28 23:26:47.126+07
10143	Atlassian Awareness Capability	com.atlassian.plugins.atlassian-awareness-capability	0.0.6	2017-06-28 23:26:47.134+07
10144	Atlassian Plugins - Web Resources REST	com.atlassian.plugins.atlassian-plugins-webresource-rest	3.5.39	2017-06-28 23:26:47.143+07
10145	Custom Field Types & Searchers	com.atlassian.jira.plugin.system.customfieldtypes	1.0	2017-06-28 23:26:47.151+07
10146	Project Creation Capability Product REST Plugin	com.atlassian.plugins.atlassian-project-creation-plugin	2.0.8	2017-06-28 23:26:47.16+07
10147	Atlassian JIRA - Plugins - REST Plugin	com.atlassian.jira.rest	7.3.8	2017-06-28 23:26:47.167+07
10148	Atlassian Spring Scanner Runtime	com.atlassian.plugin.atlassian-spring-scanner-runtime	2.0.0	2017-06-28 23:26:47.176+07
10149	Opensocial Plugin	com.atlassian.gadgets.opensocial	4.2.16	2017-06-28 23:26:47.184+07
10150	Atlassian JIRA - Plugins - Confluence Link	com.atlassian.jira.jira-issue-link-confluence-plugin	7.3.8	2017-06-28 23:26:47.193+07
10151	Atlassian Net Promoter Score	com.atlassian.plugins.atlassian-nps-plugin	3.1.25	2017-06-28 23:26:47.201+07
10152	ROME, RSS and atOM utilitiEs for Java	rome.rome-1.0	1.0	2017-06-28 23:26:47.209+07
10153	User Format	jira.user.format	1.0	2017-06-28 23:26:47.217+07
10154	View Project Operations Sections	jira.webfragments.view.project.operations	1.0	2017-06-28 23:26:47.225+07
10155	atlassian-servlet-plugin	com.atlassian.web.atlassian-servlet-plugin	5.1.1	2017-06-28 23:26:47.233+07
10156	Crowd REST API	crowd-rest-plugin	1.0	2017-06-28 23:26:47.242+07
10157	Atlassian OAuth Consumer SPI	com.atlassian.oauth.atlassian-oauth-consumer-spi	2.0.4	2017-06-28 23:26:47.25+07
10158	Functional Extensions Guava Inter-Ops	io.atlassian.fugue.guava-4.3.1	4.3.1	2017-06-28 23:26:47.258+07
10159	Atlassian Spring Scanner Annotations	com.atlassian.plugin.atlassian-spring-scanner-annotation	2.0.0	2017-06-28 23:26:47.266+07
10160	jackson-module-scala-2.10-provider	com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin	0.5	2017-06-28 23:26:47.275+07
10161	Functional Extensions	io.atlassian.fugue-4.3.1	4.3.1	2017-06-28 23:26:47.283+07
10162	Rich Text Editor for JIRA	com.atlassian.jira.plugins.jira-editor-plugin	1.2.31	2017-06-28 23:26:47.291+07
10163	Workflow Plugin	com.atlassian.jira.plugin.system.workflow	1.0	2017-06-28 23:26:47.299+07
10164	Support Healthcheck Plugin	com.atlassian.support.healthcheck.support-healthcheck-plugin	2.3.0	2017-06-28 23:26:47.308+07
10165	jira-importers-trello-plugin	com.atlassian.jira.plugins.jira-importers-trello-plugin	2.0.2	2017-06-28 23:26:47.316+07
10166	Icon Types Plugin	jira.icontypes	1.0	2017-06-28 23:26:47.324+07
10167	Atlassian WebHooks Plugin	com.atlassian.webhooks.atlassian-webhooks-plugin	3.2.3	2017-06-28 23:26:47.333+07
10168	Help Paths Plugin	jira.help.paths	1.0	2017-06-28 23:26:47.341+07
10169	JIRA Base URL Plugin	com.atlassian.jira.jira-baseurl-plugin	2.0	2017-06-28 23:26:47.349+07
10170	Atlassian JIRA - Plugins - Look And Feel Logo Upload Plugin	com.atlassian.jira.lookandfeel	7.3.8	2017-06-28 23:26:47.357+07
10171	Issue Status Plugin	com.atlassian.plugins.issue-status-plugin	1.1.7	2017-06-28 23:26:47.366+07
10172	Gadget Spec Publisher Plugin	com.atlassian.gadgets.publisher	4.2.16	2017-06-28 23:26:47.374+07
10173	Atlassian JIRA - Plugins - OAuth Consumer SPI	com.atlassian.jira.oauth.consumer	7.3.8	2017-06-28 23:26:47.382+07
10174	JIRA Core French (France) Language Pack	tac.jira core.languages.fr_FR	7.3.7.v2r443-2017-06-05	2017-06-28 23:26:47.39+07
10175	Renderer Component Factories Plugin	com.atlassian.jira.plugin.wiki.renderercomponentfactories	1.0	2017-06-28 23:26:47.398+07
10176	Atlassian LESS Transformer Plugin	com.atlassian.plugins.less-transformer-plugin	3.3.2	2017-06-28 23:26:47.407+07
10177	Pocketknife Feature Flags Plugin	com.atlassian.pocketknife.featureflags-plugin	0.5.4	2017-06-28 23:26:47.415+07
10178	Atlassian Bot Session Killer	com.atlassian.labs.atlassian-bot-killer	1.7.9	2017-06-28 23:26:47.423+07
10179	User Profile Panels	jira.user.profile.panels	1.0	2017-06-28 23:26:47.431+07
10180	scala-2.10-provider-plugin	com.atlassian.scala.plugins.scala-2.10-provider-plugin	0.9	2017-06-28 23:26:47.44+07
10181	Atlassian JIRA - Plugins - ActiveObjects SPI	com.atlassian.jira.jira-activeobjects-spi-plugin	7.3.8	2017-06-28 23:26:47.448+07
10182	JIRA Project Permissions	jira.system.project.permissions	1.0	2017-06-28 23:26:47.456+07
10183	Wallboard Plugin	com.atlassian.jirawallboard.atlassian-wallboard-plugin	2.2.6	2017-06-28 23:26:47.465+07
10184	Atlassian JIRA - Plugins - User Profile Plugin	com.atlassian.jira.jira-user-profile-plugin	3.0.5	2017-06-28 23:26:47.473+07
10185	Project Templates Plugin	com.atlassian.jira.project-templates-plugin	6.1.9	2017-06-28 23:26:47.481+07
10186	Atlassian Notifications	com.atlassian.whisper.atlassian-whisper-plugin	1.0.17	2017-06-28 23:26:47.49+07
10187	Filter Deletion Warning Plugin	jira.filter.deletion.warning	1.0	2017-06-28 23:26:47.497+07
10188	English (United States) Language Pack	com.atlassian.jira.jira-languages.en_US	7.3.8	2017-06-28 23:26:47.506+07
10189	Atlassian JIRA - Plugins - LESS integration	com.atlassian.jira.jira-less-integration	7.3.8	2017-06-28 23:26:47.514+07
10190	Atlassian JIRA - Plugins - SAL Plugin	com.atlassian.sal.jira	7.3.8	2017-06-28 23:26:47.522+07
10191	Atlassian Template Renderer Velocity 1.6 Plugin	com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	2.0.0	2017-06-28 23:26:47.53+07
10192	Atlassian JIRA - Plugins - Mail Plugin	com.atlassian.jira.jira-mail-plugin	10.0.3	2017-06-28 23:26:47.539+07
10193	Atlassian JIRA - Plugins - Closure Template Renderer	com.atlassian.jira.jira-soy-plugin	7.3.8	2017-06-28 23:26:47.547+07
10194	JIRA Workflow Designer Plugin	com.atlassian.jira.plugins.jira-workflow-designer	7.3.6	2017-06-28 23:26:47.555+07
10195	Gadget Dashboard Plugin	com.atlassian.gadgets.dashboard	4.2.16	2017-06-28 23:26:47.563+07
10196	Atlassian - Administration - Quick Search - JIRA	com.atlassian.administration.atlassian-admin-quicksearch-jira	2.3.3	2017-06-28 23:26:47.571+07
10197	Web Panel Plugin	jira.webpanels	1.0	2017-06-28 23:26:47.58+07
10198	Applinks - Plugin - OAuth	com.atlassian.applinks.applinks-oauth-plugin	5.2.6	2017-06-28 23:26:47.588+07
10199	JIRA browser metrics integration plugin	com.atlassian.jira.plugins.jira-browser-metrics	2.0.2	2017-06-28 23:26:47.596+07
10200	JIRA Activity Stream Plugin	com.atlassian.streams.streams-jira-plugin	6.0.17	2017-06-28 23:26:47.654+07
10201	English (United Kingdom) Language Pack	com.atlassian.jira.jira-languages.en_UK	7.3.8	2017-06-28 23:26:47.671+07
10202	JIRA Usage Hints	jira.usage.hints	1.0	2017-06-28 23:26:47.679+07
10300	JIRA for Software Plugin	com.atlassian.jira.plugins.jira-software-plugin	2.2.0	2017-06-28 23:30:59.01+07
10301	JIRA Agile	com.pyxis.greenhopper.jira	7.3.0-DAILY20170523023608	2017-06-28 23:31:01.56+07
10302	Atlassian JIRA - Plugins - Transition Trigger Plugin	com.atlassian.jira.plugins.jira-transition-triggers-plugin	4.0.8	2017-06-28 23:31:14.388+07
10303	JIRA Bamboo Plugin	com.atlassian.jira.plugin.ext.bamboo	7.4.5	2017-06-28 23:31:14.637+07
10304	JIRA DVCS Connector Plugin	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	4.1.3	2017-06-28 23:31:30.659+07
10305	JIRA Software Application	com.atlassian.jira.jira-software-application	7.3.8	2017-06-28 23:31:30.659+07
10306	Atlassian JIRA - Plugins - Development Integration Plugin	com.atlassian.jira.plugins.jira-development-integration-plugin	4.1.5	2017-06-28 23:31:31.31+07
10307	FishEye Plugin	com.atlassian.jirafisheyeplugin	7.1.5	2017-06-28 23:31:32.413+07
10308	JIRA Software Monitor Plugin	com.atlassian.jira.plugins.jira-software-monitor-plugin	0.1.0-D20150923T085539	2017-06-28 23:31:34.058+07
10309	JIRA Software French (France) Language Pack	tac.jira software.languages.fr_FR	7.3.0.int-0135-v2r61-2016-12-05	2017-06-28 23:31:34.122+07
10310	JIRA Software Spanish (Spain) Language Pack	tac.jira software.languages.es_ES	7.3.0.int-0135-v2r38-2016-12-05	2017-06-28 23:31:34.153+07
10311	JIRA Software German (Germany) Language Pack	tac.jira software.languages.de_DE	7.3.0.int-0135-v2r74-2016-12-05	2017-06-28 23:31:34.172+07
10312	JIRA Software Russian (Russia) Language Pack	tac.jira software.languages.ru_RU	7.3.0.int-0135-v2r106-2016-12-05	2017-06-28 23:31:34.185+07
10313	JIRA Software Portuguese (Brazil) Language Pack	tac.jira software.languages.pt_BR	7.3.0.int-0135-v2r906-2016-12-05	2017-06-28 23:31:34.204+07
10314	JIRA Software Korean (South Korea) Language Pack	tac.jira software.languages.ko_KR	7.3.0.int-0135-v2r49-2016-12-05	2017-06-28 23:31:34.217+07
10315	JIRA Software English (United States) Language Pack	tac.jira software.languages.en_US	7.3.0.int-0135-v2r60-2016-11-24	2017-06-28 23:31:34.229+07
10316	JIRA Software Chinese (China) Language Pack	tac.jira software.languages.zh_CN	7.3.0.int-0135-v2r387-2017-03-06	2017-06-28 23:31:34.242+07
\.


--
-- Data for Name: portalpage; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY portalpage (id, username, pagename, description, sequence, fav_count, layout, ppversion) FROM stdin;
10000	\N	System Dashboard	\N	0	0	AA	0
\.


--
-- Data for Name: portletconfiguration; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY portletconfiguration (id, portalpage, portlet_id, column_number, positionseq, gadget_xml, color, dashboard_module_complete_key) FROM stdin;
10000	10000	\N	0	0	\N	\N	com.atlassian.jira.gadgets:introduction-dashboard-item
10002	10000	\N	1	0	rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml	\N	\N
10003	10000	\N	1	1	rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml	\N	\N
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY priority (id, sequence, pname, description, iconurl, status_color) FROM stdin;
1	1	Highest	This problem will block progress.	/images/icons/priorities/highest.png	#d04437
2	2	High	Serious problem that could block progress.	/images/icons/priorities/high.png	#f15C75
3	3	Medium	Has the potential to affect progress.	/images/icons/priorities/medium.png	#f79232
4	4	Low	Minor problem or easily worked around.	/images/icons/priorities/low.png	#707070
5	5	Lowest	Trivial problem with little or no impact on progress.	/images/icons/priorities/lowest.png	#999999
\.


--
-- Data for Name: productlicense; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY productlicense (id, license) FROM stdin;
10000	AAABdQ0ODAoPeNp9kU1PwkAQhu/7K5p40cM2tAoFkk3EdhNLykcoqAcvaxlgDWyb2S3Kv7e0NYJ8HGd29p3nfefmFeZWP1eW27Ycp+s2u82G5QdTy204HlkigFqlWQZoRzIBpYHPpZGpYnw45ZPxJIw5GeabD8DRYqYBNaMO+ZQo7JPuOMdkJTQEwgDby9NGi7odUgtPdxkMxQaYPxoM+MQPe9HvE//OJO4O/nnUbRM/VUYkhg+EXDO1EsZWy3wH6nEuVap32t4qEgNuAcOAPc3eZjSKHjzq9eIpfW62aswM03meGHtfUJ0uzJdAsAtduQVmMIdq7LL7Mxmds1JQKgNKqOSCnSs0J1HWewpfURjEfEijTufec1otUhTsqHFFNjYCDSBbiLUGMsKlUFKL0l9QRUh8hLLx/2brCuCl4NmPu0cpQGEUM5S6DjAAnaDMSuF+OOlZcU1g3Vb3uXvvWnwr1nm5q0K+dIFz2R4uP/z3p1nVPxsEABswLAIUEkmnjh7y5UfYRbefZzPPIARuDoUCFGBIDGSRYLTtRjeerK0eVQ38XBTrX02i6
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY project (id, pname, url, lead, description, pkey, pcounter, assigneetype, avatar, originalkey, projecttype) FROM stdin;
\.


--
-- Data for Name: project_key; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY project_key (id, project_id, project_key) FROM stdin;
\.


--
-- Data for Name: projectcategory; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY projectcategory (id, cname, description) FROM stdin;
\.


--
-- Data for Name: projectchangedtime; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY projectchangedtime (project_id, issue_changed_time) FROM stdin;
\.


--
-- Data for Name: projectrole; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY projectrole (id, name, description) FROM stdin;
10002	Administrators	A project role that represents administrators in a project
\.


--
-- Data for Name: projectroleactor; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY projectroleactor (id, pid, projectroleid, roletype, roletypeparameter) FROM stdin;
10002	\N	10002	atlassian-group-role-actor	jira-administrators
\.


--
-- Data for Name: projectversion; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY projectversion (id, project, vname, description, sequence, released, archived, url, startdate, releasedate) FROM stdin;
\.


--
-- Data for Name: propertydata; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertydata (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertydate; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertydate (id, propertyvalue) FROM stdin;
11028	2017-06-28 23:31:31.862+07
\.


--
-- Data for Name: propertydecimal; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertydecimal (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertyentry; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertyentry (id, entity_name, entity_id, property_key, propertytype) FROM stdin;
11382	jira.properties	1	com.pyxis.greenhopper.jira:default.permission.scheme.id	5
11383	ApplicationUser	10000	GH.RapidViewSelected	1
11384	ApplicationUser	10000	last-visited-item.10001	5
11401	ApplicationUser	10000	workflow-mode	5
6	jira.properties	1	jira.avatar.user.anonymous.id	5
7	jira.properties	1	jira.scheme.default.issue.type	5
9	jira.properties	1	jira.whitelist.disabled	1
10	jira.properties	1	jira.whitelist.rules	6
11	jira.properties	1	jira.option.timetracking	1
12	jira.properties	1	jira.timetracking.estimates.legacy.behaviour	1
13	jira.properties	1	jira.version	5
14	jira.properties	1	jira.downgrade.minimum.version	5
15	jira.properties	1	jira.option.allowunassigned	1
16	jira.properties	1	jira.path.index.use.default.directory	1
21	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47	6
22	jira.properties	1	jira.onboarding.app_user.id.threshold	5
23	jira.properties	1	post.migration.page.displayed	1
1	jira.properties	1	jira.version.patched	5
2	jira.properties	1	jira.avatar.issuetype.subtask.default.id	5
3	jira.properties	1	jira.avatar.default.id	5
4	jira.properties	1	jira.avatar.issuetype.default.id	5
5	jira.properties	1	jira.avatar.user.default.id	5
10100	jira.properties	1	jira.webresource.superbatch.flushcounter	5
10101	jira.properties	1	jira.i18n.language.index	5
10102	jira.properties	1	jira.sid.key	5
10103	jira.properties	1	AO_587B34_#	5
10200	jira.properties	1	AO_4AEACD_#	5
10201	jira.properties	1	jira.webresource.flushcounter	5
10202	jira.properties	1	jira.mail.send.disabled	1
10203	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedBy	5
10204	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedDate	5
10205	jira.properties	1	webwork.i18n.encoding	5
10206	jira.properties	1	AO_550953_#	5
10207	jira.properties	1	jira.title	5
10208	jira.properties	1	jira.baseurl	5
10209	jira.properties	1	jira.mode	5
10210	jira.properties	1	jira.path.attachments	5
10211	jira.properties	1	jira.path.attachments.use.default.directory	1
10212	jira.properties	1	jira.option.allowattachments	1
10213	ServiceConfig	10001	USE_DEFAULT_DIRECTORY	5
10214	jira.properties	1	jira.path.backup	5
10215	jira.properties	1	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue	3
10216	jira.properties	1	jira.setup	5
10217	jira.properties	1	jira.option.user.externalmanagement	1
10218	jira.properties	1	jira.option.voting	1
10219	jira.properties	1	jira.option.watching	1
10220	jira.properties	1	jira.option.issuelinking	1
10221	jira.properties	1	jira.option.emailvisible	5
10300	jira.properties	1	jira.option.allowsubtasks	1
10301	jira.properties	1	com.atlassian.analytics.client.configuration..policy_acknowledged	5
10302	jira.properties	1	jira-header-plugin.studio-tab-migration-complete	5
10303	jira.properties	1	com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects	5
10304	jira.properties	1	com.atlassian.analytics.client.configuration..analytics_enabled	5
10307	jira.properties	1	com.atlassian.sal.jira:build	5
10309	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled	5
10310	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:build	5
10311	jira.properties	1	com.atlassian.jira.gadgets:build	5
10312	jira.properties	1	com.atlassian.jira.plugins.jira-healthcheck-plugin:build	5
10314	jira.properties	1	com.atlassian.crowd.embedded.admin:build	5
10315	jira.properties	1	com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build	5
10317	jira.properties	1	com.atlassian.jira.jira-mail-plugin:build	5
10318	jira.properties	1	com.atlassian.jira.plugins.jira-workflow-designer:build	5
10319	jira.properties	1	com.atlassian.plugins.custom_apps.hasCustomOrder	5
10320	jira.properties	1	com.atlassian.plugins.atlassian-nav-links-plugin:build	5
10323	jira.properties	1	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build	5
10324	jira.properties	1	com.atlassian.jira.lookandfeel:isDefaultFavicon	5
10325	jira.properties	1	com.atlassian.jira.lookandfeel:usingCustomFavicon	5
10326	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconURL	5
10327	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL	5
10328	jira.properties	1	com.atlassian.jira.lookandfeel:faviconWidth	5
10329	jira.properties	1	com.atlassian.jira.lookandfeel:faviconHeight	5
10330	jira.properties	1	jira.lf.favicon.url	5
10331	jira.properties	1	jira.lf.favicon.hires.url	5
10332	jira.properties	1	com.atlassian.jira.lookandfeel:build	5
10336	jira.properties	1	com.atlassian.upm:notifications:dismissal-plugin.request	5
10337	jira.properties	1	com.atlassian.upm:notifications:dismissal-update	5
10338	jira.properties	1	com.atlassian.upm:notifications:dismissal-evaluation.expired	5
10340	jira.properties	1	com.atlassian.upm:notifications:dismissal-edition.mismatch	5
10354	jira.properties	1	com.atlassian.upm:notifications:notification-plugin.request	5
10341	jira.properties	1	com.atlassian.upm:notifications:dismissal-maintenance.expired	5
10343	jira.properties	1	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	5
10344	jira.properties	1	com.atlassian.upm:notifications:dismissal-auto.updated.upm	5
10345	jira.properties	1	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	5
10349	jira.properties	1	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5
10350	jira.properties	1	com.atlassian.jirawallboard.atlassian-wallboard-plugin:build	5
10351	jira.properties	1	com.atlassian.support.stp:build	5
10352	jira.properties	1	com.atlassian.jira.project-templates-plugin:build	5
10353	jira.properties	1	com.atlassian.upm:notifications:notification-edition.mismatch	5
10355	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.expired	5
10356	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	5
10357	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.expired	5
10358	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	5
10359	jira.properties	1	com.atlassian.analytics.client.configuration.uuid	5
10360	jira.properties	1	com.atlassian.analytics.client.configuration.serverid	5
10361	ApplicationUser	10000	jira.onboarding.first.use.flow.started	5
10362	jira.properties	1	com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all	6
10363	ApplicationUser	10000	newsletter.signup.first.view	3
10364	jira.properties	1	com.atlassian.analytics.client.configuration..logged_base_analytics_data	5
10366	ApplicationUser	10000	jira.onboarding.first.use.flow.current.sequence	5
10367	ApplicationUser	10000	jira.onboarding.first.use.flow.completed	1
10368	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:80146ad9335f696447ea6b3681596112	6
10369	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.draft.layout.v5:80146ad9335f696447ea6b3681596112	6
10370	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout.v5:80146ad9335f696447ea6b3681596112	6
10371	ApplicationUser	10000	user.search.filter.id	6
10372	ApplicationUser	10000	user.search.jql	6
10373	ApplicationUser	10000	last-visited-item.10000	5
10374	ApplicationUser	10000	com.atlassian.jira.flag.dismissals	6
10375	jira.properties	1	com.atlassian.nps.plugin.status.nps_acknowledged	5
10376	jira.properties	1	com.atlassian.nps.plugin.status.nps_enabled	5
10377	ApplicationUser	10000	jira.onboarding.first.use.flow.resolved	1
10378	jira.properties	1	org.apache.shindig.common.crypto.BlobCrypter:key	5
11373	jira.properties	1	com.atlassian.upm.impl.PluginSettingsPluginUpdateRequestStoreplugin-update-requests	5
11374	jira.properties	1	com.atlassian.upm.notification.ManualUpdateRequiredNotificationServi4132bc4b6b94205656e44360bcb38069	5
11385	ApplicationUser	10000	user.last.issue.type.id	5
11386	ApplicationUser	10000	jira.editor.user.mode	5
11387	ApplicationUser	10000	jira.quick.edit.show.welcome.screen	1
11388	ApplicationUser	10000	jira.quick.create.use	1
11389	ApplicationUser	10000	jira.quick.create.fields	6
11390	Project	10001	firstIssueCreated	1
11391	user.format.mapping	1	avatarFullNameHover	5
11392	ApplicationUser	10000	jira.user.suppressedTips.onboarding-start-sprint	1
11395	ApplicationUser	10000	jira.quick.edit.use	1
11396	ApplicationUser	10000	jira.quick.edit.fields	6
11397	ApplicationUser	10000	atl.jira.admin.current.project	5
11398	ApplicationUser	10000	atl.jira.admin.current.project.tab	5
11399	ApplicationUser	10000	atl.jira.admin.current.project.return.url	5
11402	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.draft.layout.v5:78798e8ae11b3125ba7554395f903a20	6
10895	BambooServerProperties	1	bamboo.config.version	2
11014	GreenHopper.Run.History	1	lastRunVersion	6
11015	GreenHopper.Run.History	2	2017-06-28T16:30:57.986Z	6
11026	admin.message.manager	1	user	5
11028	admin.message.manager	1	time	7
11029	com.atlassian.jira.user.flag.FlagDismissalServiceImpl	1	com.atlassian.jira.flag.resets	6
11031	admin.message.manager	1	task	5
11071	jira.properties	1	AO_60DB71_#	5
11165	GreenHopper.properties	1	GreenHopper.Epic.Default.issuetype.id	5
11174	GreenHopper.properties	1	GreenHopper.Epic.Default.linktype.id	3
11375	jira.properties	1	com.atlassian.upm.impl.PluginManagerPluginAsynchronousTaskStatusStora3fa2e329e3ef833943ab3038bbe2487	6
11377	jira.properties	1	com.atlassian.upm.impl.PluginManagerPluginAsynchronousTaskStatusStoreImpl:ongoing-tasks:	5
11378	jira.properties	1	com.atlassian.upm.impl.PluginManagerPluginAsynchronousTaskStatusStoreImpl:completed-tasks:	5
11379	jira.properties	1	com.atlassian.upm:notifications:notification-update	5
11380	GreenHopper.properties	1	gh.configuration.parallel.sprints	1
11393	user.format.mapping	1	profileLinkWithAvatar	5
11394	user.format.mapping	1	avatarWithHover	5
11403	ApplicationUser	10000	jira.workflowdesigner.added.first.status	1
11277	jira.properties	1	AO_E8B6CC_#	5
11314	jira.properties	1	com.atlassian.upm.impl.PluginManagerPluginAsynchronousTaskStatusStor6b77e4ca7472292774cf8eaa3656c183	6
11381	user.format.mapping	1	profileLink	5
11400	ApplicationUser	10000	jira.user.suppressedTips.add.new.users	1
11044	GreenHopper.UpgradeHistory	1	2017-06-28T16:31:00.954Z	6
11046	GreenHopper.UpgradeHistory	2	2017-06-28T16:31:00.973Z	6
11047	GreenHopper.properties	1	GreenHopper.Upgrade.Latest.Upgraded.Version	3
11050	GreenHopper.UpgradeHistory	1	2017-06-28T16:31:01.022Z	6
11051	GreenHopper.UpgradeHistory	2	2017-06-28T16:31:01.043Z	6
11053	GreenHopper.UpgradeHistory	1	2017-06-28T16:31:01.080Z	6
11054	GreenHopper.UpgradeHistory	2	2017-06-28T16:31:01.087Z	6
11056	GreenHopper.UpgradeHistory	1	2017-06-28T16:31:01.121Z	6
11061	GreenHopper.UpgradeHistory	2	2017-06-28T16:31:01.328Z	6
11063	GreenHopper.UpgradeHistory	1	2017-06-28T16:31:01.361Z	6
11064	GreenHopper.UpgradeHistory	2	2017-06-28T16:31:01.400Z	6
11068	GreenHopper.UpgradeHistory	1	2017-06-28T16:31:01.512Z	6
11069	GreenHopper.UpgradeHistory	2	2017-06-28T16:31:01.527Z	6
11070	jira.properties	1	com.pyxis.greenhopper.jira:build	5
11078	GreenHopper.properties	1	GreenHopper.EpicLink.Default.customfield.id	3
11082	GreenHopper.properties	1	GreenHopper.EpicStatus.Default.customfield.id	3
11096	GreenHopper.properties	1	GreenHopper.EpicLabel.Default.customfield.id	3
11101	GreenHopper.properties	1	GreenHopper.EpicColor.Default.customfield.id	3
11109	GreenHopper.properties	1	GreenHopper.Sprint.Default.customfield.id	3
11112	GreenHopper.properties	1	GreenHopper.Sprint.Index.Check.Necessary	5
11132	GreenHopper.properties	1	GreenHopper.LexoRank.Default.customfield.id	3
11135	GreenHopper.properties	1	GreenHopper.JIRA60.Version.Migration	1
11136	GreenHopper.properties	1	JIRA.Software.Simplified.Workflow.Upgraded	1
11170	GreenHopper.properties	1	GreenHopper.Story.Default.issuetype.id	5
11171	GreenHopper.properties	1	GreenHopper.StoryPoints.Default.customfield.id	3
11179	jira.properties	1	com.atlassian.jira.plugin.ext.bamboo:build	5
11235	jira.properties	1	dvcs.connector.bitbucket.url	5
11236	jira.properties	1	dvcs.connector.github.url	5
11300	user.format.mapping	1	fullName	5
11309	jira.properties	1	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin:build	5
11313	fisheye-jira-plugin.properties	1	Upgrade Conditions Applied	5
11315	fisheye-jira-plugin.properties	1	FISH-375-fixed	5
11316	fisheye-jira-plugin.properties	1	fisheye.ual.migration.complete	5
11318	fisheye-jira-plugin.properties	1	fisheye.ual.crucible.enabled.property.fix.complete	5
11321	fisheye-jira-plugin.properties	1	Perforce Update Applied	5
11340	jira.properties	1	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	6
\.


--
-- Data for Name: propertynumber; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertynumber (id, propertyvalue) FROM stdin;
9	0
11	1
12	0
15	1
23	1
10202	0
16	1
10211	1
10212	1
10215	0
10217	0
10218	1
10219	1
10220	1
10300	1
10363	1498667263362
10367	1
10377	1
10895	22
11047	51
11078	10000
11082	10001
11096	10002
11101	10003
11109	10004
11132	10005
11135	1
11136	1
11171	10006
11174	10200
11380	0
11390	1
11392	1
11388	0
11387	1
11395	0
11400	1
11383	1
11403	1
\.


--
-- Data for Name: propertystring; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertystring (id, propertyvalue) FROM stdin;
2	10316
3	10011
4	10300
5	10122
6	10123
7	10000
22	0
10102	BUXU-LL47-7AST-H561
10103	4
11373	#java.util.List\n
11374	#java.util.List\n
11381	jira.user.format:profile-link-user-format
10200	1
10203	
10204	1498665992233
10101	english-moderate-stemming
10205	UTF-8
10206	1
10207	R&D - DinosysVN
10208	http://localhost:8080
10209	private
10210	/var/atlassian/jira/data/attachments
10214	/var/atlassian/jira/export
10213	true
10100	3
10216	true
10221	show
1	73019
13	7.3.8
14	7.1.2
10301	true
10302	migrated
10303	true
10304	true
11386	"wysiwyg"
10307	2
10309	true
10310	4
10311	1
10312	1
11391	jira.user.format:avatar-and-full-name-with-hover-format
10314	3
10315	1
10317	2
10318	1
10319	false
10320	1
10323	3
10324	false
10325	false
10326	/favicon.ico
10327	/images/64jira.png
10328	64
10329	64
10330	/favicon.ico
10331	/images/64jira.png
10201	b6b48b2829824b869586ac216d119363
10332	1
10336	#java.util.List\n
10337	#java.util.List\n
10338	#java.util.List\n
11385	10003
10340	#java.util.List\n
10341	#java.util.List\n
10343	#java.util.List\n
10344	#java.util.List\n
10345	#java.util.List\n
11401	text
11397	VMAA
10349	5
10350	6086
10351	1
10352	2001
10353	#java.util.List\n
10354	#java.util.List\n
10355	#java.util.List\n
10356	#java.util.List\n
10357	#java.util.List\n
10358	#java.util.List\n
10359	951685ac-dbf6-438d-8ec4-cd1fdea51aa0
10360	BUXU-LL47-7AST-H561
10361	cyoaFirstUseFlow
10364	true
11398	summary
11399	/plugins/servlet/project-config/VMAA/summary
10366	cyoa:return
10375	true
10376	true
10378	WoVw1fG1cgbcN23m6sswo5h0o4mdgDGlJnfXzcHqDDc=
10373	com.atlassian.jira.jira-projects-issue-navigator:sidebar-issue-navigator
11070	51
11071	1
11170	10003
11179	1
11112	true
11235	https://bitbucket.org
11236	https://github.com
11300	jira.user.format:full-name-user-format
11309	2
11026	admin
11031	admin.notifications.task.plugins
11313	1
11315	1
11316	1
11318	1
11321	1
11377	#java.util.List\n
11378	#java.util.List\ned14f50d-7a66-4a5d-9c61-b4c48026f960\n56ab79b3-7f3f-460c-9b23-492e1d012b57
11379	#java.util.List\n
11382	10000
11393	jira.user.format:profile-link-with-avatar
11394	jira.user.format:avatar-with-hover
11384	com.atlassian.jira.jira-projects-issue-navigator:sidebar-issue-navigator
11165	10002
11277	16
\.


--
-- Data for Name: propertytext; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY propertytext (id, propertyvalue) FROM stdin;
10	http://www.atlassian.com/*\n
21	{\n    "edgeMap": {\n        "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1801.0,\n                    "y": 115.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1801.0,\n                "y": 115.0\n            },\n            "endStepId": 4,\n            "id": "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1776.85,\n                "y": 355.25\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.25,\n                "y": 154.25\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "483797F1-1BF4-5E0F-86C6-4D19CE6023A2": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1551.0,\n                "y": 104.0\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "517D7F32-20FB-309E-8639-4D19CE2ACB54": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                }\n            ],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1631.25,\n                "y": 479.5\n            },\n            "lineType": "poly",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "startStepId": 3\n        },\n        "58BD4605-5FB9-84EA-6952-4D19CE7B454B": {\n            "actionId": 1,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1470.0,\n                    "y": 16.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "58BD4605-5FB9-84EA-6952-4D19CE7B454B",\n            "label": "Create Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1475.5,\n                "y": 48.5\n            },\n            "lineType": "straight",\n            "startNodeId": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1470.0,\n                "y": 16.0\n            },\n            "startStepId": 1\n        },\n        "92D3DEFD-13AC-06A7-E5D8-4D19CE537791": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1439.5,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1390.0,\n                    "y": 434.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                }\n            ],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1390.0,\n                "y": 434.0\n            },\n            "endStepId": 3,\n            "id": "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1323.65,\n                "y": 193.75\n            },\n            "lineType": "poly",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1439.5,\n                "y": 116.0\n            },\n            "startStepId": 1\n        },\n        "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1677.0,\n                    "y": 227.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                },\n                {\n                    "positiveController": null,\n                    "x": 1773.5,\n                    "y": 425.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                }\n            ],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1773.5,\n                "y": 425.0\n            },\n            "endStepId": 5,\n            "id": "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1703.85,\n                "y": 218.5\n            },\n            "lineType": "poly",\n            "startNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1677.0,\n                "y": 227.0\n            },\n            "startStepId": 6\n        },\n        "C9EA1792-2332-8B56-A04D-4D19CD725367": {\n            "actionId": 301,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1465.0,\n                    "y": 436.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "C9EA1792-2332-8B56-A04D-4D19CD725367",\n            "label": "Stop Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1407.8,\n                "y": 308.5\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1465.0,\n                "y": 436.0\n            },\n            "startStepId": 3\n        },\n        "CAF37138-6321-E03A-8E41-4D19CDD7DC78": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1764.5,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1677.65,\n                "y": 365.0\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1764.5,\n                "y": 430.0\n            },\n            "startStepId": 5\n        },\n        "E1F8462A-8B0A-87EA-4F70-4D19CE423C83": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1488.0,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.0,\n                "y": 345.0\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1488.0,\n                "y": 430.0\n            },\n            "startStepId": 3\n        },\n        "E27D8EB8-8E49-430B-8FCB-4D19CE127171": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1840.0,\n                    "y": 130.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1846.5,\n                    "y": 428.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1846.5,\n                "y": 428.0\n            },\n            "endStepId": 5,\n            "id": "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1814.05,\n                "y": 169.5\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1840.0,\n                "y": 130.0\n            },\n            "startStepId": 4\n        },\n        "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "endStepId": 3,\n            "id": "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1607.25,\n                "y": 423.5\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1": {\n            "actionId": 701,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1635.75,\n                "y": 152.25\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "startStepId": 4\n        }\n    },\n    "nodeMap": {\n        "0740FFFA-2AA1-C90A-38ED-4D19CD61899B": {\n            "id": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "inLinkIds": [\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791"\n            ],\n            "isInitialAction": false,\n            "label": "In Progress",\n            "outLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 146.0,\n                "x": 1373.0,\n                "y": 419.0\n            },\n            "stepId": 3\n        },\n        "15174530-AE75-04E0-1D9D-4D19CD200835": {\n            "id": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "inLinkIds": [],\n            "isInitialAction": true,\n            "label": "Create Issue",\n            "outLinkIds": [\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 157.0,\n                "x": 1405.0,\n                "y": 0.0\n            },\n            "stepId": 1\n        },\n        "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34": {\n            "id": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "inLinkIds": [\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "isInitialAction": false,\n            "label": "Closed",\n            "outLinkIds": [\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 120.0,\n                "x": 1569.0,\n                "y": 210.0\n            },\n            "stepId": 6\n        },\n        "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D": {\n            "id": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "inLinkIds": [\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2"\n            ],\n            "isInitialAction": false,\n            "label": "Resolved",\n            "outLinkIds": [\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171"\n            ],\n            "rect": {\n                "height": 44.0,\n                "positiveController": null,\n                "width": 137.0,\n                "x": 1709.0,\n                "y": 97.0\n            },\n            "stepId": 4\n        },\n        "778534F4-7595-88B6-45E1-4D19CD518712": {\n            "id": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "inLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "isInitialAction": false,\n            "label": "Open",\n            "outLinkIds": [\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 106.0,\n                "x": 1429.5,\n                "y": 97.0\n            },\n            "stepId": 1\n        },\n        "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB": {\n            "id": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "inLinkIds": [\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "isInitialAction": false,\n            "label": "Reopened",\n            "outLinkIds": [\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 142.0,\n                "x": 1749.5,\n                "y": 418.0\n            },\n            "stepId": 5\n        }\n    },\n    "rootIds": [\n        "15174530-AE75-04E0-1D9D-4D19CD200835"\n    ],\n    "width": 1136\n}\n
10368	{\n  "annotations": [],\n  "width": 1375,\n  "rootIds": ["0D45CF1F-C6AE-B393-21B3-5A05591D1737"],\n  "nodeMap": {\n    "4E4B73B1-3C40-5FAC-264E-5A05595F62A5": {\n      "stepId": 2,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 151.0,\n        "x": 1927.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5"\n      ],\n      "outLinkIds": [\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E"\n      ],\n      "id": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "label": "In Progress"\n    },\n    "0D45CF1F-C6AE-B393-21B3-5A05591D1737": {\n      "stepId": 1,\n      "isInitialAction": true,\n      "rect": {\n        "height": 42.0,\n        "width": 117.0,\n        "x": 1512.0,\n        "y": 0.0,\n        "positiveController": null\n      },\n      "inLinkIds": [],\n      "outLinkIds": ["A56BC718-F21C-4688-A750-5A055A19265A"],\n      "id": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "label": "Create"\n    },\n    "3A048B99-FC9B-EADD-9590-5A0559B773A9": {\n      "stepId": 3,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 109.0,\n        "x": 1518.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "outLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA"\n      ],\n      "id": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "label": "Done"\n    },\n    "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257": {\n      "stepId": 1,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 114.0,\n        "x": 1512.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "A56BC718-F21C-4688-A750-5A055A19265A"\n      ],\n      "outLinkIds": [\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "id": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "label": "To Do"\n    }\n  },\n  "edgeMap": {\n    "1B7EC8D6-8966-9F61-6207-5A055A09D24C": {\n      "actionId": 21,\n      "startStepId": 1,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 1572.0,\n        "y": 122.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1573.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1572.0,\n          "y": 122.0,\n          "positiveController": null\n        },\n        {\n          "x": 1573.0,\n          "y": 354.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1567.0,\n        "y": 219.6,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "1B7EC8D6-8966-9F61-6207-5A055A09D24C",\n      "label": "Done"\n    },\n    "5841480E-F84E-DBF7-3509-5A0559D9CADA": {\n      "actionId": 61,\n      "startStepId": 3,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1627.0,\n        "y": 361.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1953.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1627.0,\n          "y": 361.0,\n          "positiveController": null\n        },\n        {\n          "x": 1953.0,\n          "y": 257.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1658.0,\n        "y": 287.0,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n      "label": "Reopen and start progress"\n    },\n    "321335A8-A6FA-C691-F3DF-5A0559C94B79": {\n      "actionId": 51,\n      "startStepId": 3,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1528.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1527.0,\n        "y": 120.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1528.0,\n          "y": 354.0,\n          "positiveController": null\n        },\n        {\n          "x": 1527.0,\n          "y": 120.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1437.0,\n        "y": 219.1,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n      "label": "Reopen"\n    },\n    "40B3F1B0-322B-BC82-F68C-5A0559E9885E": {\n      "actionId": 41,\n      "startStepId": 2,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 2056.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1608.0,\n        "y": 394.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 2056.0,\n          "y": 257.0,\n          "positiveController": null\n        },\n        {\n          "x": 1608.0,\n          "y": 394.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1788.5,\n        "y": 325.25,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n      "label": "Done"\n    },\n    "A56BC718-F21C-4688-A750-5A055A19265A": {\n      "actionId": 1,\n      "startStepId": 1,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1557.0,\n        "y": 40.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1557.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1557.0,\n          "y": 40.0,\n          "positiveController": null\n        },\n        {\n          "x": 1557.0,\n          "y": 80.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1537.0,\n        "y": 50.6,\n        "positiveController": null\n      },\n      "startNodeId": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "A56BC718-F21C-4688-A750-5A055A19265A",\n      "label": "Create"\n    },\n    "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7": {\n      "actionId": 31,\n      "startStepId": 2,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1951.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1623.0,\n        "y": 114.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1951.0,\n          "y": 215.0,\n          "positiveController": null\n        },\n        {\n          "x": 1623.0,\n          "y": 114.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1709.5,\n        "y": 168.75,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n      "label": "Stop Progress"\n    },\n    "407198C8-F439-AEEC-73FE-5A0559F98EB5": {\n      "actionId": 11,\n      "startStepId": 1,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1626.0,\n        "y": 89.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 2053.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1626.0,\n          "y": 89.0,\n          "positiveController": null\n        },\n        {\n          "x": 2053.0,\n          "y": 215.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1809.5,\n        "y": 131.5,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n      "label": "Start Progress"\n    }\n  }\n}
10369	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
10370	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
11389	summary,description,priority,versions,components
10371	\N
11375	{"id":"56ab79b3-7f3f-460c-9b23-492e1d012b57","type":"INSTALL","userKey":"admin","timestamp":1498667406707,"status":{"done":true,"error":null,"description":null,"stage":null,"resourceName":null,"resourceVersion":null,"itemsDone":null,"itemsTotal":null,"progress":1.0,"successes":null,"failures":null,"nextStepPostUri":null,"resultUri":"/rest/plugins/1.0/com.atlassian.jira.jira-software-application-key","pollDelay":100},"cancellable":false}
10372	project = VMAA AND resolution = Unresolved ORDER BY priority DESC, updated DESC
10362	app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCED;database.setup=AWAITS;mail.properties.setup=ANNOUNCED
10374	{"com.atlassian.jira.tzdetect.25200000,25200000":1498667329021,"com.atlassian.jira.reindex.required":1498667499188}
11396	fixVersions,assignee,labels,components,priority,comment
11014	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:30:57.961Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2017-05-23T02:46:28.221Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11015	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:30:57.961Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2017-05-23T02:46:28.221Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11044	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:00.954Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11046	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>2</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:00.973Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11314	{"id":"ed14f50d-7a66-4a5d-9c61-b4c48026f960","type":"INSTALL","userKey":"admin","timestamp":1498667436379,"status":{"done":true,"error":null,"description":null,"stage":null,"resourceName":null,"resourceVersion":null,"itemsDone":null,"itemsTotal":null,"progress":1.0,"successes":null,"failures":null,"nextStepPostUri":null,"resultUri":"/rest/plugins/1.0/com.atlassian.jira.jira-software-application-key","pollDelay":100},"cancellable":false}
11029	{"com.atlassian.jira.reindex.required":1498667491880}
11050	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.022Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11051	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>15</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.043Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11053	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.080Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11054	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.087Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11056	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.121Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11061	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>192</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.328Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11063	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.361Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11064	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>33</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.400Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11068	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.512Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11069	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>3</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.3.0-DAILY20170523023608</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2017-06-28T16:31:01.527Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>f98625172760a59c</string>\n  </entry>\n</map>
11402	{"statuses":[{"id":"S<11>","x":469.28125,"y":117.80000000000001},{"id":"S<1>","x":224.46875,"y":58.80000000000001},{"id":"S<6>","x":446.96875,"y":167.8},{"id":"I<1>","x":159.0,"y":-47.19999999999999},{"id":"S<12>","x":455.09375,"y":-39.90000244140623}],"transitions":[{"id":"A<11:S<1>:S<1>>","sourceAngle":null,"sourceId":"S<1>","targetAngle":null,"targetId":"S<1>"},{"id":"A<31:S<11>:S<11>>","sourceAngle":null,"sourceId":"S<11>","targetAngle":null,"targetId":"S<11>"},{"id":"A<41:S<12>:S<12>>","sourceAngle":null,"sourceId":"S<12>","targetAngle":null,"targetId":"S<12>"},{"id":"IA<1:I<1>:S<1>>","sourceAngle":78.11134196037203,"sourceId":"I<1>","targetAngle":174.073249464754,"targetId":"S<1>"},{"id":"A<21:S<6>:S<6>>","sourceAngle":null,"sourceId":"S<6>","targetAngle":null,"targetId":"S<6>"}],"updateAuthor":{"userName":"admin","displayName":"Nguyen Dinh Minh Nhat"},"updatedDate":1498669145889,"loopedTransitionContainer":null}
11340	#java.util.List\n{"userKey":"admin","date":1498667501807,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Application","com.atlassian.jira.jira-software-application","7.3.8"]}\n{"userKey":"admin","date":1498667501698,"i18nKey":"upm.auditLog.install.plugins.success.withDescription","entryType":"PLUGIN_INSTALL","params":["JIRA for Software Plugin (com.atlassian.jira.plugins.jira-software-plugin), JIRA DVCS Connector Plugin (com.atlassian.jira.plugins.jira-bitbucket-connector-plugin), JIRA Agile (com.pyxis.greenhopper.jira), JIRA Software Monitor Plugin (com.atlassian.jira.plugins.jira-software-monitor-plugin), Atlassian JIRA - Plugins - Transition Trigger Plugin (com.atlassian.jira.plugins.jira-transition-triggers-plugin), JIRA Bamboo Plugin (com.atlassian.jira.plugin.ext.bamboo), FishEye Plugin (com.atlassian.jirafisheyeplugin), JIRA Software German (Germany) Language Pack (tac.jira software.languages.de_DE), JIRA Software French (France) Language Pack (tac.jira software.languages.fr_FR), JIRA Software Chinese (China) Language Pack (tac.jira software.languages.zh_CN), JIRA Software Portuguese (Brazil) Language Pack (tac.jira software.languages.pt_BR), JIRA Software Spanish (Spain) Language Pack (tac.jira software.languages.es_ES), JIRA Software English (United States) Language Pack (tac.jira software.languages.en_US), Atlassian JIRA - Plugins - Development Integration Plugin (com.atlassian.jira.plugins.jira-development-integration-plugin), JIRA Software Russian (Russia) Language Pack (tac.jira software.languages.ru_RU), JIRA Software Korean (South Korea) Language Pack (tac.jira software.languages.ko_KR)","bundled with add-on JIRA Software Application"]}\n{"userKey":"admin","date":1498667501294,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Korean (South Korea) Language Pack","tac.jira software.languages.ko_KR","7.3.0.int-0135-v2r49-2016-12-05"]}\n{"userKey":"admin","date":1498667500884,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Russian (Russia) Language Pack","tac.jira software.languages.ru_RU","7.3.0.int-0135-v2r106-2016-12-05"]}\n{"userKey":"admin","date":1498667500464,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["Atlassian JIRA - Plugins - Development Integration Plugin","com.atlassian.jira.plugins.jira-development-integration-plugin","4.1.5"]}\n{"userKey":"admin","date":1498667500051,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software English (United States) Language Pack","tac.jira software.languages.en_US","7.3.0.int-0135-v2r60-2016-11-24"]}\n{"userKey":"admin","date":1498667499612,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Spanish (Spain) Language Pack","tac.jira software.languages.es_ES","7.3.0.int-0135-v2r38-2016-12-05"]}\n{"userKey":"admin","date":1498667499225,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Portuguese (Brazil) Language Pack","tac.jira software.languages.pt_BR","7.3.0.int-0135-v2r906-2016-12-05"]}\n{"userKey":"admin","date":1498667498807,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Chinese (China) Language Pack","tac.jira software.languages.zh_CN","7.3.0.int-0135-v2r387-2017-03-06"]}\n{"userKey":"admin","date":1498667498385,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software French (France) Language Pack","tac.jira software.languages.fr_FR","7.3.0.int-0135-v2r61-2016-12-05"]}\n{"userKey":"admin","date":1498667497871,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software German (Germany) Language Pack","tac.jira software.languages.de_DE","7.3.0.int-0135-v2r74-2016-12-05"]}\n{"userKey":"admin","date":1498667497474,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["FishEye Plugin","com.atlassian.jirafisheyeplugin","7.1.5"]}\n{"userKey":"admin","date":1498667496941,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Bamboo Plugin","com.atlassian.jira.plugin.ext.bamboo","7.4.5"]}\n{"userKey":"admin","date":1498667496487,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["Atlassian JIRA - Plugins - Transition Trigger Plugin","com.atlassian.jira.plugins.jira-transition-triggers-plugin","4.0.8"]}\n{"userKey":"admin","date":1498667495990,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Monitor Plugin","com.atlassian.jira.plugins.jira-software-monitor-plugin","0.1.0-D20150923T085539"]}\n{"userKey":"admin","date":1498667495543,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Agile","com.pyxis.greenhopper.jira","7.3.0-DAILY20170523023608"]}\n{"userKey":"admin","date":1498667494841,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA DVCS Connector Plugin","com.atlassian.jira.plugins.jira-bitbucket-connector-plugin","4.1.3"]}\n{"userKey":"admin","date":1498667494254,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA for Software Plugin","com.atlassian.jira.plugins.jira-software-plugin","2.2.0"]}\n{"userKey":"admin","date":1498667490701,"i18nKey":"upm.auditLog.install.plugin.success","entryType":"PLUGIN_INSTALL","params":["JIRA Software Application","com.atlassian.jira.jira-software-application","7.3.8"]}
\.


--
-- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_calendars (id, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_cron_triggers (id, trigger_id, cronexperssion) FROM stdin;
\.


--
-- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_fired_triggers (id, entry_id, trigger_id, trigger_listener, fired_time, trigger_state) FROM stdin;
\.


--
-- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_job_details (id, job_name, job_group, class_name, is_durable, is_stateful, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: qrtz_job_listeners; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_job_listeners (id, job, job_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_simple_triggers (id, trigger_id, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: qrtz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_trigger_listeners (id, trigger_id, trigger_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY qrtz_triggers (id, trigger_name, trigger_group, job, next_fire, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr) FROM stdin;
\.


--
-- Data for Name: reindex_component; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY reindex_component (id, request_id, affected_index, entity_type) FROM stdin;
\.


--
-- Data for Name: reindex_request; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY reindex_request (id, type, request_time, start_time, completion_time, status, execution_node_id, query) FROM stdin;
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY remembermetoken (id, created, token, username) FROM stdin;
\.


--
-- Data for Name: remotelink; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY remotelink (id, issueid, globalid, title, summary, url, iconurl, icontitle, relationship, resolved, statusname, statusdescription, statusiconurl, statusicontitle, statusiconlink, statuscategorykey, statuscategorycolorname, applicationtype, applicationname) FROM stdin;
\.


--
-- Data for Name: replicatedindexoperation; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY replicatedindexoperation (id, index_time, node_id, affected_index, entity_type, affected_ids, operation, filename) FROM stdin;
\.


--
-- Data for Name: resolution; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY resolution (id, sequence, pname, description, iconurl) FROM stdin;
10000	1	Done	Work has been completed on this issue.	\N
10001	2	Won't Do	This issue won't be actioned.	\N
10002	3	Duplicate	The problem is a duplicate of an existing issue.	\N
10003	4	Cannot Reproduce	All attempts at reproducing this issue failed, or not enough information was available to reproduce the issue. Reading the code produces no clues as to why this behavior would occur. If more information appears later, please reopen the issue.	\N
\.


--
-- Data for Name: rundetails; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY rundetails (id, job_id, start_time, run_duration, run_outcome, info_message) FROM stdin;
10265	data-provider-cleanup	2017-06-29 00:00:54.149+07	35	S	
10001	99d071d5-6bee-4b1b-bb95-5ba36d934efe	2017-06-28 23:06:32.249+07	8918	S	
10003	com.atlassian.jira.service.JiraService:10001	2017-06-28 23:07:11.047+07	1628	S	
10023	com.atlassian.jira.user.UserHistoryDatabaseCompactor	2017-06-28 23:26:47.692+07	4	S	
10024	com.atlassian.jira.cache.monitor.CacheStatisticsMonitor	2017-06-28 23:26:47.691+07	10	S	
10100	CompatibilityPluginScheduler.JobId.BundledUpdateCheckJob-job	2017-06-28 23:27:38.497+07	35	S	
10101	CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job	2017-06-28 23:27:38.53+07	50	S	
10102	CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job	2017-06-28 23:27:38.505+07	222	S	
10103	JiraPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2017-06-28 23:27:44.43+07	3811	S	
10105	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	2017-06-28 23:27:55.864+07	79	S	
10107	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	2017-06-28 23:28:00.919+07	24	S	
10108	JiraPluginScheduler:com.atlassian.support.healthcheck.scheduler.HealthCheckSchedulerImpl:job	2017-06-28 23:28:39.05+07	2084	S	
10351	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	2017-06-29 00:17:16.288+07	41	S	
10353	94d85fcd-6319-4913-a8c6-bcf58b55e15b	2017-06-29 00:17:59.661+07	29	S	
10354	com.atlassian.jira.service.JiraService:10000	2017-06-29 00:18:00+07	1	S	
10355	JiraPluginScheduler:LEXO_RANK_STATS_COLLECTOR_JOB	2017-06-29 00:18:13.329+07	0	S	
10356	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	2017-06-29 00:18:13.328+07	73	S	
10357	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	2017-06-29 00:18:55.091+07	32	S	
10124	com.atlassian.jira.plugins.software.monitor.ApplicationPluginsEnablerJobRunner	2017-06-28 23:32:24.901+07	34	S	
\.


--
-- Data for Name: schemeissuesecurities; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY schemeissuesecurities (id, scheme, security, sec_type, sec_parameter) FROM stdin;
\.


--
-- Data for Name: schemeissuesecuritylevels; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY schemeissuesecuritylevels (id, name, description, scheme) FROM stdin;
\.


--
-- Data for Name: schemepermissions; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY schemepermissions (id, scheme, permission, perm_type, perm_parameter, permission_key) FROM stdin;
10025	0	32	projectrole	10002	MANAGE_WATCHERS
10026	0	34	projectrole	10002	EDIT_ALL_COMMENTS
10027	0	35	applicationRole		EDIT_OWN_COMMENTS
10028	0	36	projectrole	10002	DELETE_ALL_COMMENTS
10029	0	37	applicationRole		DELETE_OWN_COMMENTS
10030	0	38	projectrole	10002	DELETE_ALL_ATTACHMENTS
10031	0	39	applicationRole		DELETE_OWN_ATTACHMENTS
10033	0	29	applicationRole		VIEW_DEV_TOOLS
10101	\N	44	group	jira-administrators	\N
10200	0	45	applicationRole		VIEW_READONLY_WORKFLOW
10300	0	46	applicationRole		TRANSITION_ISSUES
10000	\N	0	group	jira-administrators	\N
10004	0	23	projectrole	10002	ADMINISTER_PROJECTS
10005	0	10	applicationRole		BROWSE_PROJECTS
10006	0	11	applicationRole		CREATE_ISSUES
10007	0	15	applicationRole		ADD_COMMENTS
10008	0	19	applicationRole		CREATE_ATTACHMENTS
10009	0	13	applicationRole		ASSIGN_ISSUES
10010	0	17	applicationRole		ASSIGNABLE_USER
10011	0	14	applicationRole		RESOLVE_ISSUES
10012	0	21	applicationRole		LINK_ISSUES
10013	0	12	applicationRole		EDIT_ISSUES
10014	0	16	projectrole	10002	DELETE_ISSUES
10015	0	18	applicationRole		CLOSE_ISSUES
10016	0	25	applicationRole		MOVE_ISSUES
10017	0	28	applicationRole		SCHEDULE_ISSUES
10018	0	30	projectrole	10002	MODIFY_REPORTER
10019	0	20	applicationRole		WORK_ON_ISSUES
10020	0	43	projectrole	10002	DELETE_ALL_WORKLOGS
10021	0	42	applicationRole		DELETE_OWN_WORKLOGS
10022	0	41	projectrole	10002	EDIT_ALL_WORKLOGS
10023	0	40	applicationRole		EDIT_OWN_WORKLOGS
10024	0	31	applicationRole		VIEW_VOTERS_AND_WATCHERS
10401	0	\N	projectrole	10002	MANAGE_SPRINTS_PERMISSION
10402	10000	\N	applicationRole	\N	BROWSE_PROJECTS
10403	10000	\N	applicationRole	\N	CREATE_ISSUES
10404	10000	\N	applicationRole	\N	EDIT_ISSUES
10405	10000	\N	applicationRole	\N	ASSIGN_ISSUES
10406	10000	\N	applicationRole	\N	RESOLVE_ISSUES
10407	10000	\N	applicationRole	\N	ADD_COMMENTS
10408	10000	\N	projectrole	10002	DELETE_ISSUES
10409	10000	\N	applicationRole	\N	ASSIGNABLE_USER
10410	10000	\N	applicationRole	\N	CLOSE_ISSUES
10411	10000	\N	applicationRole	\N	CREATE_ATTACHMENTS
10412	10000	\N	applicationRole	\N	WORK_ON_ISSUES
10413	10000	\N	applicationRole	\N	LINK_ISSUES
10414	10000	\N	projectrole	10002	ADMINISTER_PROJECTS
10415	10000	\N	applicationRole	\N	MOVE_ISSUES
10416	10000	\N	applicationRole	\N	SCHEDULE_ISSUES
10417	10000	\N	projectrole	10002	MODIFY_REPORTER
10418	10000	\N	applicationRole	\N	VIEW_VOTERS_AND_WATCHERS
10419	10000	\N	projectrole	10002	MANAGE_WATCHERS
10420	10000	\N	projectrole	10002	EDIT_ALL_COMMENTS
10421	10000	\N	applicationRole	\N	EDIT_OWN_COMMENTS
10422	10000	\N	projectrole	10002	DELETE_ALL_COMMENTS
10423	10000	\N	applicationRole	\N	DELETE_OWN_COMMENTS
10424	10000	\N	projectrole	10002	DELETE_ALL_ATTACHMENTS
10425	10000	\N	applicationRole	\N	DELETE_OWN_ATTACHMENTS
10426	10000	\N	applicationRole	\N	EDIT_OWN_WORKLOGS
10427	10000	\N	projectrole	10002	EDIT_ALL_WORKLOGS
10428	10000	\N	applicationRole	\N	DELETE_OWN_WORKLOGS
10429	10000	\N	projectrole	10002	DELETE_ALL_WORKLOGS
10430	10000	\N	applicationRole	\N	VIEW_READONLY_WORKFLOW
10431	10000	\N	applicationRole	\N	TRANSITION_ISSUES
10432	10000	\N	applicationRole	\N	VIEW_DEV_TOOLS
10433	10000	\N	applicationRole	\N	MANAGE_SPRINTS_PERMISSION
\.


--
-- Data for Name: searchrequest; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY searchrequest (id, filtername, authorname, description, username, groupname, projectid, reqcontent, fav_count, filtername_lower) FROM stdin;
10000	Open and unassigned (VMA)	admin	\N	admin	\N	\N	project = 10000 and statusCategory != Done and assignee = EMPTY ORDER BY priority desc	0	open and unassigned (vma)
10001	Due this week (VMA)	admin	\N	admin	\N	\N	project = 10000 and duedate >= startOfWeek() and duedate <= endOfWeek() ORDER BY priority desc	0	due this week (vma)
10002	Overdue (VMA)	admin	\N	admin	\N	\N	project = 10000 and statusCategory != Done and duedate < now() ORDER BY duedate desc	0	overdue (vma)
10003	Filter for VMAA board	admin	\N	admin	\N	\N	project = VMAA ORDER BY Rank ASC	0	filter for vmaa board
\.


--
-- Data for Name: sequence_value_item; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY sequence_value_item (seq_name, seq_id) FROM stdin;
UserHistoryItem	10100
PluginVersion	10400
SchemePermissions	10500
Avatar	10500
EventType	10000
Feature	10100
FieldLayout	10100
GadgetUserPreference	10100
Notification	10200
NotificationScheme	10100
OAuthConsumer	10100
PortalPage	10100
PortletConfiguration	10100
Priority	10000
ProjectRole	10100
ServiceConfig	10200
CustomField	10100
UpgradeTaskHistory	10100
UpgradeTaskHistoryAuditLog	10100
UpgradeHistory	10200
UpgradeVersionHistory	10100
ManagedConfigurationItem	10100
ListenerConfig	10300
IssueLinkType	10300
ProductLicense	10100
Group	10110
LicenseRoleGroup	10100
GlobalPermissionEntry	10200
EntityPropertyIndexDocument	10100
ApplicationUser	10100
User	10100
Membership	10100
CustomFieldOption	10100
LicenseRoleDefault	10100
FieldLayoutItem	10200
ClusteredJob	10300
UserAttribute	10200
Project	10100
ProjectKey	10100
ProjectRoleActor	10200
IssueType	10100
FieldConfiguration	10200
FieldConfigScheme	10200
FieldConfigSchemeIssueType	10300
OptionConfiguration	10300
ConfigurationContext	10200
GenericConfiguration	10200
Status	10100
Workflow	10200
AuditLog	10200
WorkflowScheme	10200
WorkflowSchemeEntity	10200
AuditItem	10200
FieldScreen	10100
FieldScreenTab	10200
FieldScreenLayoutItem	10300
FieldScreenScheme	10100
FieldScreenSchemeItem	10200
IssueTypeScreenScheme	10100
IssueTypeScreenSchemeEntity	10200
Resolution	10100
DraftWorkflow	10100
SearchRequest	10100
SharePermissions	10200
EntityProperty	10100
PermissionScheme	10100
AuditChangedValue	10300
OSWorkflowEntry	10100
OSCurrentStep	10100
Issue	10100
CustomFieldValue	10100
ChangeGroup	10100
ChangeItem	10100
OSPropertyEntry	11500
TaskIdSequence	10100
RunDetails	10400
\.


--
-- Data for Name: serviceconfig; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY serviceconfig (id, delaytime, clazz, servicename, cron_expression) FROM stdin;
10000	60000	com.atlassian.jira.service.services.mail.MailQueueService	Mail Queue Service	0 * * * * ?
10002	86400000	com.atlassian.jira.service.services.auditing.AuditLogCleaningService	Audit log cleaning service	0 0 0 * * ?
10001	43200000	com.atlassian.jira.service.services.export.ExportService	Backup Service	0 5 4/12 * * ?
\.


--
-- Data for Name: sharepermissions; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY sharepermissions (id, entityid, entitytype, sharetype, param1, param2) FROM stdin;
10000	10000	PortalPage	global	\N	\N
\.


--
-- Data for Name: tempattachmentsmonitor; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY tempattachmentsmonitor (temporary_attachment_id, form_token, file_name, content_type, file_size, created_time) FROM stdin;
\.


--
-- Data for Name: trackback_ping; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY trackback_ping (id, issue, url, title, blogname, excerpt, created) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY trustedapp (id, application_id, name, public_key, ip_match, url_match, timeout, created, created_by, updated, updated_by) FROM stdin;
\.


--
-- Data for Name: upgradehistory; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY upgradehistory (id, upgradeclass, targetbuild, status, downgradetaskrequired) FROM stdin;
10000	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100	70100	complete	Y
10100	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101	70101	complete	N
10101	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102	70102	complete	N
10102	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001	71001	complete	N
10103	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72001	72001	complete	N
10104	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72002	72002	complete	N
10105	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build73002	73002	complete	N
\.


--
-- Data for Name: upgradetaskhistory; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY upgradetaskhistory (id, upgrade_task_factory_key, build_number, status, upgrade_type) FROM stdin;
10006	host	73010	COMPLETED	SERVER
10007	host	73011	COMPLETED	SERVER
\.


--
-- Data for Name: upgradetaskhistoryauditlog; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY upgradetaskhistoryauditlog (id, upgrade_task_factory_key, build_number, status, upgrade_type, timeperformed, action) FROM stdin;
10000	host	70101	COMPLETED	SERVER	2017-06-28 23:06:30.354+07	upgrade
10001	host	70102	COMPLETED	SERVER	2017-06-28 23:06:30.566+07	upgrade
10002	host	71001	COMPLETED	SERVER	2017-06-28 23:06:30.747+07	upgrade
10003	host	72001	COMPLETED	SERVER	2017-06-28 23:06:30.838+07	upgrade
10004	host	72002	COMPLETED	SERVER	2017-06-28 23:06:31.003+07	upgrade
10005	host	73002	COMPLETED	SERVER	2017-06-28 23:06:31.086+07	upgrade
10006	host	73010	COMPLETED	SERVER	2017-06-28 23:06:31.184+07	upgrade
10007	host	73011	COMPLETED	SERVER	2017-06-28 23:06:31.853+07	upgrade
\.


--
-- Data for Name: upgradeversionhistory; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY upgradeversionhistory (id, timeperformed, targetbuild, targetversion) FROM stdin;
10000	2017-06-28 23:06:31.976+07	73011	7.3.8
\.


--
-- Data for Name: userassociation; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY userassociation (source_name, sink_node_id, sink_node_entity, association_type, sequence, created) FROM stdin;
\.


--
-- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY userbase (id, username, password_hash) FROM stdin;
\.


--
-- Data for Name: userhistoryitem; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY userhistoryitem (id, entitytype, entityid, username, lastviewed, data) FROM stdin;
10000	Project	10000	admin	1498667344627	\N
10002	RapidView	1	admin	1498668867456	VMAA board
10001	Dashboard	10000	admin	1498669286760	\N
10004	Sprint	1	admin	1498669299412	VMAA Sprint 1
10006	Issue	10001	admin	1498669299413	\N
10003	Project	10001	admin	1498669302676	\N
10005	Issue	10000	admin	1498668108533	\N
\.


--
-- Data for Name: userpickerfilter; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY userpickerfilter (id, customfield, customfieldconfig, enabled) FROM stdin;
\.


--
-- Data for Name: userpickerfiltergroup; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY userpickerfiltergroup (id, userpickerfilter, groupname) FROM stdin;
\.


--
-- Data for Name: userpickerfilterrole; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY userpickerfilterrole (id, userpickerfilter, projectroleid) FROM stdin;
\.


--
-- Data for Name: versioncontrol; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY versioncontrol (id, vcsname, vcsdescription, vcstype) FROM stdin;
\.


--
-- Data for Name: votehistory; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY votehistory (id, issueid, votes, "timestamp") FROM stdin;
\.


--
-- Data for Name: workflowscheme; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY workflowscheme (id, name, description) FROM stdin;
10000	classic	classic
10100	VMA: Project Management Workflow Scheme	
10101	VMAA: Software Simplified Workflow Scheme	Generated by JIRA Software version 7.3.0-DAILY20170523023608. This workflow scheme is managed internally by JIRA Software. Do not manually modify this workflow scheme.
\.


--
-- Data for Name: workflowschemeentity; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY workflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
10000	10000	classic default workflow	0
10100	10100	VMA: Project Management Workflow	0
10101	10101	Software Simplified Workflow for Project VMAA	0
\.


--
-- Data for Name: worklog; Type: TABLE DATA; Schema: public; Owner: sin
--

COPY worklog (id, issueid, author, grouplevel, rolelevel, worklogbody, created, updateauthor, updated, startdate, timeworked) FROM stdin;
\.


--
-- Name: AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21F425_MESSAGE_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21F425_MESSAGE_MAPPING_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_MAPPING_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_USER_PROPERTY_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_21F425_USER_PROPERTY_AO"
    ADD CONSTRAINT "AO_21F425_USER_PROPERTY_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_3B1893_LOOP_DETECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_3B1893_LOOP_DETECTION"
    ADD CONSTRAINT "AO_3B1893_LOOP_DETECTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4AEACD_WEBHOOK_DAO_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_4AEACD_WEBHOOK_DAO"
    ADD CONSTRAINT "AO_4AEACD_WEBHOOK_DAO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_550953_SHORTCUT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_550953_SHORTCUT"
    ADD CONSTRAINT "AO_550953_SHORTCUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROCESSED_COMMITS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_575BF5_PROCESSED_COMMITS"
    ADD CONSTRAINT "AO_575BF5_PROCESSED_COMMITS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROVIDER_ISSUE_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_575BF5_PROVIDER_ISSUE"
    ADD CONSTRAINT "AO_575BF5_PROVIDER_ISSUE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_587B34_GLANCE_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_587B34_GLANCE_CONFIG"
    ADD CONSTRAINT "AO_587B34_GLANCE_CONFIG_pkey" PRIMARY KEY ("ROOM_ID");


--
-- Name: AO_587B34_PROJECT_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT "AO_587B34_PROJECT_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_LINK"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_AUDITENTRY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_AUDITENTRY"
    ADD CONSTRAINT "AO_60DB71_AUDITENTRY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_BOARDADMINS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT "AO_60DB71_BOARDADMINS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDCOLOR_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT "AO_60DB71_CARDCOLOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDLAYOUT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT "AO_60DB71_CARDLAYOUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMNSTATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT "AO_60DB71_COLUMNSTATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMN_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_COLUMN"
    ADD CONSTRAINT "AO_60DB71_COLUMN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_DETAILVIEWFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT "AO_60DB71_DETAILVIEWFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT "AO_60DB71_ESTIMATESTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKINGLOG_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKINGLOG"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKINGLOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKING"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANKBALANCER_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_LEXORANKBALANCER"
    ADD CONSTRAINT "AO_60DB71_LEXORANKBALANCER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANK_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_LEXORANK"
    ADD CONSTRAINT "AO_60DB71_LEXORANK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_NONWORKINGDAY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT "AO_60DB71_NONWORKINGDAY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_QUICKFILTER_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT "AO_60DB71_QUICKFILTER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RANKABLEOBJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_RANKABLEOBJECT"
    ADD CONSTRAINT "AO_60DB71_RANKABLEOBJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RAPIDVIEW_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_RAPIDVIEW"
    ADD CONSTRAINT "AO_60DB71_RAPIDVIEW_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SPRINT"
    ADD CONSTRAINT "AO_60DB71_SPRINT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_STATSFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_STATSFIELD"
    ADD CONSTRAINT "AO_60DB71_STATSFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SUBQUERY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SUBQUERY"
    ADD CONSTRAINT "AO_60DB71_SUBQUERY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SWIMLANE_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SWIMLANE"
    ADD CONSTRAINT "AO_60DB71_SWIMLANE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT "AO_60DB71_TRACKINGSTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_VERSION"
    ADD CONSTRAINT "AO_60DB71_VERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_WORKINGDAYS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT "AO_60DB71_WORKINGDAYS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_88263F_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_88263F_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_88263F_PROPERTIES"
    ADD CONSTRAINT "AO_88263F_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_88263F_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_88263F_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_97EDAB_USERINVITATION_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_97EDAB_USERINVITATION"
    ADD CONSTRAINT "AO_97EDAB_USERINVITATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_A44657_HEALTH_CHECK_ENTITY"
    ADD CONSTRAINT "AO_A44657_HEALTH_CHECK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_B9A0F0_APPLIED_TEMPLATE"
    ADD CONSTRAINT "AO_B9A0F0_APPLIED_TEMPLATE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_CFF990_AOTRANSITION_FAILURE"
    ADD CONSTRAINT "AO_CFF990_AOTRANSITION_FAILURE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH_HEAD_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_CHANGESET_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_CHANGESET_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_GIT_HUB_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_TAG_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_TAG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ORGANIZATION_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ORGANIZATION_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ORG_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_ORG_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_ISSUE_KEY"
    ADD CONSTRAINT "AO_E8B6CC_PR_ISSUE_KEY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT "AO_E8B6CC_PR_PARTICIPANT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_PR_TO_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PULL_REQUEST_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PULL_REQUEST"
    ADD CONSTRAINT "AO_E8B6CC_PULL_REQUEST_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPOSITORY_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_REPOSITORY_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_AUDIT_LOG"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_AUDIT_LOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT "AO_ED669C_SEEN_ASSERTIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: pk_app_user; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY app_user
    ADD CONSTRAINT pk_app_user PRIMARY KEY (id);


--
-- Name: pk_audit_changed_value; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY audit_changed_value
    ADD CONSTRAINT pk_audit_changed_value PRIMARY KEY (id);


--
-- Name: pk_audit_item; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY audit_item
    ADD CONSTRAINT pk_audit_item PRIMARY KEY (id);


--
-- Name: pk_audit_log; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY audit_log
    ADD CONSTRAINT pk_audit_log PRIMARY KEY (id);


--
-- Name: pk_avatar; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY avatar
    ADD CONSTRAINT pk_avatar PRIMARY KEY (id);


--
-- Name: pk_board; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY board
    ADD CONSTRAINT pk_board PRIMARY KEY (id);


--
-- Name: pk_boardproject; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY boardproject
    ADD CONSTRAINT pk_boardproject PRIMARY KEY (board_id, project_id);


--
-- Name: pk_changegroup; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY changegroup
    ADD CONSTRAINT pk_changegroup PRIMARY KEY (id);


--
-- Name: pk_changeitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY changeitem
    ADD CONSTRAINT pk_changeitem PRIMARY KEY (id);


--
-- Name: pk_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY clusteredjob
    ADD CONSTRAINT pk_clusteredjob PRIMARY KEY (id);


--
-- Name: pk_clusterlockstatus; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY clusterlockstatus
    ADD CONSTRAINT pk_clusterlockstatus PRIMARY KEY (id);


--
-- Name: pk_clustermessage; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY clustermessage
    ADD CONSTRAINT pk_clustermessage PRIMARY KEY (id);


--
-- Name: pk_clusternode; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY clusternode
    ADD CONSTRAINT pk_clusternode PRIMARY KEY (node_id);


--
-- Name: pk_clusternodeheartbeat; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY clusternodeheartbeat
    ADD CONSTRAINT pk_clusternodeheartbeat PRIMARY KEY (node_id);


--
-- Name: pk_clusterupgradestate; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY clusterupgradestate
    ADD CONSTRAINT pk_clusterupgradestate PRIMARY KEY (id);


--
-- Name: pk_columnlayout; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY columnlayout
    ADD CONSTRAINT pk_columnlayout PRIMARY KEY (id);


--
-- Name: pk_columnlayoutitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY columnlayoutitem
    ADD CONSTRAINT pk_columnlayoutitem PRIMARY KEY (id);


--
-- Name: pk_component; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY component
    ADD CONSTRAINT pk_component PRIMARY KEY (id);


--
-- Name: pk_configurationcontext; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY configurationcontext
    ADD CONSTRAINT pk_configurationcontext PRIMARY KEY (id);


--
-- Name: pk_customfield; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY customfield
    ADD CONSTRAINT pk_customfield PRIMARY KEY (id);


--
-- Name: pk_customfieldoption; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY customfieldoption
    ADD CONSTRAINT pk_customfieldoption PRIMARY KEY (id);


--
-- Name: pk_customfieldvalue; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY customfieldvalue
    ADD CONSTRAINT pk_customfieldvalue PRIMARY KEY (id);


--
-- Name: pk_cwd_application; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT pk_cwd_application PRIMARY KEY (id);


--
-- Name: pk_cwd_application_address; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT pk_cwd_application_address PRIMARY KEY (application_id, remote_address);


--
-- Name: pk_cwd_directory; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT pk_cwd_directory PRIMARY KEY (id);


--
-- Name: pk_cwd_directory_attribute; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT pk_cwd_directory_attribute PRIMARY KEY (directory_id, attribute_name);


--
-- Name: pk_cwd_directory_operation; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT pk_cwd_directory_operation PRIMARY KEY (directory_id, operation_type);


--
-- Name: pk_cwd_group; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT pk_cwd_group PRIMARY KEY (id);


--
-- Name: pk_cwd_group_attributes; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_group_attributes
    ADD CONSTRAINT pk_cwd_group_attributes PRIMARY KEY (id);


--
-- Name: pk_cwd_membership; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT pk_cwd_membership PRIMARY KEY (id);


--
-- Name: pk_cwd_user; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT pk_cwd_user PRIMARY KEY (id);


--
-- Name: pk_cwd_user_attributes; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY cwd_user_attributes
    ADD CONSTRAINT pk_cwd_user_attributes PRIMARY KEY (id);


--
-- Name: pk_deadletter; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY deadletter
    ADD CONSTRAINT pk_deadletter PRIMARY KEY (id);


--
-- Name: pk_draftworkflowscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY draftworkflowscheme
    ADD CONSTRAINT pk_draftworkflowscheme PRIMARY KEY (id);


--
-- Name: pk_draftworkflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY draftworkflowschemeentity
    ADD CONSTRAINT pk_draftworkflowschemeentity PRIMARY KEY (id);


--
-- Name: pk_entity_property; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY entity_property
    ADD CONSTRAINT pk_entity_property PRIMARY KEY (id);


--
-- Name: pk_entity_property_index_docum; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY entity_property_index_document
    ADD CONSTRAINT pk_entity_property_index_docum PRIMARY KEY (id);


--
-- Name: pk_entity_translation; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY entity_translation
    ADD CONSTRAINT pk_entity_translation PRIMARY KEY (id);


--
-- Name: pk_external_entities; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY external_entities
    ADD CONSTRAINT pk_external_entities PRIMARY KEY (id);


--
-- Name: pk_externalgadget; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY externalgadget
    ADD CONSTRAINT pk_externalgadget PRIMARY KEY (id);


--
-- Name: pk_favouriteassociations; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY favouriteassociations
    ADD CONSTRAINT pk_favouriteassociations PRIMARY KEY (id);


--
-- Name: pk_feature; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY feature
    ADD CONSTRAINT pk_feature PRIMARY KEY (id);


--
-- Name: pk_fieldconfigscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldconfigscheme
    ADD CONSTRAINT pk_fieldconfigscheme PRIMARY KEY (id);


--
-- Name: pk_fieldconfigschemeissuetype; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldconfigschemeissuetype
    ADD CONSTRAINT pk_fieldconfigschemeissuetype PRIMARY KEY (id);


--
-- Name: pk_fieldconfiguration; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldconfiguration
    ADD CONSTRAINT pk_fieldconfiguration PRIMARY KEY (id);


--
-- Name: pk_fieldlayout; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldlayout
    ADD CONSTRAINT pk_fieldlayout PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldlayoutitem
    ADD CONSTRAINT pk_fieldlayoutitem PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldlayoutscheme
    ADD CONSTRAINT pk_fieldlayoutscheme PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutschemeassociatio; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldlayoutschemeassociation
    ADD CONSTRAINT pk_fieldlayoutschemeassociatio PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutschemeentity; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldlayoutschemeentity
    ADD CONSTRAINT pk_fieldlayoutschemeentity PRIMARY KEY (id);


--
-- Name: pk_fieldscreen; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldscreen
    ADD CONSTRAINT pk_fieldscreen PRIMARY KEY (id);


--
-- Name: pk_fieldscreenlayoutitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldscreenlayoutitem
    ADD CONSTRAINT pk_fieldscreenlayoutitem PRIMARY KEY (id);


--
-- Name: pk_fieldscreenscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldscreenscheme
    ADD CONSTRAINT pk_fieldscreenscheme PRIMARY KEY (id);


--
-- Name: pk_fieldscreenschemeitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldscreenschemeitem
    ADD CONSTRAINT pk_fieldscreenschemeitem PRIMARY KEY (id);


--
-- Name: pk_fieldscreentab; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fieldscreentab
    ADD CONSTRAINT pk_fieldscreentab PRIMARY KEY (id);


--
-- Name: pk_fileattachment; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY fileattachment
    ADD CONSTRAINT pk_fileattachment PRIMARY KEY (id);


--
-- Name: pk_filtersubscription; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY filtersubscription
    ADD CONSTRAINT pk_filtersubscription PRIMARY KEY (id);


--
-- Name: pk_gadgetuserpreference; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY gadgetuserpreference
    ADD CONSTRAINT pk_gadgetuserpreference PRIMARY KEY (id);


--
-- Name: pk_genericconfiguration; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY genericconfiguration
    ADD CONSTRAINT pk_genericconfiguration PRIMARY KEY (id);


--
-- Name: pk_globalpermissionentry; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY globalpermissionentry
    ADD CONSTRAINT pk_globalpermissionentry PRIMARY KEY (id);


--
-- Name: pk_groupbase; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY groupbase
    ADD CONSTRAINT pk_groupbase PRIMARY KEY (id);


--
-- Name: pk_issue_field_option; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issue_field_option
    ADD CONSTRAINT pk_issue_field_option PRIMARY KEY (id);


--
-- Name: pk_issue_field_option_scope; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issue_field_option_scope
    ADD CONSTRAINT pk_issue_field_option_scope PRIMARY KEY (id);


--
-- Name: pk_issuelink; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuelink
    ADD CONSTRAINT pk_issuelink PRIMARY KEY (id);


--
-- Name: pk_issuelinktype; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuelinktype
    ADD CONSTRAINT pk_issuelinktype PRIMARY KEY (id);


--
-- Name: pk_issuesecurityscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuesecurityscheme
    ADD CONSTRAINT pk_issuesecurityscheme PRIMARY KEY (id);


--
-- Name: pk_issuestatus; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuestatus
    ADD CONSTRAINT pk_issuestatus PRIMARY KEY (id);


--
-- Name: pk_issuetype; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuetype
    ADD CONSTRAINT pk_issuetype PRIMARY KEY (id);


--
-- Name: pk_issuetypescreenscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuetypescreenscheme
    ADD CONSTRAINT pk_issuetypescreenscheme PRIMARY KEY (id);


--
-- Name: pk_issuetypescreenschemeentity; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY issuetypescreenschemeentity
    ADD CONSTRAINT pk_issuetypescreenschemeentity PRIMARY KEY (id);


--
-- Name: pk_jiraaction; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiraaction
    ADD CONSTRAINT pk_jiraaction PRIMARY KEY (id);


--
-- Name: pk_jiradraftworkflows; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiradraftworkflows
    ADD CONSTRAINT pk_jiradraftworkflows PRIMARY KEY (id);


--
-- Name: pk_jiraeventtype; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiraeventtype
    ADD CONSTRAINT pk_jiraeventtype PRIMARY KEY (id);


--
-- Name: pk_jiraissue; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiraissue
    ADD CONSTRAINT pk_jiraissue PRIMARY KEY (id);


--
-- Name: pk_jiraperms; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiraperms
    ADD CONSTRAINT pk_jiraperms PRIMARY KEY (id);


--
-- Name: pk_jiraworkflows; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiraworkflows
    ADD CONSTRAINT pk_jiraworkflows PRIMARY KEY (id);


--
-- Name: pk_jiraworkflowstatuses; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jiraworkflowstatuses
    ADD CONSTRAINT pk_jiraworkflowstatuses PRIMARY KEY (id);


--
-- Name: pk_jquartz_blob_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_blob_triggers
    ADD CONSTRAINT pk_jquartz_blob_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_calendars; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_calendars
    ADD CONSTRAINT pk_jquartz_calendars PRIMARY KEY (calendar_name);


--
-- Name: pk_jquartz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_cron_triggers
    ADD CONSTRAINT pk_jquartz_cron_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_fired_triggers
    ADD CONSTRAINT pk_jquartz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: pk_jquartz_job_details; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_job_details
    ADD CONSTRAINT pk_jquartz_job_details PRIMARY KEY (job_name, job_group);


--
-- Name: pk_jquartz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_job_listeners
    ADD CONSTRAINT pk_jquartz_job_listeners PRIMARY KEY (job_name, job_group, job_listener);


--
-- Name: pk_jquartz_locks; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_locks
    ADD CONSTRAINT pk_jquartz_locks PRIMARY KEY (lock_name);


--
-- Name: pk_jquartz_paused_trigger_grps; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_paused_trigger_grps
    ADD CONSTRAINT pk_jquartz_paused_trigger_grps PRIMARY KEY (trigger_group);


--
-- Name: pk_jquartz_scheduler_state; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_scheduler_state
    ADD CONSTRAINT pk_jquartz_scheduler_state PRIMARY KEY (instance_name);


--
-- Name: pk_jquartz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_simple_triggers
    ADD CONSTRAINT pk_jquartz_simple_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_simprop_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_simprop_triggers
    ADD CONSTRAINT pk_jquartz_simprop_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_trigger_listeners
    ADD CONSTRAINT pk_jquartz_trigger_listeners PRIMARY KEY (trigger_group, trigger_listener);


--
-- Name: pk_jquartz_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY jquartz_triggers
    ADD CONSTRAINT pk_jquartz_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_label; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY label
    ADD CONSTRAINT pk_label PRIMARY KEY (id);


--
-- Name: pk_licenserolesdefault; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY licenserolesdefault
    ADD CONSTRAINT pk_licenserolesdefault PRIMARY KEY (id);


--
-- Name: pk_licenserolesgroup; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY licenserolesgroup
    ADD CONSTRAINT pk_licenserolesgroup PRIMARY KEY (id);


--
-- Name: pk_listenerconfig; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY listenerconfig
    ADD CONSTRAINT pk_listenerconfig PRIMARY KEY (id);


--
-- Name: pk_mailserver; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY mailserver
    ADD CONSTRAINT pk_mailserver PRIMARY KEY (id);


--
-- Name: pk_managedconfigurationitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY managedconfigurationitem
    ADD CONSTRAINT pk_managedconfigurationitem PRIMARY KEY (id);


--
-- Name: pk_membershipbase; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY membershipbase
    ADD CONSTRAINT pk_membershipbase PRIMARY KEY (id);


--
-- Name: pk_moved_issue_key; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY moved_issue_key
    ADD CONSTRAINT pk_moved_issue_key PRIMARY KEY (id);


--
-- Name: pk_nodeassociation; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY nodeassociation
    ADD CONSTRAINT pk_nodeassociation PRIMARY KEY (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type);


--
-- Name: pk_nodeindexcounter; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY nodeindexcounter
    ADD CONSTRAINT pk_nodeindexcounter PRIMARY KEY (id);


--
-- Name: pk_notification; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY notification
    ADD CONSTRAINT pk_notification PRIMARY KEY (id);


--
-- Name: pk_notificationinstance; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY notificationinstance
    ADD CONSTRAINT pk_notificationinstance PRIMARY KEY (id);


--
-- Name: pk_notificationscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY notificationscheme
    ADD CONSTRAINT pk_notificationscheme PRIMARY KEY (id);


--
-- Name: pk_oauthconsumer; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY oauthconsumer
    ADD CONSTRAINT pk_oauthconsumer PRIMARY KEY (id);


--
-- Name: pk_oauthconsumertoken; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY oauthconsumertoken
    ADD CONSTRAINT pk_oauthconsumertoken PRIMARY KEY (id);


--
-- Name: pk_oauthspconsumer; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY oauthspconsumer
    ADD CONSTRAINT pk_oauthspconsumer PRIMARY KEY (id);


--
-- Name: pk_oauthsptoken; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY oauthsptoken
    ADD CONSTRAINT pk_oauthsptoken PRIMARY KEY (id);


--
-- Name: pk_optionconfiguration; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY optionconfiguration
    ADD CONSTRAINT pk_optionconfiguration PRIMARY KEY (id);


--
-- Name: pk_os_currentstep; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY os_currentstep
    ADD CONSTRAINT pk_os_currentstep PRIMARY KEY (id);


--
-- Name: pk_os_currentstep_prev; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY os_currentstep_prev
    ADD CONSTRAINT pk_os_currentstep_prev PRIMARY KEY (id, previous_id);


--
-- Name: pk_os_historystep; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY os_historystep
    ADD CONSTRAINT pk_os_historystep PRIMARY KEY (id);


--
-- Name: pk_os_historystep_prev; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY os_historystep_prev
    ADD CONSTRAINT pk_os_historystep_prev PRIMARY KEY (id, previous_id);


--
-- Name: pk_os_wfentry; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY os_wfentry
    ADD CONSTRAINT pk_os_wfentry PRIMARY KEY (id);


--
-- Name: pk_permissionscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY permissionscheme
    ADD CONSTRAINT pk_permissionscheme PRIMARY KEY (id);


--
-- Name: pk_pluginstate; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY pluginstate
    ADD CONSTRAINT pk_pluginstate PRIMARY KEY (pluginkey);


--
-- Name: pk_pluginversion; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY pluginversion
    ADD CONSTRAINT pk_pluginversion PRIMARY KEY (id);


--
-- Name: pk_portalpage; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY portalpage
    ADD CONSTRAINT pk_portalpage PRIMARY KEY (id);


--
-- Name: pk_portletconfiguration; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY portletconfiguration
    ADD CONSTRAINT pk_portletconfiguration PRIMARY KEY (id);


--
-- Name: pk_priority; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY priority
    ADD CONSTRAINT pk_priority PRIMARY KEY (id);


--
-- Name: pk_productlicense; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY productlicense
    ADD CONSTRAINT pk_productlicense PRIMARY KEY (id);


--
-- Name: pk_project; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY project
    ADD CONSTRAINT pk_project PRIMARY KEY (id);


--
-- Name: pk_project_key; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY project_key
    ADD CONSTRAINT pk_project_key PRIMARY KEY (id);


--
-- Name: pk_projectcategory; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY projectcategory
    ADD CONSTRAINT pk_projectcategory PRIMARY KEY (id);


--
-- Name: pk_projectchangedtime; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY projectchangedtime
    ADD CONSTRAINT pk_projectchangedtime PRIMARY KEY (project_id);


--
-- Name: pk_projectrole; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY projectrole
    ADD CONSTRAINT pk_projectrole PRIMARY KEY (id);


--
-- Name: pk_projectroleactor; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY projectroleactor
    ADD CONSTRAINT pk_projectroleactor PRIMARY KEY (id);


--
-- Name: pk_projectversion; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY projectversion
    ADD CONSTRAINT pk_projectversion PRIMARY KEY (id);


--
-- Name: pk_propertydata; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertydata
    ADD CONSTRAINT pk_propertydata PRIMARY KEY (id);


--
-- Name: pk_propertydate; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertydate
    ADD CONSTRAINT pk_propertydate PRIMARY KEY (id);


--
-- Name: pk_propertydecimal; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertydecimal
    ADD CONSTRAINT pk_propertydecimal PRIMARY KEY (id);


--
-- Name: pk_propertyentry; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertyentry
    ADD CONSTRAINT pk_propertyentry PRIMARY KEY (id);


--
-- Name: pk_propertynumber; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertynumber
    ADD CONSTRAINT pk_propertynumber PRIMARY KEY (id);


--
-- Name: pk_propertystring; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertystring
    ADD CONSTRAINT pk_propertystring PRIMARY KEY (id);


--
-- Name: pk_propertytext; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY propertytext
    ADD CONSTRAINT pk_propertytext PRIMARY KEY (id);


--
-- Name: pk_qrtz_calendars; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_calendars
    ADD CONSTRAINT pk_qrtz_calendars PRIMARY KEY (calendar_name);


--
-- Name: pk_qrtz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_cron_triggers
    ADD CONSTRAINT pk_qrtz_cron_triggers PRIMARY KEY (id);


--
-- Name: pk_qrtz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_fired_triggers
    ADD CONSTRAINT pk_qrtz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: pk_qrtz_job_details; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_job_details
    ADD CONSTRAINT pk_qrtz_job_details PRIMARY KEY (id);


--
-- Name: pk_qrtz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_job_listeners
    ADD CONSTRAINT pk_qrtz_job_listeners PRIMARY KEY (id);


--
-- Name: pk_qrtz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_simple_triggers
    ADD CONSTRAINT pk_qrtz_simple_triggers PRIMARY KEY (id);


--
-- Name: pk_qrtz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_trigger_listeners
    ADD CONSTRAINT pk_qrtz_trigger_listeners PRIMARY KEY (id);


--
-- Name: pk_qrtz_triggers; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY qrtz_triggers
    ADD CONSTRAINT pk_qrtz_triggers PRIMARY KEY (id);


--
-- Name: pk_reindex_component; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY reindex_component
    ADD CONSTRAINT pk_reindex_component PRIMARY KEY (id);


--
-- Name: pk_reindex_request; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY reindex_request
    ADD CONSTRAINT pk_reindex_request PRIMARY KEY (id);


--
-- Name: pk_remembermetoken; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY remembermetoken
    ADD CONSTRAINT pk_remembermetoken PRIMARY KEY (id);


--
-- Name: pk_remotelink; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY remotelink
    ADD CONSTRAINT pk_remotelink PRIMARY KEY (id);


--
-- Name: pk_replicatedindexoperation; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY replicatedindexoperation
    ADD CONSTRAINT pk_replicatedindexoperation PRIMARY KEY (id);


--
-- Name: pk_resolution; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY resolution
    ADD CONSTRAINT pk_resolution PRIMARY KEY (id);


--
-- Name: pk_rundetails; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY rundetails
    ADD CONSTRAINT pk_rundetails PRIMARY KEY (id);


--
-- Name: pk_schemeissuesecurities; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY schemeissuesecurities
    ADD CONSTRAINT pk_schemeissuesecurities PRIMARY KEY (id);


--
-- Name: pk_schemeissuesecuritylevels; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY schemeissuesecuritylevels
    ADD CONSTRAINT pk_schemeissuesecuritylevels PRIMARY KEY (id);


--
-- Name: pk_schemepermissions; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY schemepermissions
    ADD CONSTRAINT pk_schemepermissions PRIMARY KEY (id);


--
-- Name: pk_searchrequest; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY searchrequest
    ADD CONSTRAINT pk_searchrequest PRIMARY KEY (id);


--
-- Name: pk_sequence_value_item; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY sequence_value_item
    ADD CONSTRAINT pk_sequence_value_item PRIMARY KEY (seq_name);


--
-- Name: pk_serviceconfig; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY serviceconfig
    ADD CONSTRAINT pk_serviceconfig PRIMARY KEY (id);


--
-- Name: pk_sharepermissions; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY sharepermissions
    ADD CONSTRAINT pk_sharepermissions PRIMARY KEY (id);


--
-- Name: pk_tempattachmentsmonitor; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY tempattachmentsmonitor
    ADD CONSTRAINT pk_tempattachmentsmonitor PRIMARY KEY (temporary_attachment_id);


--
-- Name: pk_trackback_ping; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY trackback_ping
    ADD CONSTRAINT pk_trackback_ping PRIMARY KEY (id);


--
-- Name: pk_trustedapp; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY trustedapp
    ADD CONSTRAINT pk_trustedapp PRIMARY KEY (id);


--
-- Name: pk_upgradehistory; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY upgradehistory
    ADD CONSTRAINT pk_upgradehistory PRIMARY KEY (upgradeclass);


--
-- Name: pk_upgradetaskhistory; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY upgradetaskhistory
    ADD CONSTRAINT pk_upgradetaskhistory PRIMARY KEY (id);


--
-- Name: pk_upgradetaskhistoryauditlog; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY upgradetaskhistoryauditlog
    ADD CONSTRAINT pk_upgradetaskhistoryauditlog PRIMARY KEY (id);


--
-- Name: pk_upgradeversionhistory; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY upgradeversionhistory
    ADD CONSTRAINT pk_upgradeversionhistory PRIMARY KEY (targetbuild);


--
-- Name: pk_userassociation; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY userassociation
    ADD CONSTRAINT pk_userassociation PRIMARY KEY (source_name, sink_node_id, sink_node_entity, association_type);


--
-- Name: pk_userbase; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY userbase
    ADD CONSTRAINT pk_userbase PRIMARY KEY (id);


--
-- Name: pk_userhistoryitem; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY userhistoryitem
    ADD CONSTRAINT pk_userhistoryitem PRIMARY KEY (id);


--
-- Name: pk_userpickerfilter; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY userpickerfilter
    ADD CONSTRAINT pk_userpickerfilter PRIMARY KEY (id);


--
-- Name: pk_userpickerfiltergroup; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY userpickerfiltergroup
    ADD CONSTRAINT pk_userpickerfiltergroup PRIMARY KEY (id);


--
-- Name: pk_userpickerfilterrole; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY userpickerfilterrole
    ADD CONSTRAINT pk_userpickerfilterrole PRIMARY KEY (id);


--
-- Name: pk_versioncontrol; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY versioncontrol
    ADD CONSTRAINT pk_versioncontrol PRIMARY KEY (id);


--
-- Name: pk_votehistory; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY votehistory
    ADD CONSTRAINT pk_votehistory PRIMARY KEY (id);


--
-- Name: pk_workflowscheme; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY workflowscheme
    ADD CONSTRAINT pk_workflowscheme PRIMARY KEY (id);


--
-- Name: pk_workflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY workflowschemeentity
    ADD CONSTRAINT pk_workflowschemeentity PRIMARY KEY (id);


--
-- Name: pk_worklog; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY worklog
    ADD CONSTRAINT pk_worklog PRIMARY KEY (id);


--
-- Name: u_ao_587b34_project2070954277; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT u_ao_587b34_project2070954277 UNIQUE ("NAME_UNIQUE_CONSTRAINT");


--
-- Name: u_ao_ed669c_seen_as1055534769; Type: CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT u_ao_ed669c_seen_as1055534769 UNIQUE ("ASSERTION_ID");


--
-- Name: action_author_created; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX action_author_created ON jiraaction USING btree (author, created);


--
-- Name: action_issue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX action_issue ON jiraaction USING btree (issueid);


--
-- Name: attach_issue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX attach_issue ON fileattachment USING btree (issueid);


--
-- Name: avatar_filename_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX avatar_filename_index ON avatar USING btree (filename, avatartype, systemavatar);


--
-- Name: avatar_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX avatar_index ON avatar USING btree (avatartype, owner);


--
-- Name: cf_cfoption; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX cf_cfoption ON customfieldoption USING btree (customfield);


--
-- Name: cf_userpickerfiltergroup; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX cf_userpickerfiltergroup ON userpickerfiltergroup USING btree (userpickerfilter);


--
-- Name: cf_userpickerfilterrole; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX cf_userpickerfilterrole ON userpickerfilterrole USING btree (userpickerfilter);


--
-- Name: cfvalue_issue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX cfvalue_issue ON customfieldvalue USING btree (issue, customfield);


--
-- Name: chggroup_author_created; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX chggroup_author_created ON changegroup USING btree (author, created);


--
-- Name: chggroup_issue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX chggroup_issue ON changegroup USING btree (issueid);


--
-- Name: chgitem_chggrp; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX chgitem_chggrp ON changeitem USING btree (groupid);


--
-- Name: chgitem_field; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX chgitem_field ON changeitem USING btree (field);


--
-- Name: cl_searchrequest; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX cl_searchrequest ON columnlayout USING btree (searchrequest);


--
-- Name: cl_username; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX cl_username ON columnlayout USING btree (username);


--
-- Name: cluster_lock_name_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX cluster_lock_name_idx ON clusterlockstatus USING btree (lock_name);


--
-- Name: clusteredjob_jobid_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX clusteredjob_jobid_idx ON clusteredjob USING btree (job_id);


--
-- Name: clusteredjob_jrk_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX clusteredjob_jrk_idx ON clusteredjob USING btree (job_runner_key);


--
-- Name: clusteredjob_nextrun_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX clusteredjob_nextrun_idx ON clusteredjob USING btree (next_run);


--
-- Name: confcontext; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX confcontext ON configurationcontext USING btree (projectcategory, project, customfield);


--
-- Name: confcontextfieldconfigscheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX confcontextfieldconfigscheme ON configurationcontext USING btree (fieldconfigscheme);


--
-- Name: confcontextprojectkey; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX confcontextprojectkey ON configurationcontext USING btree (project, customfield);


--
-- Name: deadletter_lastseen; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX deadletter_lastseen ON deadletter USING btree (last_seen);


--
-- Name: deadletter_msg_server_folder; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX deadletter_msg_server_folder ON deadletter USING btree (message_id, mail_server_id, folder_name);


--
-- Name: draft_workflow_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX draft_workflow_scheme ON draftworkflowschemeentity USING btree (scheme);


--
-- Name: draft_workflow_scheme_parent; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX draft_workflow_scheme_parent ON draftworkflowscheme USING btree (workflow_scheme_id);


--
-- Name: entityproperty_entity; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX entityproperty_entity ON entity_property USING btree (entity_name, entity_id);


--
-- Name: entityproperty_key; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX entityproperty_key ON entity_property USING btree (property_key);


--
-- Name: entitytranslation_locale; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX entitytranslation_locale ON entity_translation USING btree (locale);


--
-- Name: entpropindexdoc_module; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX entpropindexdoc_module ON entity_property_index_document USING btree (plugin_key, module_key);


--
-- Name: ext_entity_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX ext_entity_name ON external_entities USING btree (name);


--
-- Name: favourite_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX favourite_index ON favouriteassociations USING btree (username, entitytype, entityid);


--
-- Name: fc_fieldid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fc_fieldid ON fieldconfiguration USING btree (fieldid);


--
-- Name: fcs_fieldid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fcs_fieldid ON fieldconfigscheme USING btree (fieldid);


--
-- Name: fcs_issuetype; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fcs_issuetype ON fieldconfigschemeissuetype USING btree (issuetype);


--
-- Name: fcs_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fcs_scheme ON fieldconfigschemeissuetype USING btree (fieldconfigscheme);


--
-- Name: feature_id_userkey; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX feature_id_userkey ON feature USING btree (id, user_key);


--
-- Name: fieldid_fieldconf; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldid_fieldconf ON optionconfiguration USING btree (fieldid, fieldconfig);


--
-- Name: fieldid_optionid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldid_optionid ON optionconfiguration USING btree (fieldid, optionid);


--
-- Name: fieldlayout_layout; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldlayout_layout ON fieldlayoutschemeentity USING btree (fieldlayout);


--
-- Name: fieldlayout_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldlayout_scheme ON fieldlayoutschemeentity USING btree (scheme);


--
-- Name: fieldscitem_tab; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldscitem_tab ON fieldscreenlayoutitem USING btree (fieldscreentab);


--
-- Name: fieldscreen_field; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldscreen_field ON fieldscreenlayoutitem USING btree (fieldidentifier);


--
-- Name: fieldscreen_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldscreen_scheme ON issuetypescreenschemeentity USING btree (fieldscreenscheme);


--
-- Name: fieldscreen_tab; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fieldscreen_tab ON fieldscreentab USING btree (fieldscreen);


--
-- Name: fl_scheme_assoc; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX fl_scheme_assoc ON fieldlayoutschemeassociation USING btree (project, issuetype);


--
-- Name: historystep_entryid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX historystep_entryid ON os_historystep USING btree (entry_id);


--
-- Name: idx_all_project_ids; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_all_project_ids ON project_key USING btree (project_id);


--
-- Name: idx_all_project_keys; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX idx_all_project_keys ON project_key USING btree (project_key);


--
-- Name: idx_audit_item_log_id2; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_audit_item_log_id2 ON audit_item USING btree (log_id);


--
-- Name: idx_audit_log_created; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_audit_log_created ON audit_log USING btree (created);


--
-- Name: idx_board_board_ids; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_board_board_ids ON boardproject USING btree (board_id);


--
-- Name: idx_board_project_ids; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_board_project_ids ON boardproject USING btree (project_id);


--
-- Name: idx_changed_value_log_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_changed_value_log_id ON audit_changed_value USING btree (log_id);


--
-- Name: idx_cli_fieldidentifier; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_cli_fieldidentifier ON columnlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_component_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_component_name ON component USING btree (cname);


--
-- Name: idx_component_project; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_component_project ON component USING btree (project);


--
-- Name: idx_directory_active; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_directory_active ON cwd_directory USING btree (active);


--
-- Name: idx_directory_impl; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_directory_impl ON cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_directory_type; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_directory_type ON cwd_directory USING btree (directory_type);


--
-- Name: idx_display_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_display_name ON cwd_user USING btree (lower_display_name);


--
-- Name: idx_email_address; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_email_address ON cwd_user USING btree (lower_email_address);


--
-- Name: idx_first_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_first_name ON cwd_user USING btree (lower_first_name);


--
-- Name: idx_fli_fieldidentifier; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_fli_fieldidentifier ON fieldlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_group_active ON cwd_group USING btree (lower_group_name, active);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_group_attr_dir_name_lval ON cwd_group_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_group_dir_id ON cwd_group USING btree (directory_id);


--
-- Name: idx_last_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_last_name ON cwd_user USING btree (lower_last_name);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_mem_dir_child ON cwd_membership USING btree (lower_child_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_mem_dir_parent ON cwd_membership USING btree (lower_parent_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_mem_dir_parent_child ON cwd_membership USING btree (lower_parent_name, lower_child_name, membership_type, directory_id);


--
-- Name: idx_old_issue_key; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX idx_old_issue_key ON moved_issue_key USING btree (old_issue_key);


--
-- Name: idx_parent_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_parent_name ON jiraworkflowstatuses USING btree (parentname);


--
-- Name: idx_project_category_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_project_category_name ON projectcategory USING btree (cname);


--
-- Name: idx_project_key; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX idx_project_key ON project USING btree (pkey);


--
-- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON jquartz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_ft_j_g ON jquartz_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_ft_jg ON jquartz_fired_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_ft_t_g ON jquartz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_ft_tg ON jquartz_fired_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_ft_trig_inst_name ON jquartz_fired_triggers USING btree (sched_name, instance_name);


--
-- Name: idx_qrtz_j_g; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_j_g ON jquartz_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_j_grp ON jquartz_job_details USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_j_req_recovery ON jquartz_job_details USING btree (sched_name, requests_recovery);


--
-- Name: idx_qrtz_j_state; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_j_state ON jquartz_triggers USING btree (sched_name, trigger_state);


--
-- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_c ON jquartz_triggers USING btree (sched_name, calendar_name);


--
-- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_j ON jquartz_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_jg ON jquartz_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_n_g_state ON jquartz_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_n_state ON jquartz_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_next_fire_time ON jquartz_triggers USING btree (sched_name, next_fire_time);


--
-- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_nft_misfire ON jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_nft_st ON jquartz_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_nft_st_misfire ON jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- Name: idx_reindex_component_req_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_reindex_component_req_id ON reindex_component USING btree (request_id);


--
-- Name: idx_tam_by_created_time; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_tam_by_created_time ON tempattachmentsmonitor USING btree (created_time);


--
-- Name: idx_tam_by_form_token; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_tam_by_form_token ON tempattachmentsmonitor USING btree (form_token);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_user_attr_dir_name_lval ON cwd_user_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_version_project; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_version_project ON projectversion USING btree (project);


--
-- Name: idx_version_sequence; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX idx_version_sequence ON projectversion USING btree (sequence);


--
-- Name: index_ao_21f425_mes1965715920; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_21f425_mes1965715920 ON "AO_21F425_MESSAGE_MAPPING_AO" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_21f425_mes223897723; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_21f425_mes223897723 ON "AO_21F425_MESSAGE_MAPPING_AO" USING btree ("USER_HASH");


--
-- Name: index_ao_21f425_use1458667739; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_21f425_use1458667739 ON "AO_21F425_USER_PROPERTY_AO" USING btree ("USER");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_38321b_cus1828044926 ON "AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_550953_sho1778115994; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_550953_sho1778115994 ON "AO_550953_SHORTCUT" USING btree ("PROJECT_ID");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_563aee_act1642652291 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_563aee_act1978295567 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_563aee_act972488439 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_563aee_act995325379 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_563aee_obj696886343 ON "AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_563aee_tar521440921 ON "AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_575bf5_pro1117502689; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_575bf5_pro1117502689 ON "AO_575BF5_PROVIDER_ISSUE" USING btree ("STALE_AFTER");


--
-- Name: index_ao_575bf5_pro1348521624; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_575bf5_pro1348521624 ON "AO_575BF5_PROVIDER_ISSUE" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_575bf5_pro1681808571; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_575bf5_pro1681808571 ON "AO_575BF5_PROCESSED_COMMITS" USING btree ("COMMIT_HASH");


--
-- Name: index_ao_575bf5_pro741170824; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_575bf5_pro741170824 ON "AO_575BF5_PROVIDER_ISSUE" USING btree ("ISSUE_ID");


--
-- Name: index_ao_575bf5_pro78019725; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_575bf5_pro78019725 ON "AO_575BF5_PROCESSED_COMMITS" USING btree ("METADATA_HASH");


--
-- Name: index_ao_587b34_pro1732672724; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_587b34_pro1732672724 ON "AO_587B34_PROJECT_CONFIG" USING btree ("ROOM_ID");


--
-- Name: index_ao_587b34_pro193829489; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_587b34_pro193829489 ON "AO_587B34_PROJECT_CONFIG" USING btree ("CONFIGURATION_GROUP_ID");


--
-- Name: index_ao_587b34_pro2093917684; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_587b34_pro2093917684 ON "AO_587B34_PROJECT_CONFIG" USING btree ("PROJECT_ID");


--
-- Name: index_ao_587b34_pro2115480362; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_587b34_pro2115480362 ON "AO_587B34_PROJECT_CONFIG" USING btree ("NAME");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_60db71_aud137736645; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_aud137736645 ON "AO_60DB71_AUDITENTRY" USING btree ("ENTITY_CLASS");


--
-- Name: index_ao_60db71_aud1756477597; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_aud1756477597 ON "AO_60DB71_AUDITENTRY" USING btree ("CATEGORY");


--
-- Name: index_ao_60db71_aud604788536; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_aud604788536 ON "AO_60DB71_AUDITENTRY" USING btree ("ENTITY_ID");


--
-- Name: index_ao_60db71_boa2110227660; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_boa2110227660 ON "AO_60DB71_BOARDADMINS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car149237770; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_car149237770 ON "AO_60DB71_CARDLAYOUT" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car2031978979; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_car2031978979 ON "AO_60DB71_CARDCOLOR" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_col1856623434; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_col1856623434 ON "AO_60DB71_COLUMNSTATUS" USING btree ("COLUMN_ID");


--
-- Name: index_ao_60db71_col2098611346; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_col2098611346 ON "AO_60DB71_COLUMN" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_det878495474; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_det878495474 ON "AO_60DB71_DETAILVIEWFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_est1680565966; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_est1680565966 ON "AO_60DB71_ESTIMATESTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_iss1616896230; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_iss1616896230 ON "AO_60DB71_ISSUERANKING" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_iss1786461035; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_iss1786461035 ON "AO_60DB71_ISSUERANKING" USING btree ("CUSTOM_FIELD_ID");


--
-- Name: index_ao_60db71_lex1569533973; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_lex1569533973 ON "AO_60DB71_LEXORANK" USING btree ("FIELD_ID", "RANK");


--
-- Name: index_ao_60db71_lex1632828616; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_lex1632828616 ON "AO_60DB71_LEXORANK" USING btree ("LOCK_HASH");


--
-- Name: index_ao_60db71_lex1694305086; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_lex1694305086 ON "AO_60DB71_LEXORANK" USING btree ("FIELD_ID", "BUCKET", "RANK");


--
-- Name: index_ao_60db71_lex604083109; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_lex604083109 ON "AO_60DB71_LEXORANK" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_non1145824037; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_non1145824037 ON "AO_60DB71_NONWORKINGDAY" USING btree ("WORKING_DAYS_ID");


--
-- Name: index_ao_60db71_qui432573905; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_qui432573905 ON "AO_60DB71_QUICKFILTER" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_spr1457658269; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_spr1457658269 ON "AO_60DB71_SPRINT" USING btree ("SEQUENCE");


--
-- Name: index_ao_60db71_sta1907922871; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_sta1907922871 ON "AO_60DB71_STATSFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_sub730851836; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_sub730851836 ON "AO_60DB71_SUBQUERY" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_swi1429284592; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_swi1429284592 ON "AO_60DB71_SWIMLANE" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_tra1711190333; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_tra1711190333 ON "AO_60DB71_TRACKINGSTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_wor1205491794; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_60db71_wor1205491794 ON "AO_60DB71_WORKINGDAYS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_e8b6cc_bra1368852151; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_bra1368852151 ON "AO_E8B6CC_BRANCH_HEAD_MAPPING" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_bra405461593; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_bra405461593 ON "AO_E8B6CC_BRANCH" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_cha1086340152; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_cha1086340152 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("SMARTCOMMIT_AVAILABLE");


--
-- Name: index_ao_e8b6cc_cha1483243924; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_cha1483243924 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_cha509722037; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_cha509722037 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("RAW_NODE");


--
-- Name: index_ao_e8b6cc_cha897886051; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_cha897886051 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("AUTHOR");


--
-- Name: index_ao_e8b6cc_com1308336834; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_com1308336834 ON "AO_E8B6CC_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_commit_node; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_commit_node ON "AO_E8B6CC_COMMIT" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_git1120895454; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_git1120895454 ON "AO_E8B6CC_GIT_HUB_EVENT" USING btree ("GIT_HUB_ID");


--
-- Name: index_ao_e8b6cc_git1804640320; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_git1804640320 ON "AO_E8B6CC_GIT_HUB_EVENT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_iss1229805759; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_iss1229805759 ON "AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_iss1325927291; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_iss1325927291 ON "AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("BRANCH_ID");


--
-- Name: index_ao_e8b6cc_iss353204826; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_iss353204826 ON "AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss417950110; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_iss417950110 ON "AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss648895902; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_iss648895902 ON "AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("PROJECT_KEY");


--
-- Name: index_ao_e8b6cc_mes1247039512; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_mes1247039512 ON "AO_E8B6CC_MESSAGE" USING btree ("ADDRESS");


--
-- Name: index_ao_e8b6cc_mes1391090780; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_mes1391090780 ON "AO_E8B6CC_MESSAGE_TAG" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes1648007831; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_mes1648007831 ON "AO_E8B6CC_MESSAGE_TAG" USING btree ("TAG");


--
-- Name: index_ao_e8b6cc_mes344532677; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_mes344532677 ON "AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes59146529; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_mes59146529 ON "AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("STATE");


--
-- Name: index_ao_e8b6cc_mes60959905; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_mes60959905 ON "AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("QUEUE");


--
-- Name: index_ao_e8b6cc_org1513110290; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_org1513110290 ON "AO_E8B6CC_ORGANIZATION_MAPPING" USING btree ("DVCS_TYPE");


--
-- Name: index_ao_e8b6cc_org1899590324; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_org1899590324 ON "AO_E8B6CC_ORG_TO_PROJECT" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_pr_1045528152; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_1045528152 ON "AO_E8B6CC_PR_TO_COMMIT" USING btree ("REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1105917040; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_1105917040 ON "AO_E8B6CC_PR_PARTICIPANT" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1458633226; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_1458633226 ON "AO_E8B6CC_PR_TO_COMMIT" USING btree ("COMMIT_ID");


--
-- Name: index_ao_e8b6cc_pr_1639282617; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_1639282617 ON "AO_E8B6CC_PR_ISSUE_KEY" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_2106805302; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_2106805302 ON "AO_E8B6CC_PR_ISSUE_KEY" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_pr_281193494; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_281193494 ON "AO_E8B6CC_PR_ISSUE_KEY" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_685151049; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_685151049 ON "AO_E8B6CC_PR_TO_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_758084799; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pr_758084799 ON "AO_E8B6CC_PR_PARTICIPANT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1230717024; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pul1230717024 ON "AO_E8B6CC_PULL_REQUEST" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1448445182; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pul1448445182 ON "AO_E8B6CC_PULL_REQUEST" USING btree ("TO_REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_pul602811170; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_pul602811170 ON "AO_E8B6CC_PULL_REQUEST" USING btree ("REMOTE_ID");


--
-- Name: index_ao_e8b6cc_rep1082901832; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_rep1082901832 ON "AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep1928770529; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_rep1928770529 ON "AO_E8B6CC_REPO_TO_PROJECT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep702725269; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_rep702725269 ON "AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_rep922992576; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_rep922992576 ON "AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_rep93578901; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_rep93578901 ON "AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("LINKED");


--
-- Name: index_ao_e8b6cc_syn203792807; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_syn203792807 ON "AO_E8B6CC_SYNC_AUDIT_LOG" USING btree ("REPO_ID");


--
-- Name: index_ao_e8b6cc_syn493078035; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_e8b6cc_syn493078035 ON "AO_E8B6CC_SYNC_EVENT" USING btree ("REPO_ID");


--
-- Name: index_ao_ed669c_see20117222; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX index_ao_ed669c_see20117222 ON "AO_ED669C_SEEN_ASSERTIONS" USING btree ("EXPIRY_TIMESTAMP");


--
-- Name: issue_assignee; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_assignee ON jiraissue USING btree (assignee);


--
-- Name: issue_created; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_created ON jiraissue USING btree (created);


--
-- Name: issue_duedate; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_duedate ON jiraissue USING btree (duedate);


--
-- Name: issue_proj_num; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_proj_num ON jiraissue USING btree (issuenum, project);


--
-- Name: issue_proj_status; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_proj_status ON jiraissue USING btree (project, issuestatus);


--
-- Name: issue_reporter; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_reporter ON jiraissue USING btree (reporter);


--
-- Name: issue_resolutiondate; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_resolutiondate ON jiraissue USING btree (resolutiondate);


--
-- Name: issue_updated; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_updated ON jiraissue USING btree (updated);


--
-- Name: issue_votes; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_votes ON jiraissue USING btree (votes);


--
-- Name: issue_watches; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_watches ON jiraissue USING btree (watches);


--
-- Name: issue_workflow; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issue_workflow ON jiraissue USING btree (workflow_id);


--
-- Name: issuelink_dest; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issuelink_dest ON issuelink USING btree (destination);


--
-- Name: issuelink_src; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issuelink_src ON issuelink USING btree (source);


--
-- Name: issuelink_type; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX issuelink_type ON issuelink USING btree (linktype);


--
-- Name: label_fieldissue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX label_fieldissue ON label USING btree (issue, fieldid);


--
-- Name: label_fieldissuelabel; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX label_fieldissuelabel ON label USING btree (issue, fieldid, label);


--
-- Name: label_issue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX label_issue ON label USING btree (issue);


--
-- Name: label_label; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX label_label ON label USING btree (label);


--
-- Name: licenseroledefault_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX licenseroledefault_index ON licenserolesdefault USING btree (license_role_name);


--
-- Name: licenserolegroup_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX licenserolegroup_index ON licenserolesgroup USING btree (license_role_name, group_id);


--
-- Name: linktypename; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX linktypename ON issuelinktype USING btree (linkname);


--
-- Name: linktypestyle; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX linktypestyle ON issuelinktype USING btree (pstyle);


--
-- Name: managedconfigitem_id_type_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX managedconfigitem_id_type_idx ON managedconfigurationitem USING btree (item_id, item_type);


--
-- Name: mshipbase_group; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX mshipbase_group ON membershipbase USING btree (group_name);


--
-- Name: mshipbase_user; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX mshipbase_user ON membershipbase USING btree (user_name);


--
-- Name: node_id_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX node_id_idx ON nodeindexcounter USING btree (node_id, sending_node_id);


--
-- Name: node_operation_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX node_operation_idx ON replicatedindexoperation USING btree (node_id, affected_index, operation, index_time);


--
-- Name: node_sink; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX node_sink ON nodeassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: node_source; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX node_source ON nodeassociation USING btree (source_node_id, source_node_entity);


--
-- Name: notif_messageid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX notif_messageid ON notificationinstance USING btree (messageid);


--
-- Name: notif_source; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX notif_source ON notificationinstance USING btree (source);


--
-- Name: ntfctn_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX ntfctn_scheme ON notification USING btree (scheme);


--
-- Name: oauth_consumer_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX oauth_consumer_index ON oauthconsumer USING btree (consumer_key);


--
-- Name: oauth_consumer_service_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX oauth_consumer_service_index ON oauthconsumer USING btree (consumerservice);


--
-- Name: oauth_consumer_token_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX oauth_consumer_token_index ON oauthconsumertoken USING btree (token);


--
-- Name: oauth_consumer_token_key_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX oauth_consumer_token_key_index ON oauthconsumertoken USING btree (token_key);


--
-- Name: oauth_sp_consumer_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX oauth_sp_consumer_index ON oauthspconsumer USING btree (consumer_key);


--
-- Name: oauth_sp_consumer_key_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX oauth_sp_consumer_key_index ON oauthsptoken USING btree (consumer_key);


--
-- Name: oauth_sp_token_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX oauth_sp_token_index ON oauthsptoken USING btree (token);


--
-- Name: ordernumber_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX ordernumber_idx ON clusterupgradestate USING btree (order_number);


--
-- Name: osgroup_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX osgroup_name ON groupbase USING btree (groupname);


--
-- Name: osproperty_all; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX osproperty_all ON propertyentry USING btree (entity_id);


--
-- Name: osproperty_entityname; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX osproperty_entityname ON propertyentry USING btree (entity_name);


--
-- Name: osproperty_propertykey; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX osproperty_propertykey ON propertyentry USING btree (property_key);


--
-- Name: osuser_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX osuser_name ON userbase USING btree (username);


--
-- Name: permission_key_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX permission_key_idx ON schemepermissions USING btree (permission_key);


--
-- Name: ppage_username; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX ppage_username ON portalpage USING btree (username);


--
-- Name: prmssn_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX prmssn_scheme ON schemepermissions USING btree (scheme);


--
-- Name: remembermetoken_username_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX remembermetoken_username_index ON remembermetoken USING btree (username);


--
-- Name: remotelink_globalid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX remotelink_globalid ON remotelink USING btree (globalid);


--
-- Name: remotelink_issueid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX remotelink_issueid ON remotelink USING btree (issueid, globalid);


--
-- Name: role_pid_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX role_pid_idx ON projectroleactor USING btree (pid);


--
-- Name: role_player_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX role_player_idx ON projectroleactor USING btree (projectroleid, pid);


--
-- Name: rundetails_jobid_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX rundetails_jobid_idx ON rundetails USING btree (job_id);


--
-- Name: rundetails_starttime_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX rundetails_starttime_idx ON rundetails USING btree (start_time);


--
-- Name: screenitem_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX screenitem_scheme ON fieldscreenschemeitem USING btree (fieldscreenscheme);


--
-- Name: searchrequest_filternamelower; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX searchrequest_filternamelower ON searchrequest USING btree (filtername_lower);


--
-- Name: sec_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX sec_scheme ON schemeissuesecurities USING btree (scheme);


--
-- Name: sec_security; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX sec_security ON schemeissuesecurities USING btree (security);


--
-- Name: share_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX share_index ON sharepermissions USING btree (entityid, entitytype);


--
-- Name: source_destination_node_idx; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX source_destination_node_idx ON clustermessage USING btree (source_node, destination_node);


--
-- Name: sr_author; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX sr_author ON searchrequest USING btree (authorname);


--
-- Name: subscrpt_user; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX subscrpt_user ON filtersubscription USING btree (filter_i_d, username);


--
-- Name: subscrptn_group; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX subscrptn_group ON filtersubscription USING btree (filter_i_d, groupname);


--
-- Name: trustedapp_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX trustedapp_id ON trustedapp USING btree (application_id);


--
-- Name: type_key; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX type_key ON genericconfiguration USING btree (datatype, datakey);


--
-- Name: uh_type_user_entity; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uh_type_user_entity ON userhistoryitem USING btree (entitytype, username, entityid);


--
-- Name: uk_application_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_application_name ON cwd_application USING btree (lower_application_name);


--
-- Name: uk_directory_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX uk_directory_name ON cwd_directory USING btree (lower_directory_name);


--
-- Name: uk_entitytranslation; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_entitytranslation ON entity_translation USING btree (entity_name, entity_id, locale);


--
-- Name: uk_group_attr_name_lval; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_group_attr_name_lval ON cwd_group_attributes USING btree (group_id, attribute_name, lower_attribute_value);


--
-- Name: uk_group_name_dir_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_group_name_dir_id ON cwd_group USING btree (lower_group_name, directory_id);


--
-- Name: uk_lower_user_name; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_lower_user_name ON app_user USING btree (lower_user_name);


--
-- Name: uk_mem_parent_child_type; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_mem_parent_child_type ON cwd_membership USING btree (parent_id, child_id, membership_type);


--
-- Name: uk_user_attr_name_lval; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX uk_user_attr_name_lval ON cwd_user_attributes USING btree (user_id, attribute_name);


--
-- Name: uk_user_externalid_dir_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX uk_user_externalid_dir_id ON cwd_user USING btree (external_id, directory_id);


--
-- Name: uk_user_key; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_user_key ON app_user USING btree (user_key);


--
-- Name: uk_user_name_dir_id; Type: INDEX; Schema: public; Owner: sin
--

CREATE UNIQUE INDEX uk_user_name_dir_id ON cwd_user USING btree (lower_user_name, directory_id);


--
-- Name: upf_customfield; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX upf_customfield ON userpickerfilter USING btree (customfield);


--
-- Name: upf_fieldconfigid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX upf_fieldconfigid ON userpickerfilter USING btree (customfieldconfig);


--
-- Name: user_sink; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX user_sink ON userassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: user_source; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX user_source ON userassociation USING btree (source_name);


--
-- Name: userpref_portletconfiguration; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX userpref_portletconfiguration ON gadgetuserpreference USING btree (portletconfiguration);


--
-- Name: votehistory_issue_index; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX votehistory_issue_index ON votehistory USING btree (issueid);


--
-- Name: wf_entryid; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX wf_entryid ON os_currentstep USING btree (entry_id);


--
-- Name: workflow_scheme; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX workflow_scheme ON workflowschemeentity USING btree (scheme);


--
-- Name: worklog_author; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX worklog_author ON worklog USING btree (author);


--
-- Name: worklog_issue; Type: INDEX; Schema: public; Owner: sin
--

CREATE INDEX worklog_issue ON worklog USING btree (issueid);


--
-- Name: fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES "AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES "AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES "AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES "AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: fk_ao_60db71_boardadmins_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT fk_ao_60db71_boardadmins_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_cardcolor_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT fk_ao_60db71_cardcolor_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_cardlayout_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT fk_ao_60db71_cardlayout_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_column_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_COLUMN"
    ADD CONSTRAINT fk_ao_60db71_column_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_columnstatus_column_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT fk_ao_60db71_columnstatus_column_id FOREIGN KEY ("COLUMN_ID") REFERENCES "AO_60DB71_COLUMN"("ID");


--
-- Name: fk_ao_60db71_detailviewfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT fk_ao_60db71_detailviewfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_estimatestatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_estimatestatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_nonworkingday_working_days_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT fk_ao_60db71_nonworkingday_working_days_id FOREIGN KEY ("WORKING_DAYS_ID") REFERENCES "AO_60DB71_WORKINGDAYS"("ID");


--
-- Name: fk_ao_60db71_quickfilter_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT fk_ao_60db71_quickfilter_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_statsfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_STATSFIELD"
    ADD CONSTRAINT fk_ao_60db71_statsfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_subquery_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SUBQUERY"
    ADD CONSTRAINT fk_ao_60db71_subquery_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_swimlane_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_SWIMLANE"
    ADD CONSTRAINT fk_ao_60db71_swimlane_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_trackingstatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_trackingstatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_workingdays_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT fk_ao_60db71_workingdays_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_e8b6cc_branch_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_branch_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES "AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_git_hub_event_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT fk_ao_e8b6cc_git_hub_event_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES "AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_issue_to_branch_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_issue_to_branch_branch_id FOREIGN KEY ("BRANCH_ID") REFERENCES "AO_E8B6CC_BRANCH"("ID");


--
-- Name: fk_ao_e8b6cc_message_queue_item_message_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT fk_ao_e8b6cc_message_queue_item_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES "AO_E8B6CC_MESSAGE"("ID");


--
-- Name: fk_ao_e8b6cc_message_tag_message_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT fk_ao_e8b6cc_message_tag_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES "AO_E8B6CC_MESSAGE"("ID");


--
-- Name: fk_ao_e8b6cc_org_to_project_organization_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_ORG_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_org_to_project_organization_id FOREIGN KEY ("ORGANIZATION_ID") REFERENCES "AO_E8B6CC_ORGANIZATION_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_pr_participant_pull_request_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_participant_pull_request_id FOREIGN KEY ("PULL_REQUEST_ID") REFERENCES "AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: fk_ao_e8b6cc_pr_to_commit_commit_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_commit_id FOREIGN KEY ("COMMIT_ID") REFERENCES "AO_E8B6CC_COMMIT"("ID");


--
-- Name: fk_ao_e8b6cc_pr_to_commit_request_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_request_id FOREIGN KEY ("REQUEST_ID") REFERENCES "AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: fk_ao_e8b6cc_repo_to_project_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: sin
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_repo_to_project_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES "AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

