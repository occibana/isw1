PGDMP     $    7            	    x            Occibana    12.4    12.4 G    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            k           1262    32861    Occibana    DATABASE     �   CREATE DATABASE "Occibana" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.utf8' LC_CTYPE = 'Spanish_Latin America.utf8';
    DROP DATABASE "Occibana";
                postgres    false                        2615    32862    hotel    SCHEMA        CREATE SCHEMA hotel;
    DROP SCHEMA hotel;
                postgres    false            	            2615    33002    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false            
            2615    41265 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false            �            1259    32971    hotel    TABLE     �  CREATE TABLE hotel.hotel (
    numhabitacion integer NOT NULL,
    precionoche integer NOT NULL,
    descripcion text NOT NULL,
    imagen text NOT NULL,
    nombre text NOT NULL,
    idzona integer NOT NULL,
    idhotel integer NOT NULL,
    condicion text,
    checkin text NOT NULL,
    checkout text NOT NULL,
    usuarioencargado text NOT NULL,
    idmunicipio integer NOT NULL,
    imagen_secundaria text,
    condicionesbioseguridad text NOT NULL
);
    DROP TABLE hotel.hotel;
       hotel         heap    postgres    false    6            �            1259    41304    hotel_habitacion    TABLE     �   CREATE TABLE hotel.hotel_habitacion (
    id integer NOT NULL,
    numpersona integer NOT NULL,
    numbano integer NOT NULL,
    idhotel integer NOT NULL
);
 #   DROP TABLE hotel.hotel_habitacion;
       hotel         heap    postgres    false    6            �            1259    41307    hotel_habitacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_habitacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE hotel.hotel_habitacion_id_seq;
       hotel          postgres    false    221    6            l           0    0    hotel_habitacion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE hotel.hotel_habitacion_id_seq OWNED BY hotel.hotel_habitacion.id;
          hotel          postgres    false    222            �            1259    33020    hotel_idhotel_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_idhotel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hotel.hotel_idhotel_seq;
       hotel          postgres    false    205    6            m           0    0    hotel_idhotel_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hotel.hotel_idhotel_seq OWNED BY hotel.hotel.idhotel;
          hotel          postgres    false    211            �            1259    32982    hotelmunicipio    TABLE     b   CREATE TABLE hotel.hotelmunicipio (
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
       hotel          postgres    false    207    6            n           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hotel.hotelmunicipio_idmunicipio_seq OWNED BY hotel.hotelmunicipio.idmunicipio;
          hotel          postgres    false    206            �            1259    32993 	   hotelzona    TABLE     X   CREATE TABLE hotel.hotelzona (
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
       hotel          postgres    false    6    209            o           0    0    hotelzona_idzona_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hotel.hotelzona_idzona_seq OWNED BY hotel.hotelzona.idzona;
          hotel          postgres    false    208            �            1259    41295    reserva    TABLE     D  CREATE TABLE hotel.reserva (
    id integer NOT NULL,
    idusuario integer,
    numpersona integer NOT NULL,
    fecha_llegada timestamp without time zone NOT NULL,
    fecha_salida timestamp without time zone NOT NULL,
    nombre text,
    apellido text NOT NULL,
    correo text NOT NULL,
    idhotel integer NOT NULL
);
    DROP TABLE hotel.reserva;
       hotel         heap    postgres    false    6            �            1259    41293    reserva_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE hotel.reserva_id_seq;
       hotel          postgres    false    220    6            p           0    0    reserva_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE hotel.reserva_id_seq OWNED BY hotel.reserva.id;
          hotel          postgres    false    219            �            1259    33047    token_recuperacion    TABLE     �   CREATE TABLE login.token_recuperacion (
    id integer NOT NULL,
    user_id integer NOT NULL,
    tokengenerado text NOT NULL,
    fecha_caducidad timestamp with time zone NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL
);
 %   DROP TABLE login.token_recuperacion;
       login         heap    postgres    false    9            �            1259    33045    token_recuperacion_id_seq    SEQUENCE     �   CREATE SEQUENCE login.token_recuperacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE login.token_recuperacion_id_seq;
       login          postgres    false    214    9            q           0    0    token_recuperacion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE login.token_recuperacion_id_seq OWNED BY login.token_recuperacion.id;
          login          postgres    false    213            �            1259    33011    usuario    TABLE       CREATE TABLE login.usuario (
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
       login          postgres    false    9    210            r           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    212            �            1259    41268    acceso    TABLE     �   CREATE TABLE seguridad.acceso (
    id integer NOT NULL,
    userid integer NOT NULL,
    ip text NOT NULL,
    mac text NOT NULL,
    session text NOT NULL,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone
);
    DROP TABLE seguridad.acceso;
    	   seguridad         heap    postgres    false    10            �            1259    41266    acceso_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.acceso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.acceso_id_seq;
    	   seguridad          postgres    false    216    10            s           0    0    acceso_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.acceso_id_seq OWNED BY seguridad.acceso.id;
       	   seguridad          postgres    false    215            �            1259    41284    compra    TABLE     �  CREATE TABLE seguridad.compra (
    id integer NOT NULL,
    idusuario integer NOT NULL,
    numerotarjeta text NOT NULL,
    nombrepropietario text NOT NULL,
    direccionpropietario text NOT NULL,
    codigoseguridad text NOT NULL,
    cedulapropietario text NOT NULL,
    fecha_compra timestamp without time zone NOT NULL,
    fecha_vencimiento timestamp without time zone NOT NULL
);
    DROP TABLE seguridad.compra;
    	   seguridad         heap    postgres    false    10            �            1259    41282    compra_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.compra_id_seq;
    	   seguridad          postgres    false    218    10            t           0    0    compra_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.compra_id_seq OWNED BY seguridad.compra.id;
       	   seguridad          postgres    false    217            �
           2604    33022    hotel idhotel    DEFAULT     l   ALTER TABLE ONLY hotel.hotel ALTER COLUMN idhotel SET DEFAULT nextval('hotel.hotel_idhotel_seq'::regclass);
 ;   ALTER TABLE hotel.hotel ALTER COLUMN idhotel DROP DEFAULT;
       hotel          postgres    false    211    205            �
           2604    41309    hotel_habitacion id    DEFAULT     x   ALTER TABLE ONLY hotel.hotel_habitacion ALTER COLUMN id SET DEFAULT nextval('hotel.hotel_habitacion_id_seq'::regclass);
 A   ALTER TABLE hotel.hotel_habitacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    222    221            �
           2604    32985    hotelmunicipio idmunicipio    DEFAULT     �   ALTER TABLE ONLY hotel.hotelmunicipio ALTER COLUMN idmunicipio SET DEFAULT nextval('hotel.hotelmunicipio_idmunicipio_seq'::regclass);
 H   ALTER TABLE hotel.hotelmunicipio ALTER COLUMN idmunicipio DROP DEFAULT;
       hotel          postgres    false    206    207    207            �
           2604    32996    hotelzona idzona    DEFAULT     r   ALTER TABLE ONLY hotel.hotelzona ALTER COLUMN idzona SET DEFAULT nextval('hotel.hotelzona_idzona_seq'::regclass);
 >   ALTER TABLE hotel.hotelzona ALTER COLUMN idzona DROP DEFAULT;
       hotel          postgres    false    208    209    209            �
           2604    41298 
   reserva id    DEFAULT     f   ALTER TABLE ONLY hotel.reserva ALTER COLUMN id SET DEFAULT nextval('hotel.reserva_id_seq'::regclass);
 8   ALTER TABLE hotel.reserva ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    220    219    220            �
           2604    33050    token_recuperacion id    DEFAULT     |   ALTER TABLE ONLY login.token_recuperacion ALTER COLUMN id SET DEFAULT nextval('login.token_recuperacion_id_seq'::regclass);
 C   ALTER TABLE login.token_recuperacion ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    214    213    214            �
           2604    33033 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    212    210            �
           2604    41271 	   acceso id    DEFAULT     l   ALTER TABLE ONLY seguridad.acceso ALTER COLUMN id SET DEFAULT nextval('seguridad.acceso_id_seq'::regclass);
 ;   ALTER TABLE seguridad.acceso ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    216    215    216            �
           2604    41287 	   compra id    DEFAULT     l   ALTER TABLE ONLY seguridad.compra ALTER COLUMN id SET DEFAULT nextval('seguridad.compra_id_seq'::regclass);
 ;   ALTER TABLE seguridad.compra ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    218    217    218            T          0    32971    hotel 
   TABLE DATA           �   COPY hotel.hotel (numhabitacion, precionoche, descripcion, imagen, nombre, idzona, idhotel, condicion, checkin, checkout, usuarioencargado, idmunicipio, imagen_secundaria, condicionesbioseguridad) FROM stdin;
    hotel          postgres    false    205   �P       d          0    41304    hotel_habitacion 
   TABLE DATA           K   COPY hotel.hotel_habitacion (id, numpersona, numbano, idhotel) FROM stdin;
    hotel          postgres    false    221   �Q       V          0    32982    hotelmunicipio 
   TABLE DATA           <   COPY hotel.hotelmunicipio (idmunicipio, nombre) FROM stdin;
    hotel          postgres    false    207   �Q       X          0    32993 	   hotelzona 
   TABLE DATA           2   COPY hotel.hotelzona (idzona, nombre) FROM stdin;
    hotel          postgres    false    209   QR       c          0    41295    reserva 
   TABLE DATA           {   COPY hotel.reserva (id, idusuario, numpersona, fecha_llegada, fecha_salida, nombre, apellido, correo, idhotel) FROM stdin;
    hotel          postgres    false    220   �R       ]          0    33047    token_recuperacion 
   TABLE DATA           f   COPY login.token_recuperacion (id, user_id, tokengenerado, fecha_caducidad, fecha_inicio) FROM stdin;
    login          postgres    false    214    S       Y          0    33011    usuario 
   TABLE DATA           s   COPY login.usuario (nombre, apellido, correo, telefono, usuario, contrasena, idestado, fotoperfil, id) FROM stdin;
    login          postgres    false    210   �S       _          0    41268    acceso 
   TABLE DATA           Z   COPY seguridad.acceso (id, userid, ip, mac, session, fecha_inicio, fecha_fin) FROM stdin;
 	   seguridad          postgres    false    216   HT       a          0    41284    compra 
   TABLE DATA           �   COPY seguridad.compra (id, idusuario, numerotarjeta, nombrepropietario, direccionpropietario, codigoseguridad, cedulapropietario, fecha_compra, fecha_vencimiento) FROM stdin;
 	   seguridad          postgres    false    218   �Y       u           0    0    hotel_habitacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hotel.hotel_habitacion_id_seq', 1, false);
          hotel          postgres    false    222            v           0    0    hotel_idhotel_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hotel.hotel_idhotel_seq', 15, true);
          hotel          postgres    false    211            w           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hotel.hotelmunicipio_idmunicipio_seq', 8, true);
          hotel          postgres    false    206            x           0    0    hotelzona_idzona_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.hotelzona_idzona_seq', 5, true);
          hotel          postgres    false    208            y           0    0    reserva_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('hotel.reserva_id_seq', 3, true);
          hotel          postgres    false    219            z           0    0    token_recuperacion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('login.token_recuperacion_id_seq', 2, true);
          login          postgres    false    213            {           0    0    usuario_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('login.usuario_id_seq', 3, true);
          login          postgres    false    212            |           0    0    acceso_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('seguridad.acceso_id_seq', 87, true);
       	   seguridad          postgres    false    215            }           0    0    compra_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('seguridad.compra_id_seq', 15, true);
       	   seguridad          postgres    false    217            �
           2606    41314 &   hotel_habitacion hotel_habitacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY hotel.hotel_habitacion
    ADD CONSTRAINT hotel_habitacion_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY hotel.hotel_habitacion DROP CONSTRAINT hotel_habitacion_pkey;
       hotel            postgres    false    221            �
           2606    33030    hotel hotel_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hotel.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (idhotel);
 9   ALTER TABLE ONLY hotel.hotel DROP CONSTRAINT hotel_pkey;
       hotel            postgres    false    205            �
           2606    32990 "   hotelmunicipio hotelmunicipio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hotel.hotelmunicipio
    ADD CONSTRAINT hotelmunicipio_pkey PRIMARY KEY (idmunicipio);
 K   ALTER TABLE ONLY hotel.hotelmunicipio DROP CONSTRAINT hotelmunicipio_pkey;
       hotel            postgres    false    207            �
           2606    33001    hotelzona hotelzona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY hotel.hotelzona
    ADD CONSTRAINT hotelzona_pkey PRIMARY KEY (idzona);
 A   ALTER TABLE ONLY hotel.hotelzona DROP CONSTRAINT hotelzona_pkey;
       hotel            postgres    false    209            �
           2606    41303    reserva reserva_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY hotel.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY hotel.reserva DROP CONSTRAINT reserva_pkey;
       hotel            postgres    false    220            �
           2606    33055 *   token_recuperacion token_recuperacion_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY login.token_recuperacion
    ADD CONSTRAINT token_recuperacion_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY login.token_recuperacion DROP CONSTRAINT token_recuperacion_pkey;
       login            postgres    false    214            �
           2606    33041    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    210            �
           2606    41292    compra compra_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY seguridad.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY seguridad.compra DROP CONSTRAINT compra_pkey;
    	   seguridad            postgres    false    218            �
           2606    41276    acceso pk_seguridad_acceso 
   CONSTRAINT     [   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT pk_seguridad_acceso PRIMARY KEY (id);
 G   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT pk_seguridad_acceso;
    	   seguridad            postgres    false    216            �
           2606    41277    acceso fk_acceso_usuario    FK CONSTRAINT     z   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT fk_acceso_usuario FOREIGN KEY (userid) REFERENCES login.usuario(id);
 E   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT fk_acceso_usuario;
    	   seguridad          postgres    false    2762    210    216            T   �   x���;�@Dks
.�WD�!��QCV`�];,(���+��O��<���t0�j2B��T���Qi�2�dk�	:�#U�d�Y�Xl��{d�P��=d)�,��������Q���Êm��g�e�[P��Deq�ݑ���G�u�ѵq'xk��:��|�7�b��?ߪ�� ���"      d      x������ � �      V   \   x��;@@���UX��_-��Љ�#�����)�	�Ѕ��\�F/������m"��m/�H��#R��:�t��n���'r��N�z��Bq      X   5   x�3���/*I�2�.-�2�tN�+)��2��/�2S�L9���3S��=... m+      c   z   x���;
�@Dk�����B�q僤�7�,�+����lp�a��#R(� @/@W�ez;�jyK69E[�c��<�4X�~�-���3�����P}���������S�����=���gǣa�M[4-      ]   a   x�]ɻ�0�خ����洞Ć��K�줓&n�*rV����LC
�K�{$>)f�l5��Z�2��zݫ1�0p�]��t�~����s�?��      Y   �   x�u�A�0���0`��peb�Rj	�i�w�݀�D�?�O^B�-��D�0M���:��G7�=HUm?�u���<J��F��S9��̦3:s�~oE,H��F���v���[�0Eج"!�P�P��	�	4��&Ș�����<Xe��Q�Z!^�gS      _   �  x��Y�n�F<k��?�A��3<��c��Y��$��Y��>�|l��It���jJ�OxH��+U��������?ߟ<���/_/�?����K����O'BB0~�;��V{�F�|�v'+�'���w~zK7�<�~�泛�;�z{�3��;ꓴI��6�~��Z�k���棶n�GO}Ҩn���JnE�i����4�ΊJ�};�"$���-�Ƥ��Y/�����t��xr;�1)���̐�����'Ι4��kkmoG��Ąr)�/М&oեwnEi��;]��A��|>����/o^�	MJثJԩ-ssΙ�{Ӣ��v���//>^�m�����s�:���\���9�h[��$V�)Ċ�s�V4�r5�D�I������t4���5����D�[�j4墶6 l1�-&EK����:�lECsz�ј}��:����(�vACV�ǋ)�w��\B]<g2ތ���94b��#=l@�]t�K��E�m��h�S�Rcq/��%Ѳ9s��WřѬ��p�Ql�K���ݗ��Ow����������â\:ˊk�_���I5%�Vl�K6�a��� g4�xŬGn�\���k#3ZV���)HF��:�lB;�BTiL�(70�zgB%׹d#�Y�p��OI;&�aZl�K���T'�½x��%^�V|��m;D���@?~�-r)�n�����P��'��Iq�:Mn-dO��}���� �m#%��ߞ���K4�Z���['卹y:4�4��N����h���i=��7O�V�F��%`kn�������Qʤ��.��MZ��q�7c�㩴�!#��ͻ��	T��]KG�vط9���͓�� ��|4$�N�+/�$�-+	=h;���),#|���J��U����3��]
��
F�-��� �t�f��D
]�V�@�<�h8zA{;x�;k�IC̟O�O��t�0��4�����Ο?_};}z�v�O����n��C:��xp������a1u,=����=����fˀ�U��U���j^bݻl�X��c����W���J��J�[4����3A&�p�,�,�L�0���`k
�.[nI���wC���q��*&�ٗ�,k�º	ؚB$���d;ئ���V��׻� 8R���rx��Ѧ_��F���;�#�1�KN���$�`��~�ښ�Hj���<>�Fˁ�����
�U�V��uߘC��8#�W���u�;_�@ab	hy����u��9X�R��n�˫d"��ږ� <�c���K_���)�����9�
3�&V:��-���%27��׏��9$-u��Cv�zP��X�֖��`k�P��w�͖&
}�a�����_��QwP����@��˨;�K�3��Ou��C-���H7�      a   )  x�ݒ;n1k�)r/ğH�Y�P�T)��YW1��E`����,Ի��d����&���`H�����{�)��jc��%����)�W.Дk_@�f5Z}�aʹ�B�ٔ`[�A�2�(Q;�k-ݦ���+��`�H���>q���aXkI�-���y�Q������v v&<7o����X�u&�W�O&���vT����L<��M��� ۵U���ڀ�ބ;!�£�;������Qur�3Ig�^���^��3� ��rD��+p0�W�:go� ���G��m�/�|T�     