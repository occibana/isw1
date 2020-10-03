PGDMP                     	    x            Occibana    12.4    12.4 "    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    32861    Occibana    DATABASE     �   CREATE DATABASE "Occibana" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.utf8' LC_CTYPE = 'Spanish_Latin America.utf8';
    DROP DATABASE "Occibana";
                postgres    false                        2615    32862    hotel    SCHEMA        CREATE SCHEMA hotel;
    DROP SCHEMA hotel;
                postgres    false            	            2615    33002    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false            �            1259    32971    hotel    TABLE     �  CREATE TABLE hotel.hotel (
    municipio text NOT NULL,
    numhabitacion integer NOT NULL,
    numpersona integer NOT NULL,
    numbano integer NOT NULL,
    precionoche integer NOT NULL,
    descripcion text NOT NULL,
    imagen text NOT NULL,
    nombre text NOT NULL,
    idzona integer NOT NULL,
    idhotel integer NOT NULL,
    condicion text,
    checkin text NOT NULL,
    checkout text NOT NULL
);
    DROP TABLE hotel.hotel;
       hotel         heap    postgres    false    6            �            1259    33020    hotel_idhotel_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_idhotel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hotel.hotel_idhotel_seq;
       hotel          postgres    false    204    6            /           0    0    hotel_idhotel_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hotel.hotel_idhotel_seq OWNED BY hotel.hotel.idhotel;
          hotel          postgres    false    210            �            1259    32982    hotelmunicipio    TABLE     b   CREATE TABLE hotel.hotelmunicipio (
    idmunicipio integer NOT NULL,
    nombre text NOT NULL
);
 !   DROP TABLE hotel.hotelmunicipio;
       hotel         heap    postgres    false    6            �            1259    32980    hotelmunicipio_idmunicipio_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelmunicipio_idmunicipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE hotel.hotelmunicipio_idmunicipio_seq;
       hotel          postgres    false    206    6            0           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hotel.hotelmunicipio_idmunicipio_seq OWNED BY hotel.hotelmunicipio.idmunicipio;
          hotel          postgres    false    205            �            1259    32993 	   hotelzona    TABLE     X   CREATE TABLE hotel.hotelzona (
    idzona integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE hotel.hotelzona;
       hotel         heap    postgres    false    6            �            1259    32991    hotelzona_idzona_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelzona_idzona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hotel.hotelzona_idzona_seq;
       hotel          postgres    false    208    6            1           0    0    hotelzona_idzona_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hotel.hotelzona_idzona_seq OWNED BY hotel.hotelzona.idzona;
          hotel          postgres    false    207            �            1259    33011    usuario    TABLE       CREATE TABLE login.usuario (
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo text NOT NULL,
    telefono integer,
    usuario text NOT NULL,
    contrasena text NOT NULL,
    idestado integer NOT NULL,
    fotoperfil text,
    id integer NOT NULL
);
    DROP TABLE login.usuario;
       login         heap    postgres    false    9            �            1259    33031    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE login.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE login.usuario_id_seq;
       login          postgres    false    209    9            2           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    211            �
           2604    33022    hotel idhotel    DEFAULT     l   ALTER TABLE ONLY hotel.hotel ALTER COLUMN idhotel SET DEFAULT nextval('hotel.hotel_idhotel_seq'::regclass);
 ;   ALTER TABLE hotel.hotel ALTER COLUMN idhotel DROP DEFAULT;
       hotel          postgres    false    210    204            �
           2604    32985    hotelmunicipio idmunicipio    DEFAULT     �   ALTER TABLE ONLY hotel.hotelmunicipio ALTER COLUMN idmunicipio SET DEFAULT nextval('hotel.hotelmunicipio_idmunicipio_seq'::regclass);
 H   ALTER TABLE hotel.hotelmunicipio ALTER COLUMN idmunicipio DROP DEFAULT;
       hotel          postgres    false    205    206    206            �
           2604    32996    hotelzona idzona    DEFAULT     r   ALTER TABLE ONLY hotel.hotelzona ALTER COLUMN idzona SET DEFAULT nextval('hotel.hotelzona_idzona_seq'::regclass);
 >   ALTER TABLE hotel.hotelzona ALTER COLUMN idzona DROP DEFAULT;
       hotel          postgres    false    207    208    208            �
           2604    33033 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    211    209            !          0    32971    hotel 
   TABLE DATA           �   COPY hotel.hotel (municipio, numhabitacion, numpersona, numbano, precionoche, descripcion, imagen, nombre, idzona, idhotel, condicion, checkin, checkout) FROM stdin;
    hotel          postgres    false    204   �$       #          0    32982    hotelmunicipio 
   TABLE DATA           <   COPY hotel.hotelmunicipio (idmunicipio, nombre) FROM stdin;
    hotel          postgres    false    206   3%       %          0    32993 	   hotelzona 
   TABLE DATA           2   COPY hotel.hotelzona (idzona, nombre) FROM stdin;
    hotel          postgres    false    208   �%       &          0    33011    usuario 
   TABLE DATA           s   COPY login.usuario (nombre, apellido, correo, telefono, usuario, contrasena, idestado, fotoperfil, id) FROM stdin;
    login          postgres    false    209   �%       3           0    0    hotel_idhotel_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('hotel.hotel_idhotel_seq', 5, true);
          hotel          postgres    false    210            4           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hotel.hotelmunicipio_idmunicipio_seq', 8, true);
          hotel          postgres    false    205            5           0    0    hotelzona_idzona_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.hotelzona_idzona_seq', 5, true);
          hotel          postgres    false    207            6           0    0    usuario_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('login.usuario_id_seq', 1, true);
          login          postgres    false    211            �
           2606    33030    hotel hotel_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hotel.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (idhotel);
 9   ALTER TABLE ONLY hotel.hotel DROP CONSTRAINT hotel_pkey;
       hotel            postgres    false    204            �
           2606    32990 "   hotelmunicipio hotelmunicipio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hotel.hotelmunicipio
    ADD CONSTRAINT hotelmunicipio_pkey PRIMARY KEY (idmunicipio);
 K   ALTER TABLE ONLY hotel.hotelmunicipio DROP CONSTRAINT hotelmunicipio_pkey;
       hotel            postgres    false    206            �
           2606    33001    hotelzona hotelzona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY hotel.hotelzona
    ADD CONSTRAINT hotelzona_pkey PRIMARY KEY (idzona);
 A   ALTER TABLE ONLY hotel.hotelzona DROP CONSTRAINT hotelzona_pkey;
       hotel            postgres    false    208            �
           2606    33041    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    209            !   r   x���1
�0@�Y:�m�JҩP��c��2�J����B���Gp�	��9g���|}V�U�/��ޥ��x�ܹ�&5�$Ѵ����-m��õC�܀��z����ã0�O��Xt=8      #   \   x��;@@���UX��_-��Љ�#�����)�	�Ѕ��\�F/������m"��m/�H��#R��:�t��n���'r��N�z��Bq      %   5   x�3���/*I�2�.-�2�tN�+)��2��/�2S�L9���3S��=... m+      &   a   x�%�A
�  ��c4�K�����b#�p�n�=�����a���j�v]@�ض��ĕ�����\��ɳ�?���3K=W}��Z�R�U"�     